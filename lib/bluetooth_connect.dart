import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BulbController extends StatefulWidget {
  @override
  _BulbControllerState createState() => _BulbControllerState();
}

class _BulbControllerState extends State<BulbController> {
  bool isBulbOn = false;
  late BluetoothDevice _device;
  late BluetoothCharacteristic _characteristic;

  @override
  void initState() {
    super.initState();
    initBluetooth();
  }

  void initBluetooth() async {
    FlutterBluePlus flutterBlue = FlutterBluePlus.instance;
    flutterBlue.scan(timeout: Duration(seconds: 4)).listen((scanResult) {
      if (scanResult.device.name == 'Your ESP32 Device Name') {
        _device = scanResult.device;
        connectToDevice();
      }
    });
  }

  void connectToDevice() async {
    await _device.connect();
    List<BluetoothService> services = await _device.discoverServices();
    services.forEach((service) {
      service.characteristics.forEach((characteristic) {
        if (characteristic.uuid.toString() == 'YourCharacteristicUUID') {
          _characteristic = characteristic;
        }
      });
    });
  }

  void sendCommand(bool value) {
    List<int> bytes = value ? [1] : [0]; // Example of command
    _characteristic.write(bytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bulb Controller'),
      ),
      body: Center(
        child: Switch(
          value: isBulbOn,
          onChanged: (newValue) {
            setState(() {
              isBulbOn = newValue;
              sendCommand(newValue); // Send command to ESP32
            });
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Nexus extends StatefulWidget {
  const Nexus({super.key});

  @override
  State<Nexus> createState() => _NexusState();
}

class _NexusState extends State<Nexus> {
  final priceController = TextEditingController();
  bool button1 = false;
  bool button2 = false;
  String vehicleValue = 'scooters';
  String companyValue = 'Ampere';
  List vehicleType = ["scooters", "car and rickshaw", "truck and buses"];
  List companyName = [
    "Ampere",
    "Ather Energy",
    "Bajaj",
    "BMW",
    "BYD",
    "Hero Electric",
    "Hyundai",
    "Kia Motors",
    "Mahindra",
    "MG",
    "Okinawa",
    "Ola Electric",
    "Tata Motors",
    "TVS",
    "Volvo"
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nexus Tariffs',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _mediaQuery.size.width,
                height: _mediaQuery.size.height * 0.3,
                color: Color(0xff2c2c2c),
                child: Row(
                  children: [
                    Container(
                      width: _mediaQuery.size.width * 0.35,
                      height: _mediaQuery.size.height * 0.2,
                      child: Image(image: AssetImage('assets/connect.jpg')),
                    ),
                    SizedBox(
                      width: _mediaQuery.size.width * 0.2,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: _mediaQuery.size.height * 0.05,
                        ),
                        Container(
                          child: Expanded(
                            child: DropdownButton(
                              value: companyValue,
                                hint: Text(
                                  'Select Company',
                                  style: TextStyle(color: Colors.white),
                                ),
                                items: companyName
                                    .map((e) => DropdownMenuItem(
                                          child: Text(e),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    companyValue = val as String;
                                  });
                                }),
                          ),
                          color: Color(0xff5b86aa),
                          height: _mediaQuery.size.height * 0.05,
                        ),
                        SizedBox(
                          height: _mediaQuery.size.height * 0.03,
                        ),
                        Container(
                          child: Expanded(
                            child: DropdownButton(
                                value: vehicleValue,
                                hint: Text(
                                  'Select Company',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                items: vehicleType
                                    .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    vehicleValue = val as String;
                                  });
                                }),
                          ),
                          color: Color(0xff5b86aa),
                          height: _mediaQuery.size.height * 0.05,
                        ),

                        SizedBox(
                          height: _mediaQuery.size.height * 0.01,
                        ),


                        Text('Price is :'   ,
                        style: TextStyle(
                          color: Colors.white,
                        ),)

                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _mediaQuery.size.width,
                height: _mediaQuery.size.height * 0.3,
                color: Color(0xff2c2c2c),
                child: Row(
                  children: [
                    Container(
                      width: _mediaQuery.size.width * 0.35,
                      height: _mediaQuery.size.height * 0.2,
                      child: Image(image: NetworkImage('https://www.xongolab.com/wp-content/uploads/2023/04/EV-charging-station-finder-app-development-1200x900.png')),
                    ),
                    SizedBox(
                      width: _mediaQuery.size.width * 0.2,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: _mediaQuery.size.height * 0.05,
                        ),
                        Container(
                          child: Text(
                            'Enter quantity in time',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: _mediaQuery.size.height * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Color(0xff5b86aa),
                          height: _mediaQuery.size.height * 0.05,
                        ),
                        SizedBox(
                          height: _mediaQuery.size.height * 0.03,
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.minimize)),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    print(priceController.text);
                                  }, icon: Icon(Icons.add)),
                              hintText: 'Add charging quantity',
                              hintStyle: TextStyle(
                                color: Colors.white70
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            controller: priceController,
                          ),
                          width: _mediaQuery.size.width * 0.2,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: _mediaQuery.size.width,
                  height: _mediaQuery.size.height * 0.1,
                  color: Color(0xff5b86aa),
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: _mediaQuery.size.height * 0.03),
                    ),
                  ),
                ),
                onTap: () {
                  _launchURL('http://192.168.4.1/15/on');

                  Future.delayed(Duration(seconds: int.parse(priceController.text)),(){
                    _launchURL('http://192.168.4.1/15/off');

                  });

                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart, color: Colors.white), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
              ),
              label: '')
        ],
        backgroundColor: Color(0xff2c2c2c),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

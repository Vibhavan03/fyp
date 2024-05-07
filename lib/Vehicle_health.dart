import 'package:flutter/material.dart';
class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Health',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.table_chart,color: Colors.white),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted,color: Colors.white,),label: '')
        ],
        backgroundColor: Color(0xff2c2c2c),),
    );
  }
}

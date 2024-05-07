import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.cable,color: Colors.white,),
        title: Text(
          'EC NEXUS',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1
                      )
                    ),
                    hintText: 'Search for charging station',
                    hintStyle: TextStyle(
                      color: Colors.white70
                    ),
                    prefixIcon: Icon(Icons.search
                    ,size: 30.0,
                    color: Colors.white70,),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear,
                    color: Colors.white70,))

                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  child: Container(
                    color: Color(0xff5b86aa),
                    width: _mediaQuery.size.width ,
                    height: _mediaQuery.size.height * 0.25,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: _mediaQuery.size.height * 0.05,
                            ),
                            Container(
                              height: _mediaQuery.size.height * 0.07,
                              color: Color(0xff2c2c2c),
                              child: Text(
                                "  Tariffs     ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _mediaQuery.size.height * 0.06,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: _mediaQuery.size.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(width: _mediaQuery.size.width * 0.04,),
                                Text(
                                  "Charge your vehicle \nconveniently",
                                  style: TextStyle(
                                    fontSize: _mediaQuery.size.height * 0.030,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: _mediaQuery.size.width * 0.2,
                        ),
                        Container(
                            height: _mediaQuery.size.height * 0.2,
                            width: _mediaQuery.size.width * 0.35,
                            child: Image(image: AssetImage('assets/tariff.jpg')))
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/tariffs');
                  },
                ),
              ),
            ),
            SizedBox(
              height: _mediaQuery.size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "  Explore",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: _mediaQuery.size.height * 0.03,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: _mediaQuery.size.height,
              width: _mediaQuery.size.width,
              child: GridView.count(crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Container(
                    color: Color(0xff2c2c2c),
                    height: _mediaQuery.size.height * 0.3,
                    width:_mediaQuery.size.width * 0.5,
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: _mediaQuery.size.height * 0.2,
                              width: _mediaQuery.size.width * 0.3,
                              child: Image(image: NetworkImage("https://www.telit.com/wp-content/uploads/2022/11/ev-maintenance-featured-1.png"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Maintainance and specs',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5b86aa)
                            ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/wifi');
                              },
                              icon: Icon(Icons.health_and_safety,color: Colors.white,),
                              label: Text('Vehicle Health',style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                  child: Container(
                      height: _mediaQuery.size.height * 0.3,
                      width:_mediaQuery.size.width * 0.5,
                    color: Color(0xff2c2c2c),
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: _mediaQuery.size.height * 0.2,
                              width: _mediaQuery.size.width * 0.3,
                              child: Image(image: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.xFKSv3zDIMOkOg91hNleiAHaE8&pid=Api&P=0&h=180'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Charge your vehicle',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5b86aa)
                            ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/charge');
                              },
                              icon: Icon(Icons.charging_station,color: Colors.white,),
                              label: Text('Request Charge',style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Container(
                      height: _mediaQuery.size.height * 0.3,
                      width:_mediaQuery.size.width * 0.5,
                    color: Color(0xff2c2c2c),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: _mediaQuery.size.height * 0.2,
                              width: _mediaQuery.size.width * 0.3,
                              child: Image(image: NetworkImage('https://www.xongolab.com/wp-content/uploads/2023/04/EV-charging-station-finder-app-development-1200x900.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Connect to charging station',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5b86aa)
                            ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/qr');
                              },
                              icon: Icon(Icons.qr_code,color: Colors.white,),
                              label: Text('Connect',style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                  child: Container(
                      height: _mediaQuery.size.height * 0.3,
                      width:_mediaQuery.size.width * 0.5,
                    color: Color(0xff2c2c2c),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: _mediaQuery.size.height * 0.2,
                              width: _mediaQuery.size.width * 0.3,
                              child: Image(image: NetworkImage('https://play-lh.googleusercontent.com/cX9XjLzs4qANiEIeo_RoDsZOOYOm5F89YIVellJAqGyC9ZaXIMatQZvvUmGnfX-_I8g'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Repeat your order',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5b86aa)
                            ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/history');
                              },
                              icon: Icon(Icons.history,color: Colors.white,),
                              label: Text('Booking History',style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                )
              ],),
            ),
          ],
        ),
      ),
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

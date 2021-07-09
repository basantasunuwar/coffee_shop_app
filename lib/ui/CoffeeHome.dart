import 'package:coffee_shop_ui/ui/DetailsPage.dart';
import 'package:flutter/material.dart';

class CoffeeHome extends StatefulWidget {
  @override
  _CoffeeHomeState createState() => _CoffeeHomeState();
}

class _CoffeeHomeState extends State<CoffeeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.black))),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 15,
          unselectedFontSize: 13,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.cake_outlined,
            //     ),
            //     label: 'Ordered'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                ),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: 'User'),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Welcome, Basn',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'varela',
                      color: Color(0xFF473D3A),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/dragon.png'),
                          fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 45.0, left: 15.0),
            child: Container(
              child: Text(
                  'Let\'s select the best taste for your next coffee break!',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'nunito',
                    color: Color(0xFFB0AAA7),
                  )),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Taste of the week',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'varela',
                      color: Color(0xFF473D3A),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text('see all',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'varela',
                        color: Color(0xFF473D3A),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Container(
              height: 410.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _coffeeListCard(
                      'assets/images/starbucks3.png',
                      'Caffe Misto',
                      'Coffee Shop',
                      'Our dark, rich expresso balanced with steamed milk and a light layerr of foam',
                      'रु. १५०',
                      false),
                  _coffeeListCard(
                      'assets/images/starbucks5.png',
                      'Caffe Mocha',
                      'BrownHouse',
                      'A caffè latte with chocolate and whipped cream, made by pouring about chocolate',
                      'रु. २५०',
                      false),
                ],
              )),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Taste of the week',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'varela',
                  color: Color(0xFF473D3A),
                )),
          ),
          SizedBox(height: 15.0),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('assets/images/coffeecup1.png'),
                _buildImage('assets/images/coffeecombo2.png'),
                _buildImage('assets/images/coffeecup3.png'),
                _buildImage('assets/images/coffeecup2.png'),
                _buildImage('assets/images/cffeecup.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorie) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
            height: 200.0,
            width: 225.0,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 335.0,
                    ),
                    Positioned(
                        top: 75.0,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 20.0),
                          height: 280.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xFFDAB68C)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              Text(
                                shopName + '\'s',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'nunito',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(coffeeName,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'varela',
                                    color: Colors.white,
                                  )),
                              SizedBox(height: 10.0),
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.bold,
                                  fontFamily: 'nunito',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    price,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'varela',
                                      color: Color(0xFF3A4742),
                                    ),
                                  ),
                                  Container(
                                      height: 40.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Icon(Icons.favorite,
                                            color: isFavorie
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 15),
                                      ))
                                ],
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        left: 60.0,
                        top: 25.0,
                        child: Container(
                          height: 120.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.fill)),
                        )),
                  ],
                ),
                SizedBox(height: 20.0),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage()));
                    },
                    child: Container(
                        height: 50.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF473D3A)),
                        child: Center(
                          child: Text("Order Now",
                              style: TextStyle(
                                fontSize: 14.9,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'nunito',
                                color: Colors.white,
                              )),
                        )))
              ],
            )));
  }

  _buildImage(String imgPath) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(
                    imgPath,
                  ),
                  fit: BoxFit.cover,
                ))));
  }
}

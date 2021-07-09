import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 10.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3B2B7),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 20.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)),
                        color: Colors.white),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25.0,
                  left: 15.0,
                  child: Container(
                      height: (MediaQuery.of(context).size.height / 2) - 50.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: [
                          Text('Preparation time',
                              style: TextStyle(
                                  fontSize: 14.9,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'nunito',
                                  color: Color(0xFF726B68))),
                          SizedBox(height: 7.0),
                          Text('5 min',
                              style: TextStyle(
                                  fontSize: 14.9,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'nunito',
                                  color: Color(0xFFC6C4C4))),
                          SizedBox(height: 10.0),
                          Padding(
                              padding: EdgeInsets.only(right: 35.0),
                              child: Container(
                                height: 0.5,
                                color: Color(0XFFC6C4C4),
                              )),
                          SizedBox(height: 10.0),
                          Text('Ingredients',
                              style: TextStyle(
                                  fontSize: 14.9,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'nunito',
                                  color: Color(0xFF726B68))),
                          SizedBox(height: 20.0),
                          Container(
                              height: 110.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  _buildIngredientItem(
                                      'Water',
                                      Icon(
                                        Icons.pin_drop,
                                        color: Colors.white,
                                      ),
                                      Color(0xFF6FC5DA)),
                                  _buildIngredientItem(
                                      'Brewed Espresso',
                                      Icon(
                                        Icons.circle,
                                        color: Colors.white,
                                      ),
                                      Color(0xFF615955)),
                                  _buildIngredientItem(
                                      'Sugar',
                                      Icon(
                                        Icons.check_box_outlined,
                                        color: Colors.white,
                                      ),
                                      Color(0xFFF39595)),
                                  _buildIngredientItem(
                                      'Toffee Nut Syrup',
                                      Icon(
                                        Icons.sticky_note_2,
                                        color: Colors.white,
                                      ),
                                      Color(0xFF8FC28A)),
                                  _buildIngredientItem(
                                      'Natural Flavors',
                                      Icon(
                                        Icons.filter_vintage_outlined,
                                        color: Colors.white,
                                      ),
                                      Color(0xFF3B8079)),
                                  _buildIngredientItem(
                                      'Vanilla Syrup',
                                      Icon(
                                        Icons.view_in_ar,
                                        color: Colors.white,
                                      ),
                                      Color(0xFFF8B870)),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(right: 35.0),
                              child: Container(
                                height: 0.5,
                                color: Color(0XFFC6C4C4),
                              )),
                          SizedBox(height: 20.0),
                          Text('Nutrition Information',
                              style: TextStyle(
                                  fontSize: 14.9,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'nunito',
                                  color: Color(0xFF726B68))),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text('Calories',
                                  style: TextStyle(
                                      fontSize: 14.9,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'nunito',
                                      color: Color(0xFFD4D3D2))),
                              SizedBox(width: 15.0),
                              Text('250',
                                  style: TextStyle(
                                      fontSize: 14.9,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'nunito',
                                      color: Color(0xFF726B68))),
                              SizedBox(
                                width: 15.0,
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: [
                              Text('Proteins',
                                  style: TextStyle(
                                      fontSize: 14.9,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'nunito',
                                      color: Color(0xFFD4D3D2))),
                              SizedBox(width: 15.0),
                              Text('10mg',
                                  style: TextStyle(
                                      fontSize: 14.9,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'nunito',
                                      color: Color(0xFF726B68))),
                              SizedBox(
                                width: 15.0,
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: [
                              Text('Caffeine',
                                  style: TextStyle(
                                      fontSize: 14.9,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'nunito',
                                      color: Color(0xFFD4D3D2))),
                              SizedBox(width: 15.0),
                              Text('150mg',
                                  style: TextStyle(
                                      fontSize: 14.9,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'nunito',
                                      color: Color(0xFF726B68))),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Padding(
                              padding: EdgeInsets.only(right: 35.0),
                              child: Container(
                                height: 0.5,
                                color: Color(0XFFC6C4C4),
                              )),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  color: Color(0xFF473D3A)),
                              child: Center(
                                  child: Text('Make Order',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                            ),
                          ),
                          SizedBox(
                            height: 80.0,
                          ),
                        ],
                      ))),
              Positioned(
                  top: MediaQuery.of(context).size.height / 10,
                  left: 75.0,
                  child: Container(
                    height: 400,
                    width: 400.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/coffeecombo2.png'),
                          fit: BoxFit.cover),
                    ),
                  )),
              Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                      height: 300.0,
                      width: 250.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  width: 170.0,
                                  child: Text('Caremel Macchiato',
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                              SizedBox(width: 5.0),
                              Container(
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.white),
                                  child: Center(
                                      child: Icon(Icons.favorite,
                                          size: 18.0, color: Colors.red))),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            width: 170.0,
                            child: Text(
                                'Freshly steamed milk with venilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 15.0,
                                    color: Colors.white)),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Color(0xFF473D3A)),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('4.2',
                                          style: TextStyle(
                                              fontFamily: 'nunito',
                                              fontSize: 13.0,
                                              color: Colors.white)),
                                      Text('/5',
                                          style: TextStyle(
                                              fontFamily: 'nunito',
                                              fontSize: 13.0,
                                              color: Color(0xFF7C7573))),
                                    ],
                                  ))),
                              SizedBox(width: 15.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 35.0,
                                        width: 80.0,
                                      ),
                                      Positioned(
                                          left: 40.0,
                                          child: Container(
                                              height: 35.0,
                                              width: 35.0,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.0),
                                                  border: Border.all(
                                                      color: Color(0xFFF3B2B7),
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/sunuwar.jpeg'),
                                                    fit: BoxFit.cover,
                                                  )))),
                                      Positioned(
                                          left: 20.0,
                                          child: Container(
                                              height: 35.0,
                                              width: 35.0,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.0),
                                                  border: Border.all(
                                                      color: Color(0xFFF3B2B7),
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/arika.jpeg'),
                                                    fit: BoxFit.cover,
                                                  )))),
                                      Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17.0),
                                              border: Border.all(
                                                  color: Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/alisha.jpeg'),
                                                fit: BoxFit.cover,
                                              ))),
                                    ],
                                  ),
                                  SizedBox(height: 3.0),
                                  Text('+ 27 more',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 15.0,
                                          color: Colors.white)),
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ],
          )
        ],
      ),
    );
  }

  _buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: EdgeInsets.only(right: 10.9),
        child: Column(
          children: [
            Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0), color: bgColor),
                child: Center(
                  child: iconName,
                )),
            SizedBox(height: 4.0),
            Container(
                width: 60.0,
                child: Center(
                    child: Text(name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Color(0xFFC2C0C0),
                        ))))
          ],
        ));
  }
}

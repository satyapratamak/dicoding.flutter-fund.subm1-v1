import 'package:flutter/material.dart';
import 'package:food_ordering_app/Style.dart';
import 'package:food_ordering_app/screens/V_hotel_detail_screen.dart';
import 'package:food_ordering_app/screens/V_hotel_list_screen.dart';
//import 'package:grouped_list/grouped_list.dart';

void main() {
  runApp(MyApp());
}

// List _dataDummy = [
//   {
//     "albumId": 1,
//     "id": 1,
//     "title": "Flutter",
//     "url": "https://via.placeholder.com/600/92c952",
//     "thumbnailUrl": "https://via.placeholder.com/150/92c952",
//     "author": "Satya P.K",
//     "date": "14/01/2021",
//     "group": "Flutter",
//   },
//   {
//     "albumId": 1,
//     "id": 2,
//     "title": "Android",
//     "url": "https://via.placeholder.com/600/771796",
//     "thumbnailUrl": "https://via.placeholder.com/150/771796",
//     "author": "Satya P.K",
//     "date": "14/01/2021",
//     "group": "Android",
//   },
//   {
//     "albumId": 1,
//     "id": 3,
//     "title": "IOS",
//     "url": "https://via.placeholder.com/600/24f355",
//     "thumbnailUrl": "https://via.placeholder.com/150/24f355",
//     "author": "Satya P.K",
//     "date": "14/01/2021",
//     "group": "IOS",
//   },
//   {
//     "albumId": 1,
//     "id": 4,
//     "title": "React Native",
//     "url": "https://via.placeholder.com/600/d32776",
//     "thumbnailUrl": "https://via.placeholder.com/150/d32776",
//     "author": "Satya P.K",
//     "date": "14/01/2021",
//     "group": "React Native",
//   },
//   {
//     "albumId": 1,
//     "id": 5,
//     "title": "Python",
//     "url": "https://via.placeholder.com/600/f66b97",
//     "thumbnailUrl": "https://via.placeholder.com/150/f66b97",
//     "author": "Satya P.K",
//     "date": "14/01/2021",
//     "group": "Python",
//   },
//   {
//     "albumId": 1,
//     "id": 6,
//     "title": "ReactJS",
//     "url": "https://via.placeholder.com/600/56a8c2",
//     "thumbnailUrl": "https://via.placeholder.com/150/56a8c2",
//     "author": "Satya P.K",
//     "date": "14/01/2021",
//     "group": "ReactJS",
//   },
// ];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'mont',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HotelList hotelList = HotelList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 27,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 27,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Special",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                              color: greenBtn,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  Text(
                                    "CART",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 5,
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: greenBtn.withOpacity(0.7)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Find out what's cooking today!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 350,
                        padding: EdgeInsets.symmetric(
                          vertical: 40,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30,
                            ),
                          ),
                          color: blue,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: Offset(0, 10),
                              blurRadius: 0,
                              color: blue.withOpacity(0.4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("asset/images/food1.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Yoshimasa Sushi",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Text(
                                  "250 ratings",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Fresh salmon, unagi, mentai, etc",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 165,
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: green,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: Offset(0, 10),
                                  blurRadius: 0,
                                  color: green.withOpacity(0.4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/food2.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Nishio Sushi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 165,
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: black,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: Offset(0, 10),
                                  blurRadius: 0,
                                  color: black.withOpacity(0.4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/food3.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Supreme Sushi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Places",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                placesWidget("hotel1", "Sushi Den"),
                SizedBox(
                  height: 20,
                ),
                placesWidget("hotel2", "Hatsuhana Sushi"),
                SizedBox(
                  height: 20,
                ),
                placesWidget("hotel3", "Sushi Maaki"),
                /*Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Flexible(
                      child: hotelList,
                    )
                  ],
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Container placesWidgetList() {
  //   return Container(
  //     child: GroupedListView<dynamic, String>(
  //       elements: _dataDummy,
  //       groupBy: (element) => element['group'],
  //       groupSeparatorBuilder: (String groupByValue) => Text(groupByValue),
  //       itemBuilder: (context, dynamic element) => Text(element['name']),
  //       itemComparator: (item1, item2) =>
  //           item1['name'].compareTo(item2['name']), // optional
  //       useStickyGroupSeparators: true, // optional
  //       floatingHeader: true, // optional
  //       order: GroupedListOrder.ASC, // optional
  //     ),
  //   );
  // }

  Row placesWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/$img.png"),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.orange),
                  Icon(Icons.star, size: 20, color: Colors.orange),
                  Icon(Icons.star, size: 20, color: Colors.orange),
                  Icon(Icons.star, size: 20, color: Colors.orange),
                  Icon(Icons.star, size: 20, color: Colors.orange),
                ],
              ),
              Text(
                "Authentic Sushi in Jakarta",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: openHotelPage,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: greenBtn,
            ),
            child: Text(
              "Order Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        )
      ],
    );
  }

  void openHotelPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HotelDetailScreen(),
      ),
    );
  }
}

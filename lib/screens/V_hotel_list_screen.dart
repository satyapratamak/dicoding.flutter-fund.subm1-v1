import "package:flutter/material.dart";
import 'package:food_ordering_app/model/M_hotel.dart';

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: hotelList.length,
      itemBuilder: (context, index) {
        Hotel hotel = hotelList[index];
        return Text(hotel.img);
      },
    );
  }
}

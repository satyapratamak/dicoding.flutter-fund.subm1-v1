import "package:flutter/material.dart";

class Hotel {
  String img;
  String name;

  Hotel({
    @required this.img,
    @required this.name,
  });
}

List<Hotel> hotelList = [
  Hotel(img: "hotel1.png", name: "Sushi Den"),
  Hotel(img: "hotel2.png", name: "Hatsuhana Sushi"),
  Hotel(img: "hotel2.png", name: "Sushi Maaki"),
];

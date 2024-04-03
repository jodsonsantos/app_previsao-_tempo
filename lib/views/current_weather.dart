import 'package:flutter/material.dart';

Widget CurrentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$temp",
          style: TextStyle(
            fontSize: 46.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$location",
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

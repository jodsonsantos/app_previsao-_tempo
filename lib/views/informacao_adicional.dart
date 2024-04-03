import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget InformacaoAdicional(
  String wind,
  String humidity,
  String pressure,
  String feels_like,
) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vento",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Pressão",
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$pressure",
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidade",
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Favorito",
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$feels_like",
                  style: infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

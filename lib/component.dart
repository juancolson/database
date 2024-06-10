import 'dart:developer';

import 'package:flutter/material.dart';

Widget titleCard(String title, String downloadUrl) {
  return Card(
    child: InkWell(
      onTap: () {
        log("Clicked on $title");
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(title),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
      title: const Text.rich(
        TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            text: 'News',
            children: [
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                ),
              )
            ]),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0);
}

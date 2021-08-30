import 'package:flutter/material.dart';

import 'colortheme.dart';

class FieldCustom extends StatelessWidget {
  final String hintext;
  final IconData icon;
  final TextEditingController controller;

  const FieldCustom({Key key, this.icon, this.hintext, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: colorA,
                  blurRadius: 2,
                  offset: Offset(1, 1),
                )
              ]),
          height: 60,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  icon,
                  color: colorA,
                ),
                hintText: hintext),
          ),
        )
      ],
    );
  }
}

class FieldCustomPass extends StatelessWidget {
  final String hintext;
  final IconData icon;
  final TextEditingController controller;

  const FieldCustomPass({Key key, this.icon, this.hintext, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: colorA,
                  blurRadius: 2,
                  offset: Offset(1, 1),
                )
              ]),
          height: 60,
          child: TextField(
            controller: controller,
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  icon,
                  color: colorA,
                ),
                hintText: hintext),
          ),
        )
      ],
    );
  }
}

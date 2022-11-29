import 'package:flutter/material.dart';

const kTextFieldInputDecoration=InputDecoration(

  hintText: 'Enter city name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10),

    ),
  ),
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
);
const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

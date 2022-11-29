import 'package:clima/screens/location_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  _LoadingScreenState() {
    getLocationData();
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

/*
void getData() async {
  //Uri test=Uri(host:'api.openweathermap.org',path: 'data/2.5/weather?q=London,uk&APPID=9223c8efb7f419343eda57466f973dd7', );
  //Uri urlta3OpenWeather=Uri.parse('api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=9223c8efb7f419343eda57466f973dd7',);
  //https://api.tomorrow.io/v4/timelines?location=-73.98529171943665,40.75872069597532&fields=temperature&timesteps=1h&units=metric&apikey=WHa1Nhjqy29Q2Xp2TeIRR8jNRKyfN4oC
  Uri url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=${apiKey}');

  //Uri.https('api.tomorrow.io',
  //         'v4/timelines?location=-73.98529171943665,40.75872069597532&fields=temperature&timesteps=1h&units=metric&apikey=WHa1Nhjqy29Q2Xp2TeIRR8jNRKyfN4oC')

  //print(response.statusCode);
}
*/

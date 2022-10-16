import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (Colors.red),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          brightness: Brightness.light,
          backgroundColor: Colors.red.shade400,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        // _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _weatherDiscription(),
                  _temperature(),
                  _cityDiscription(),
                  _temperature_z(),
                  _temperature_z1(),
                  // _temperatureForecast(),

                  //_footerRatings(),
                ]),
          ),
        ),
      ],
    ),
  );
}

Column _weatherDiscription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Weather Forecast',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ],
  );
}

Column _cityDiscription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Chelyabinsk Oblast, RU',
        style: TextStyle(
            fontSize: 26, color: Colors.white, fontWeight: FontWeight.w200),
      ),
      Text(
        'Friday, Mar 20, 2022',
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}C',
          style: const TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Icon(
            Icons.search,
            color: Colors.white,
            size: 15,
          ),
        ],
      ),
      const SizedBox(
        width: 10.0,
        height: 50,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Text(
                'Enter City Name',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Row _temperature_z() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 66,
            ),
          ],
        ),
      ),

      //const SizedBox(width: 54.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '14 F',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Text(
                'Light Snow',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Row _temperature_z1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //const SizedBox(width: 54.0),
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '5',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Text(
                  'km/hr',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '3',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Text(
                  '%',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '20',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Text(
                  '%',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

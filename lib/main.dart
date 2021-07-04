import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.orange, 
        appBar: AppBar(
          title: Text('My Weather App'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Yenagoa', style: new TextStyle(color: Colors.green)),
                    Text('Rainy', style: new TextStyle(color: Colors.white, fontSize: 32.0)),
                    Text('32°F',  style: new TextStyle(color: Colors.white)),
                    Image.network('https://openweathermap.org/img/w/01d.png'),
                    Text('Jun 03, 2021', style: new TextStyle(color: Colors.white)),
                    Text('10:30', style: new TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: new Icon(Icons.refresh),
                  tooltip: 'Refresh',
                  onPressed: () => null,
                  color: Colors.white,
                ),
              )
            ]
          )
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:wetherapi/apicall.dart';




class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apiService.getWeatherData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
          print(snapshot.error);
            
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
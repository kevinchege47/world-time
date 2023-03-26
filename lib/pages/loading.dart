import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
  //make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Nairobi'));
    Map data = jsonDecode(response.body);
    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
      print(offset);
  //    Create Date time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Loading Screen"),
      ),
    );
  }
}

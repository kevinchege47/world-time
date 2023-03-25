import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (kDebugMode) {
      print('initState function ran');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('buildState function ran');
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(onPressed: () {
        setState(() {
          counter = counter+1;
        });
      }, child: Text('counter is $counter'),),);
  }
}

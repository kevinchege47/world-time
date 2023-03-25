import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate a network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
        return 'Kevin';

    });
    String bio = await Future.delayed(const Duration(seconds: 3), (){
       return 'Footballer, Coder, Designer';

    });

    if (kDebugMode) {
      print('$username - $bio');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    if (kDebugMode) {
      print('hey there!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(onPressed: () {}, child: null),
    );
  }
}

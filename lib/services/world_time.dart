import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location; //location name for UI
  late String time; //time in that location
  late String flag; //url to asset flag icon
  late String url; //location url for api endpoints

  WorldTime({required this.location, required this.flag,
      required this.url});

  Future<void> getTime() async {
    try{
      //make the request
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(offset);
      //    Create Date time object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //set the time property
      time = now.toString();
    }
    catch(e){
        print('caught error:$e');
        time = 'could not get time data';
    }

  }

}


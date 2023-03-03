import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String flag;
  String times='';
  String url;

  WorldTime({required this.location,required this.flag,required this.url});

  Future<void> getTime() async{
    try{
      Response response = await
      get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      String time = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(time);
      now = now.add(Duration(hours: int.parse(offset)));

      times = DateFormat.jm().format(now);
    }
    catch(e){
      print('caught error: $e');
    }

  }
}
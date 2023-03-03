import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void Time() async{
    WorldTime worldTime = WorldTime(location: 'Almaty', flag: 'kz', url: 'Asia/Almaty');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.times,
    });

  }

  void initState(){
    super.initState();
    Time();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitThreeInOut(
          color: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}

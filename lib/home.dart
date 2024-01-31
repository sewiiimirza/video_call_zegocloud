import 'package:flutter/material.dart';
import 'package:video_call_zegocloud/call_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Video_Call_App ',
          style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),),
      centerTitle: true,),

        //start call button
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blueAccent,

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(_)=>const CallScreen()));
          },
          icon: Icon(Icons.video_call,color: Colors.white),
          label: Text('Start_Call'),
        ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      );
  }
}

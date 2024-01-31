import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  String userId=DateTime.now().millisecondsSinceEpoch.toString();
  String userName=DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1559614193,
      appSign: 'db88722f4a41ad8330852a8060c0605b7e96692a0664c062ecf4932a6b95410c',
      userID: userId,
      userName: userName,
      callID: 'demo_call_id_for_testing',
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}

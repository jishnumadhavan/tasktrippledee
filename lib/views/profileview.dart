import 'package:flutter/material.dart';
import 'package:task_trippldee/widgets/profileinfo.dart';

class ShowProfileView extends StatefulWidget {
var UserId;
ShowProfileView({
   required this.UserId
});
  @override
  State<ShowProfileView> createState() => _ShowProfileViewState();
}

class _ShowProfileViewState extends State<ShowProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User")
      ),
      body: ProfileInfo(userId: widget.UserId),
    );
  }
}

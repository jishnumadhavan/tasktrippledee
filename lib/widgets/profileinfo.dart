import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_trippldee/controllers/profileinfocontroller.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileInfoController>(builder: (context, provider, child) {
      return Container();
    }
    );
  }
}

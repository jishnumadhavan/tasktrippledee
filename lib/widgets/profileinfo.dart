import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_trippldee/controllers/profileinfocontroller.dart';

import 'displayname.dart';

class ProfileInfo extends StatefulWidget {
  var userId;
  ProfileInfo({required this.userId});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProfileInfoController>(context, listen: false)
        .fetchUserData(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileInfoController>(builder: (context, provider, child) {
      if (provider.UserData.isNotEmpty) {
        return Container(
          padding: EdgeInsets.all(5),
          height: 80,
          child: Center(
            child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey, width: 4)
                    ),
                    child: Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage(provider.UserData['avatar']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      DisplayName(
                        firstName: provider.UserData['first_name'],
                        secondName: provider.UserData['last_name'],
                      ),
                      SizedBox(height: 5),
                      Text(provider.UserData['email']),

                    ],
                  )
                ]),
          ),
        );
      }
      else if (provider.errormessage != ""){
        return Center(child: Text(provider.errormessage));
      }
      else {
        return Center(child: Text("Loading"));
      }
    }
    );
  }
}

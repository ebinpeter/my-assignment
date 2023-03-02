import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Profile(),
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(primary: Color(0xff128C7E))),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                  image: NetworkImage(
                      "https://images.herzindagi.info/image/2020/Oct/srk-m.jpg")),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 290),
                child: Card(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(40)),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Icon(Icons.message),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:250,left:150),
                child: Container(height: 100,
                  width: 98,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://3.bp.blogspot.com/-hp-Z_CRzMeY/WNlrwqAzD2I/AAAAAAAACFc/rTRfR3rzgsM_BNO5R0QqgjlywbDvskrVQCLcB/s1600/shahrukh_khan_body_10943.jpg"),
                          fit: BoxFit.cover),borderRadius: BorderRadius.circular(45)),
                ),
              ), Padding(
                padding: const EdgeInsets.only(left:315, top: 290),
                child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(40)),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Icon(Icons.add),
                    )),
              ),

            ],
          ),
          Column(children: [
            Text("shahrukh khan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

            ,Text("Film producer,actor,dancer",style: TextStyle(color: Colors.blue),)
          ],)
        ],
      ),
    );
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            home: ProUi(),
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class ProUi extends StatelessWidget {
  var item = [
    "Privacy",
    "Settings",
    "Purchase History",
    "Help and Support",
    "invite Friends",
    "Logout",
  ];
  var icn = [
    Icons.privacy_tip,
    Icons.settings,
    Icons.history,
    Icons.help_center_rounded,
    Icons.groups_sharp,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 305, top: 30),
                child: Icon(Icons.menu_outlined),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img-cdn.inc.com/image/upload/w_1024,h_576,c_fill/images/panoramic/Sundar-Pichai_507899_crlwze.jpg"),
                        fit: BoxFit.fill)),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Logo(Logos.twitter),
                        Logo(Logos.facebook_f),
                        Logo(Logos.instagram),
                        Logo(Logos.github)
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Text(
                            "Sundar Pichal",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 25),
                          ),
                          Text(
                            "@CEO of Google",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Indain-American busiiness executive.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Column(
                  children: List.generate(
                      item.length,
                      (index) => Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: ExpansionTile(
                              leading: Icon(icn[index]),
                              title: Text(item[index]),
                            ),
                          )),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

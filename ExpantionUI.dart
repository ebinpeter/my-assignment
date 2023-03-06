import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Expand(),
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Expand extends StatelessWidget {
  var anime = [
    "https://public.rive.app/community/runtime-files/3783-7910-point-and-click.riv",
    "https://public.rive.app/community/runtime-files/3045-6448-orbit-draw-order-demo.riv",
    "https://public.rive.app/community/runtime-files/3898-8161-rivebot-transform.riv",
    "https://public.rive.app/community/runtime-files/4347-8939-double-helix-loader.riv",
  ];
  var Dura = ["Duration:4 Months", "Duration:6 Month", "Duration:1 Year", "Duration:6 Month"];
  var fee = [
    "Course Fee:20000",
    "Course Fee:25000",
    "Course Fee:45000",
    "Course Fee:30000"
  ];
  var cour = [
    "Android Development,Flutter",
    "Web Development",
    "Software Testing",
    "Mearn",
    "Python"
  ];
  var viw = ["View More", "View More", "View More", "View More", "View More"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Techzy IT Lab"),
        ),
        body: Stack(
          children: [
            Image(
                height: 780,
                width: 500,
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://media.istockphoto.com/id/496355380/photo/low-poly-sphere-with-chaotic-structure.jpg?s=612x612&w=0&k=20&c=sOO8V_tNbjJKa_IVlpSaUeYsCQXbb2aUJAmZwLCx-Bg=")),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 700),
              child: Center(
                child: Text(
                  "Courses",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(children: [
                    Column(
                        children: List.generate(
                      anime.length,
                      (index) => ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          height: 150,
                          width: 400,
                          child: Card(
                            child: Stack(
                              children: [
                                RiveAnimation.network(
                                  anime[index],
                                  fit: BoxFit.fill,
                                ),
                                Column(children: [
                                  ExpansionTile(
                                    title: Text(
                                      cour[index],
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      viw[index],
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    children: [
                                      Text(
                                        fee[index],
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(Dura[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlue),)
                                    ],
                                  )
                                ])
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                  ]),
                ),
              ],
            )
          ],
        ));
  }
}

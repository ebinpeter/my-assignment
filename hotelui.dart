import 'package:device_preview/device_preview.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotel(),
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

class Hotel extends StatefulWidget {
  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  var Index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        type: BottomNavigationBarType.fixed,
        currentIndex: Index,
        onTap: (taped_index) {
          setState(() {
            Index = taped_index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 390,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1561501900-3701fa6a0864?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVzb3J0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                      left: 30,
                      top: 200,
                      child: Text(
                        "Crowne Plaza \nKochi,Kerala",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                  Positioned(
                      left: 30,
                      top: 265,
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey),
                        child: Text(
                          "8.5/10 reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      )),
                  Positioned(
                      left: 350,
                      top: 265,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 25.0,
                      direction: Axis.horizontal,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 200,
                      ),
                      child: Text(
                        "\$200",
                        style:
                            TextStyle(color: Colors.amber[600], fontSize: 24),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      "8km to LuluMall",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 195),
                      child: Text(
                        "/per night",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent),
                  child: Text("Book Now")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                  """The resort hotel is a luxury facility that is intended primarily for vacationers and is usually located near special attractions, such as beaches and seashores, scenic or historic areas, ski parks, or spas. Though some resorts operate on a seasonal basis, the majority now try to operate all year-round. The residential hotel is basically an apartment building offering maid service, a dining room, and room meal service. Residential hotels range from the luxurious to the moderately priced. Some resort hotels operate on the so-called American plan, in which the cost of meals is included in the charge for the room. Others operate on the European plan, in which the rate covers only the room and guests make their own arrangements for meals. Transient hotels generally operate on the European plan"""),
            )
          ],
        ),
      ),
    );
  }
}

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
        home: navig(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class navig extends StatelessWidget {
  var items = [
    "Dashboard",
    "Leads",
    "Clients",
    "Project",
    "Petients",
    "Subscription",
    "Payments",
    "Users",
    "Libary"
  ];
  var ins = [
    Icons.space_dashboard_outlined,
    Icons.leak_add_sharp,
    Icons.person_remove_outlined,
    Icons.rocket_launch,
    Icons.man_sharp,
    Icons.subscriptions,
    Icons.payments_rounded,
    Icons.account_circle,
    Icons.library_add
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ],
              // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img-cdn.inc.com/image/upload/w_1024,h_576,c_fill/images/panoramic/Sundar-Pichai_507899_crlwze.jpg"),
                ),
                title: Text(
                  "Sundar Pichai",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                  "CEO of Alphabet Inc",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
              Column(children: [
                SizedBox(
                  height: 500,
                  child: Container(
                      child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext, index) {
                            return ListTile(
                              leading: Icon(ins[index]),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 40, top: 18),
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                            );
                          })),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Log out"))
              ]),
            ],
          ),
        ),
      ),
      body: SizedBox(height:900,
        child: ListView(
          children:[ Column(
            children: [
              Container(
                child: Image(
                  image: NetworkImage(
                      "https://assets.entrepreneur.com/content/3x2/2000/1623331196-812881-sundar-pichai-4542.jpg?crop=4:3"),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.only(right: 250,left: 10,top: 20,bottom: 20),
                child: Text("Sunder Pichai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              ),),
              SizedBox(height: 700,
                child: Container(
                  child:

                    Center(
                      child: ListView(
                          children:[ Text(
                              "In April 2004, he joined Google. He initially worked on Google’s search toolbar, which could easily access and direct the Internet Explorer and Firefox users to the Google search engine. Pichai’s first significant accomplishment came into limelight when Microsoft replaced their default search engine from `Google’ to ‘Bing’ in 2006. As a solution to this, he introduced “Google Toolbar.” The success of Google Toolbar built the foundation for the launch of Google’s browser ‘Google Chrome’ in 2008, which allowed users to access Google directly.Following the success of Chrome, Sundar made his identity in Google and became a widely known household name. It played a crucial role in his success at Google, he was promoted as the Vice-President of Product Development Division in 2008, and by 2012, he became the senior Vice-President of Chrome and apps.Following the success of Chrome, Sundar made his identity in Google and became a widely known household name. It played a crucial role in his success at Google, he was promoted as the Vice-President of Product Development Division in 2008, and by 2012, he became the senior Vice-President of Chrome and apps.")])
                    ),

                ),
              )
            ],
          ),]
        ),
      ),
    );
  }
}

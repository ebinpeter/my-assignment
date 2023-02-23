import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wcall extends StatelessWidget {
  var persons = [
    "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1675215452934-ab9954f0aa78?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8UzRNS0xBc0JCNzR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673706696418-953e1621980f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673603217441-7d92ff358037?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1675545858641-7b90372ced2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8eGpQUjRobGtCR0F8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"

  ];
  var coming = [
    Icons.call_made,
    Icons.call_received_rounded,
    Icons.call_made,
    Icons.call_received_rounded,
    Icons.call_made,
  ];
  var time1 = ["Today,11:30am",
    "Today,09:00am",
    "Yesterday,11:30pm",
    "Yesterday,11:10pm",
    "Yesterday,09:30pm"];
  var icos = [
    Icons.call,
    Icons.video_call,
    Icons.call,
    Icons.video_call,
    Icons.call,
  ];
  var nsm=[ "Ebin",
    "Yedhu",
    "Joel",
    "Albert",
    "diya"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemCount: persons.length,
            itemBuilder: (BuildContext, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(persons[index]),),
                  title:Text(nsm[index]),
                  subtitle: Wrap(children:[ Icon(coming[index],size: 20,),Text(time1[index])],direction: Axis.horizontal ,),
                  trailing: Icon(icos[index]),
                ),
              );
            })
    );
  }

}
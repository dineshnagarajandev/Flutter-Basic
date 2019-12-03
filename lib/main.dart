// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'CustomWidgets/textcomponent.dart';
import 'CustomWidgets/rowcomponent.dart';
import 'CustomWidgets/coloumcomponent.dart';
import 'CustomWidgets/stackcomponent.dart';
import 'CustomWidgets/containercomponent.dart';
import 'CustomWidgets/horizontal_listview_components.dart';
import 'CustomWidgets/formcomponent.dart';
import 'CustomWidgets/ListViewWithAPI.dart';

import 'CustomWidgets/scafordcomponent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> widgetNameArray = <String>[
    'Text',
    'Row',
    'Coloumn',
    'Stack',
    'Container',
    'Horizontal ListView',
    'Form',
    'List With API Data'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Flutter Basic',
          ),
        ),
        body: ListView.separated(
          physics: new AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          itemCount: widgetNameArray.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    '${widgetNameArray[index]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => flutterBasicListViewTapped(
                  '${widgetNameArray[index]}', context, index),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 5,
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: getData),
      ),
      routes: {
        "/TextComponent": (context) => TextComponent(),
        "/RowComponent": (context) => RowComponent(),
        "/ColoumComponent": (context) => ColoumComponent(),
        "/StackComponent": (context) => StackComponent(),
        "/ContainerComponent": (context) => ContainerComponent(),
        "/FormComponent": (context) => FormComponent(),
        "/ScafordComponents": (context) => ScafordComponent(),
        "/HorizontalListViewComponents": (context) =>
            HorizontalListViewComponent(),
            "/ListViewWithAPI": (context) => ListViewWithAPI()
      },
    );
  }
}

getData() {
  
}

void flutterBasicListViewTapped(
    String selectedWidget, BuildContext context, int index) {
  switch (index) {
    case 0:
      // Text component
      Navigator.pushNamed(context, '/TextComponent');
      break;
    case 1:
      // Row component
      Navigator.pushNamed(context, '/RowComponent');
      break;
    case 2:
      // Column component
      Navigator.pushNamed(context, '/ColoumComponent');
      break;
    case 3:
      // Stack component
      Navigator.pushNamed(context, '/StackComponent');
      break;
    case 4:
      // Container component
      Navigator.pushNamed(context, '/ContainerComponent');
      break;
    case 5:
      // Horizontal List View
      Navigator.pushNamed(context, '/HorizontalListViewComponents');
      break;
    case 6:
      // Form component
      Navigator.pushNamed(context, '/FormComponent');
      break;
    case 7:
      // API component
      Navigator.pushNamed(context, '/ListViewWithAPI');
      break;
    default:
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text("Default case")));
      break;
  }
}

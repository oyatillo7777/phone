import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/ui/home/SecondScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> telnomi = [
    "Phone 13 pro max",
    "Phone 15 pro max",
    "Phone 14 pro max",
    "Phone 11 pro max",
    "Phone 12 pro max",
    "Phone 12 pro",
    "Phone 12 ",
    "Phone 11 ",
    "Phone 11 pro",
    "Phone X",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',
            style: TextStyle(color: Colors.white, fontSize: 22)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_alert),
          )
        ],
      ),
      body: GridView.builder(
          itemCount: telnomi.length,
          padding: EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (_) => SecondScreen(nomi: telnomi[index])));
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue[100]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            child: Image.asset("assets/img.png",
                                fit: BoxFit.cover),
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(telnomi[index],
                                style: TextStyle(fontSize: 17)),
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

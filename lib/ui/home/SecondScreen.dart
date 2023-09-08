
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String nomi;
  const SecondScreen({Key? key, required this.nomi}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.nomi)),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset("assets/img.png",
                fit: BoxFit.cover),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Telefon narx",
                                    style: TextStyle(fontSize: 18)),
                                Text("1500\$", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Yili:", style: TextStyle(fontSize: 18)),
                                Text("2023", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Xotirasi:",
                                    style: TextStyle(fontSize: 18)),
                                Text("128", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Ram:", style: TextStyle(fontSize: 18)),
                                Text("3Gb", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Holati:", style: TextStyle(fontSize: 18)),
                                Text("yangi", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}

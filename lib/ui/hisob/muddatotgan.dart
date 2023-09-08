import 'package:flutter/material.dart';

class MuddatiOtganMJ extends StatefulWidget {
  const MuddatiOtganMJ({Key? key}) : super(key: key);

  @override
  State<MuddatiOtganMJ> createState() => _MuddatiOtganMJState();
}

class _MuddatiOtganMJState extends State<MuddatiOtganMJ> {
  List<String> ism = [
    "Akbar Qodirov",
    "Zohid Mominov",
    "Rahm Tolipov",
    "Azam Nurulayev",
    "Zokir Qochqorov",
    "Zokir Qochqorov",
    "Zokir Qochqorov",
    "Zokir Qochqorov",
  ];
  List<String> tel = [
    "+998949824666",
    "+998949824456",
    "+998949824000",
    "+998949824777",
    "+998949824587",
    "+998949827899",
    "+998949827890",
    "+998949827869",
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
      body: ListView.builder(
          itemCount: ism.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey[400],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ism[index], style: TextStyle(fontSize: 20)),
                      Text(tel[index], style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

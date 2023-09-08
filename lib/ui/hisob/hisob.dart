import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/ui/hisob/muddatotgan.dart';

class HisobPage extends StatefulWidget {
  const HisobPage({Key? key}) : super(key: key);

  @override
  State<HisobPage> createState() => _HisobPageState();
}

class _HisobPageState extends State<HisobPage> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1-oylik kirim:", style: TextStyle(fontSize: 22)),
                        Text("4312323", style: TextStyle(fontSize: 22)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1-oylik chiqim:", style: TextStyle(fontSize: 22)),
                        Text("5000000", style: TextStyle(fontSize: 22)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1-oylik foyd:", style: TextStyle(fontSize: 22)),
                        Text("123322", style: TextStyle(fontSize: 22)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => MuddatiOtganMJ()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Muddati otib ketgan mijozlar:",
                            style: TextStyle(fontSize: 20)),
                        Text("200", style: TextStyle(fontSize: 18)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

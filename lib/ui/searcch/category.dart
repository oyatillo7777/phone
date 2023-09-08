
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String nomi;
  const CategoryPage({Key? key, required this.nomi}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
          padding: EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
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
                            child: Text(widget.nomi,
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

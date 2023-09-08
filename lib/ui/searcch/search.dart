import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/ui/searcch/category.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> category = [
    "Iphone",
    "Samsung",
    "Redmi",
    "Honor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              height: 50,
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)))),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: category.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                CategoryPage(nomi: category[index])));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    color: Colors.grey,
                    child: Center(
                      child: Text(category[index],
                          style: TextStyle(color: Colors.black, fontSize: 23)),
                    ),
                  ),
                ),
              );
            }));
  }
}

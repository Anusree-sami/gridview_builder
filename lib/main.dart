import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List img=[
    'model/america.jpg',
    'model/india.jpg',
    'model/china.jpg',
    'model/japan.jpg',
    'model/africa.jpg',

  ];
  List place=["America","India","China","Japan","Africa"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            "GridView Builder",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,

        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
              itemCount: img.length,
              itemBuilder:(context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset(img[index],fit: BoxFit.cover,)),
                      SizedBox(height: 10,),
                      Text(place[index],
                        style: TextStyle(fontWeight: FontWeight.bold
                        ),
                      ),
                      /*Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(place[index])),
                        ),
                      ),*/

                    ],
                  ),
                );
              },),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task1Screan(),
    );
  }
}

class Task1Screan extends StatefulWidget {
  const Task1Screan({super.key});

  @override
  State<Task1Screan> createState() => _Task1ScreanState();
}

class _Task1ScreanState extends State<Task1Screan> {
  Color changecolor = Colors.grey;
  List<Map> cart = [
    {"Name": "Buthaina", "Day": "Day - 10", "Image": "images/img.jpg","like" : Colors.grey},
    {"Name": "Sara", "Day": "Day - 12", "Image": "images/img2.jpg","like" : Colors.grey},
    {"Name": "Marwa", "Day": "Day - 14", "Image": "images/img3.jpg","like" : Colors.grey},
    {"Name": "Safa", "Day": "Day - 20", "Image": "images/img4.jpg","like" : Colors.grey},
    {"Name": "Shahd", "Day": "Day - 18", "Image": "images/img5.jpg","like" : Colors.grey},
    {"Name": "Azza", "Day": "Day - 14", "Image": "images/img6.jpg","like" : Colors.grey},
    {"Name": "Juhaina", "Day": "Day - 8", "Image": "images/img.jpg","like" : Colors.grey},
    {"Name": "shams", "Day": "Day - 9", "Image": "images/img2.jpg","like" : Colors.grey}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Yoga"),
          centerTitle: true,
          toolbarHeight: 120,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.indigo,
          ),
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: GridView.builder(
            itemCount: cart.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 5),
            itemBuilder: (context, i) {
              return Card(
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(cart[i]['Image']),
                              fit: BoxFit.cover)),
                    ),
                    ListTile(
                      title: Text("${cart[i]['Name']}"),
                      subtitle: Text("${cart[i]['Day']}"),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              cart[i]['like'] = Colors.redAccent;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: cart[i]['like'],
                          )),
                    )
                  ],
                ),
              );
            }));
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


void main() {
  runApp(Sesstion());
}

class Sesstion extends StatelessWidget {
  const Sesstion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AwesomeDialogExample(),
    );
  }
}

class SecrollViewExample extends StatefulWidget {
  const SecrollViewExample({super.key});

  @override
  State<SecrollViewExample> createState() => _SecrollViewExampleState();
}

class _SecrollViewExampleState extends State<SecrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.freepik.com/premium-photo/underwater-ruins-abandoned-temple-with-weathered-remains-lost-civilization-ai-generated_690082-5588.jpg",
              width: 300,
              height: 300,
            ),
            Image.network(
              "https://img.freepik.com/premium-photo/underwater-ruins-abandoned-temple-with-weathered-remains-lost-civilization-ai-generated_690082-5588.jpg",
              width: 300,
              height: 300,
            ),
            Image.network(
              "https://img.freepik.com/premium-photo/underwater-ruins-abandoned-temple-with-weathered-remains-lost-civilization-ai-generated_690082-5588.jpg",
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.teal,
          ),
          Positioned(
            top: 100,
            left: 130,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/premium-photo/underwater-ruins-abandoned-temple-with-weathered-remains-lost-civilization-ai-generated_690082-5588.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<String> images = [
    "https://img.freepik.com/premium-photo/magical-world-ornate-architecture-glowing-crystals-nature-fantasy-wallpaper_916191-66336.jpg",
    "https://img.freepik.com/premium-photo/man-stands-front-large-building-with-castle-background_878402-5645.jpg"
        "https://img.freepik.com/premium-photo/mountain-lake-concept-art-illustration_708558-52.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarouselSlider(
          items: images
              .map((e) => Container(
            margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: NetworkImage(e),fit: BoxFit.cover)
                ),
              ),)
              .toList(),
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: Duration(milliseconds: 400),
            disableCenter: true,
          ),
        ),
      ),
    );
  }
}
class AwesomeDialogExample extends StatefulWidget {
  const AwesomeDialogExample({super.key});

  @override
  State<AwesomeDialogExample> createState() => _AwesomeDialogExampleState();
}

class _AwesomeDialogExampleState extends State<AwesomeDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          AwesomeDialog(
            context: context,
            title: "Hello World",

          ).show();
        },
        child: Container(
          color: Colors.red,
          height: 100,
          width: 500,
        ),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CAROUSEL_SLIDER",
        style: TextStyle(fontWeight:
         FontWeight.w400),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 12, 202, 120),
      ),
      body: contant()
    );
  }
}
Widget contant(){
  return Center(
    child: CarouselSlider(items:["https://wanderon.in/_next/image?url=https%3A%2F%2Fstatic.wanderon.in%2Fwp-content%2Fuploads%2F2023%2F08%2Funtitled-design-2023-08-24t102229.527-min.png&w=3840&q=75",
          "https://i.natgeofe.com/n/a95542a2-c8e3-4817-91a9-ba9d89cec383/00000161-7323-d279-ad6f-f7ff7a2a0000.jpg?w=718&h=404",
          "https://media-cdn.tripadvisor.com/media/photo-s/16/e0/7b/c2/picture-clicked-at-the.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGCDE_6WCbBFqyY5492uAJUZ6SCGYXFlP7CQ&usqp=CAU",
         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3SEpQPm515u2wBmlTT1flqRgwpVru_cZiKw&usqp=CAU",
         ].map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(), 
            options: CarouselOptions(
              height: 200.0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
    ),
  );
}
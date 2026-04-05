import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CakeShopListUi extends StatefulWidget {
  const CakeShopListUi({super.key});

  @override
  State<CakeShopListUi> createState() => _CakeShopListUiState();
}

class _CakeShopListUiState extends State<CakeShopListUi> {
  List<String> imgShopLogo = [
    'assets/images/ck01.png',
    'assets/images/ck02.png',
    'assets/images/ck03.png',
    'assets/images/ck04.png',
    'assets/images/ck05.png',
    'assets/images/ck06.png',
    'assets/images/ck07.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนกินเค้ก',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: CarouselSlider.builder(
                itemCount: imgShopLogo.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(imgShopLogo[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

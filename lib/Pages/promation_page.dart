import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  final List<String> imgList = [
    'assets/t.jpg',
    'assets/v.jpg',
    'assets/y.jpg',
    'assets/a.png',
    'assets/b.png',
  ];
  String titleText = 'carousel slider kullanmı';

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var yukseklik = ekran.size.height;
    var genislik = ekran.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          titleText,
          style: const TextStyle(
            color: Colors.black,
            letterSpacing: -0.33,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CarouselSlider(
              items: imgList
                  .map(
                    (item) => Container(
                      height: yukseklik,
                      width: genislik,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                  onPageChanged: (index, reason) {
                    setState(() {});
                  }),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

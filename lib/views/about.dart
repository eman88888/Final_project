import 'package:flutter_navigation/widgets/dev_data.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //decoration: BoxDecoration(color: Color(0xFFF6E9F6)),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/showy.jpg'), fit: BoxFit.cover),
                  //color: Color(0xFFCDA6CB),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, bottom: 10),
                      child: Text(
                        'BeautyGlam',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Pacifico'),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 30),
                      child: Text(
                        'Your Ultimate Makeup Haven - Shop, Discover, and Enhance Your Beauty!',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.circular(40)
              ),
              child: Column(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'It\'s not about us\n it\'s about you!',
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Pacifico',
                          fontSize: 20),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 20),
                    child: Text(
                      'Welcome to BeautyGlam, your premier destination for all things beauty! We are an innovative makeup e-commerce mobile app dedicated to empowering individuals to express their unique style and enhance their natural beauty effortlessly.',
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Pacifico',
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Text(
                      'At BeautyGlam, we curate a diverse and extensive collection of high-quality makeup products from renowned brands and independent artisans, ensuring that you have access to the latest trends and timeless classics. Whether you\'re a makeup novice or a seasoned pro, our user-friendly interface and personalized recommendations make your shopping experience seamless and enjoyable.',
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Pacifico',
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Text(
                      'Join the BeautyGlam community today and embark on a journey of self-expression and beauty exploration. Together, let\'s redefine beauty standards and celebrate the beauty that lies within each of us. Thank you for choosing BeautyGlam – where beauty meets technology, and your makeup dreams come to life.',
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Pacifico',
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

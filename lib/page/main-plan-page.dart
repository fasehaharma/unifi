import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:unify/ui/cart_add_on_view.dart';
import 'package:unify/ui/plan/cart_plan100_view.dart';
import 'package:unify/ui/plan/cart_plan300_view.dart';
import 'package:unify/ui/plan/cart_plan30_view.dart';
import 'package:unify/ui/plan/cart_plan500_view.dart';
import 'package:unify/ui/plan/cart_plan800_view.dart';

class MainPlanPage extends StatefulWidget {
  const MainPlanPage({Key? key}) : super(key: key);

  @override
  State<MainPlanPage> createState() => _MainPlanPageState();
}

class _MainPlanPageState extends State<MainPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/unifi_logo.png',
                      height: 40, fit: BoxFit.fill),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Color(0xffff6624),
                      ),
                      Icon(
                        Icons.facebook,
                        color: Color(0xffff6624),
                      ),
                      Icon(
                        Icons.facebook,
                        color: Color(0xffff6624),
                      ),
                      Icon(
                        Icons.facebook,
                        color: Color(0xffff6624),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CarouselSlider(
                items: ['assets/promo.png', 'assets/campaign.png'].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Color(0xfffff0e9)),
                        child: Image.asset(i, height: 40, fit: BoxFit.fill),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 10),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xfffff0e9),
              ),
              child: Row(
                children: [
                  Text(
                    'You\'re exploring the Entertainment bundles.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text('Step 1'),
                  Text('Step 2'),
                  Text('Step 3'),
                  Text('Step 4'),
                  Text('Step 5'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'unifi Your World',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You\'re exploring the Entertainment bundles.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xfffff0e9),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CartPlan800View(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xfffff0e9),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CartPlan500View(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xfffff0e9),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CartPlan300View(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xfffff0e9),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CartPlan100View(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xfffff0e9),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CartPlan30View(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Copyright © 2022 Telekom Malaysia Berhad. All rights reserved.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

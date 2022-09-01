import 'package:flutter/material.dart';
import 'package:unify/ui/cart_review_installation_view.dart';
import 'package:unify/ui/cart_review_personal_view.dart';
import 'package:unify/ui/cart_review_summary_view.dart';
import 'package:unify/ui/step_progress_view.dart';

class ReviewPage extends StatefulWidget {
  ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final List<Icon> stepIcons = [
    Icon(Icons.house_rounded),
    Icon(Icons.bookmark_add_rounded),
    Icon(Icons.person_rounded),
    Icon(Icons.receipt_rounded)
  ];

  final List<String> titles = [
    "Installation Details",
    "Add-On",
    "Personal Details",
    "Review & Submit"
  ];

  final int _curStep = 4;
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Apply'),
        backgroundColor: Color(0xffff6624),
        onPressed: () {Navigator.of(context).pushNamed('/thank-you-page');},
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/unifi_logo.png',
                  height: 40, fit: BoxFit.fill),
            ),
            StepProgressView(
              icons: stepIcons,
              width: MediaQuery.of(context).size.width,
              curStep: _curStep,
              color: Color(0xffff6624),
              titles: titles,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Ports are limited!Submit your application TODAY. You will receive your order status via email from unifi Online Store.'),
            ),
            Row(
              children: [
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width / 2,
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
                          CartReviewPersonalView(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width / 2,
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
                          CartReviewInstallationView(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
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
                          CartReviewSummaryView(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        //color: Color(0xfffff0e9),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                  'I acknowledge that I am subscribing to unifi services with a contract of 24 months.'),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked2 = value!;
                                  });
                                },
                              ),
                              Flexible(
                                child: Text(
                                    'By submitting this form, I have read and agree with TM\'s TM\'s Privacy Policy and Terms and Conditions of the product offerings. '),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Why you should apply today'),
                                  Text(''),
                                  Text(
                                      '1. No payment is required when you submit this application.'),
                                  Text('2. You will get 30 days FREE trial.'),
                                  Text(
                                      '3. Cancel within 30 days without any penalty.'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

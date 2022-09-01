import 'package:flutter/material.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({Key? key}) : super(key: key);

  @override
  State<ThankYouPage> createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xfffff0e9),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                        children: [
                          Icon(
                            Icons.mark_email_read_rounded,
                            color: Color(0xffff6624),
                            size: 200.0,
                          ),
                          Text('We Are Reviewing your unifi Application'),
                          Text('Reference Number #'),
                          Text(
                              'Thank You for choosing unifi. We are reviewing your unifi application and we\'ll update the status via email.'),
                          Text(
                              'You will receive your order status via email from unifi Online Store. Please check you email, and look for the sender unifi Online Store'),
                          Text('(online-store@unifi.com.my)'),
                        ],
                      ),
                  ),
                ),
            ]),
      ),
    );
  }
}

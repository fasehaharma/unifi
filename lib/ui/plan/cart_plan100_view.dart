import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:unify/argument/plan-argument.dart';

class CartPlan100View extends StatelessWidget {
  const CartPlan100View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [Text('Plan Choice'),Spacer() , Text('Monthly')],
            ),
            Row(
              children: [Text('100mbps'),Spacer(), Text('RM 189')],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [Text('FREE unifi Plus TV Box + Ultimate Pack')],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Basic unlimited broadband with entertainment for 2-3 users at home, using up to 5 devices',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xfffff0e9),
              ),

              padding: const EdgeInsets.all(8.0),

              child: ExpandablePanel(
                header: Text('What included'),
                collapsed: Text(
                  '',
                  softWrap: true,
                ),
                expanded: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('1. unifi Home'),
                    Text('• Unlimited Internet'),
                    Text('• 2-3 users on up to 5 devices'),
                    Text('• Download speed up to 100mbps'),
                    Text('• Upload speed up to 50mbps'),
                    Text('• 24-month Contract'),
                    Text('• 30-days FREE TRIAL'),
                    Text('• No commitment, cancel with no penalty within trial period'),
                    Text(''),
                    Text(''),
                    Text('2. Wi-Fi 6 certified router'),
                    Text(''),
                    Text(''),
                    Text('3. unifi TV'),
                    Text('• Bundled with FREE unifi Plus Box, unifi TV Ultimate Pack and 15 choices of streaming apps'),
                    Text('• Access to Disney+ Hotstar, beIN SPORTS CONNECT, SPOTV NOW and BBC Player streaming apps on us'),
                    Text('• 90 days free access to Lionsgate Play'),
                    Text('• unifi PlayTV app up to 5 devices'),
                    Text(''),
                    Text(''),
                    Text('4. 24 hrs Service Guarantee'),
                    Text('• Get RM50 bill rebate if your service is not restored within 24 hours'),
                    Text('• T&C apply'),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/installation-page', arguments: PlanArgument('100Mbps', 'RM 189'));
                },
                style: TextButton.styleFrom(
                  primary: Color(0xffff6624),
                ),
                child: Text('Buy Now')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../data-holder-singleton.dart';

class CartReviewInstallationView extends StatelessWidget {
  CartReviewInstallationView({Key? key}) : super(key: key);
  final DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Installation Details'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Installation Address'),
                    Text(dataHolderSingleton.address1?? ''),
                    Text(dataHolderSingleton.address2?? ''),
                    Row(
                      children: [
                        Text(dataHolderSingleton.postcode?? ''),
                        Text(dataHolderSingleton.city?? ''),
                        Text(dataHolderSingleton.state?? ''),
                      ],
                    ),
                  ],
                ),
                Expanded(flex: 1, child: Container()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('We will email you the updated available date. '),
                    Text('You can always change your appointment date later.'),
                    Text(''),
                    Text('Between Monday - Friday'),
                    Text('Between 9.30am - 7.00pm'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

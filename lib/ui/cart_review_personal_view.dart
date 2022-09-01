import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../data-holder-singleton.dart';

class CartReviewPersonalView extends StatelessWidget {
  CartReviewPersonalView({Key? key}) : super(key: key);
  final DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Personal Details'),

            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name'),
                    Text(dataHolderSingleton.personalDetailArgument?.name?? '')
                  ],
                ),
                Expanded(flex: 1, child:Container()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email'),
                    Text(dataHolderSingleton.personalDetailArgument?.email?? '')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mobile Number'),
                    Text(dataHolderSingleton.personalDetailArgument?.phone?? '')
                  ],
                ),
                Expanded(flex: 1, child:Container()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID Information'),
                    Text(dataHolderSingleton.personalDetailArgument?.typeNRIC?? ''),
                    Text(dataHolderSingleton.personalDetailArgument?.numberNRIC?? '')
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

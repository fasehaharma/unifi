import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:unify/ui/plan/plan-widget-list-provided.dart';
import '../data-holder-singleton.dart';

class CartReviewSummaryView extends StatelessWidget {
  CartReviewSummaryView ({Key? key}) : super(key: key);

  final DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();

  @override
  Widget build(BuildContext context) {
    String rawPlanPrice = dataHolderSingleton.planArgument?.price??'RM 0';
    String planPrice = rawPlanPrice.substring(3, rawPlanPrice.length);
    double iPlanPrice = double.parse(planPrice);

    String rawAddOnPlanPrice = dataHolderSingleton.addOnArgument?.addPrice??'RM 0';
    String addOnPlanPrice = rawAddOnPlanPrice.substring(3, rawAddOnPlanPrice.length);
    double iAddOnPlanPrice = double.parse(addOnPlanPrice);

    double price = iPlanPrice + iAddOnPlanPrice;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [Text('Plan Choice'),Spacer() , Text('Monthly')],
            ),
            Row(
              children: [
                Text(dataHolderSingleton.planArgument?.plan ?? 'plan'),
                Spacer(),
                Text(dataHolderSingleton.planArgument?.price ?? 'price')
              ],
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
                expanded: PlanWidgetListProvided(),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(dataHolderSingleton.addOnArgument?.addOn ??
                    'Add-On'),
                Spacer(),
                Text(dataHolderSingleton.addOnArgument?.addPrice ?? 'RM 0.00'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
              height: 1,
              indent: 20,
              endIndent: 20,
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              children: [Text('Monthly Total'), Spacer(), Text('RM $price')],
            ),
            Row(
              children: [Text(''),Spacer(), Text('**Price shown is exclusive of 6% Service Tax')],
            ),
            SizedBox(
              height: 10,
            ),

            Divider(
              thickness: 2,
              color: Colors.black,
              height: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

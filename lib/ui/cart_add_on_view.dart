import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:unify/data-holder-singleton.dart';
import 'package:unify/ui/plan/plan-widget-list-provided.dart';

class CartAddOnView extends StatelessWidget {
  CartAddOnView({Key? key, required this.onPlanCancelFunction}) : super(key: key);

  final DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();
  final Function() onPlanCancelFunction;

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
              children: [Text('Plan Choice'), Spacer(), Text('Monthly')],
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
                IconButton(onPressed: (){
                  onPlanCancelFunction();
                }, icon: Icon(Icons.cancel)),
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xfffff0e9),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Enjoy FREE 30 days trial with unifi today!'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

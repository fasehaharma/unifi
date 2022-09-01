import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:unify/argument/plan-argument.dart';
import 'package:unify/ui/plan/plan-widget-list-provided.dart';

class CartView extends StatelessWidget {
  final PlanArgument args;

  const CartView(this.args, {Key? key}) : super(key: key);

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
              children: [Text(args.plan),Spacer(), Text(args.price)],
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
              children: [Text('Monthly Total'),Spacer(), Text(args.price)],
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
                    Text('Price displayed is not including add-on smart device easy plan (Laptop or TV). The add on selection is available in Step 2.'),

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

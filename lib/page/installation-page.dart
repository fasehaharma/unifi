import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unify/argument/plan-argument.dart';
import 'package:unify/data-holder-singleton.dart';
import 'package:unify/ui/cart_view.dart';
import 'package:unify/ui/step_progress_view.dart';

class InstallationPage extends StatefulWidget {
  InstallationPage({Key? key}) : super(key: key);

  @override
  State<InstallationPage> createState() => _InstallationPageState();
}

class _InstallationPageState extends State<InstallationPage> {
  String? house;

  final List<Icon> stepIcons = [
    Icon(Icons.house_rounded),
    Icon(Icons.bookmark_add_rounded),
    Icon(Icons.person_rounded),
    Icon(Icons.receipt_rounded)
  ];

  final List<String> titles = ["Installation Details", "Add-On", "Personal Details", "Review & Submit"];

  final int _curStep = 1;

  TextEditingController address1Controller= TextEditingController();
  TextEditingController address2Controller= TextEditingController();
  TextEditingController postcodeController= TextEditingController();
  TextEditingController cityController= TextEditingController();
  TextEditingController stateController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    final PlanArgument args = ModalRoute.of(context)!.settings.arguments as PlanArgument;
    DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();
    dataHolderSingleton.planArgument = args;

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next'),
        backgroundColor: Color(0xffff6624),
        onPressed: () {

          dataHolderSingleton.address1 = address1Controller.text;
          dataHolderSingleton.address2 = address2Controller.text;
          dataHolderSingleton.postcode = postcodeController.text;
          dataHolderSingleton.city = cityController.text;
          dataHolderSingleton.state = stateController.text;
          Navigator.of(context).pushNamed('/add-on-page');
          },
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/unifi_logo.png', height: 40, fit: BoxFit.fill),
            ),
            StepProgressView(
              icons: stepIcons,
              width: MediaQuery.of(context).size.width,
              curStep: _curStep,
              color: Color(0xffff6624),
              titles: titles,
            ),
            CartView(args),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Text('Fill in your address here and proceeed to the next step until you complete the submission. Our team will check for you and update you via email. Keep an eye on email from onlinestore@unifi.com.my'),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: RadioListTile(
                      title: Text("Landed"),
                      value: "Landed",
                      groupValue: house,
                      onChanged: (value) {
                        setState(() {
                          house = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: RadioListTile(
                      title: Text("High Rise"),
                      value: "High Rise",
                      groupValue: house,
                      onChanged: (value) {
                        setState(() {
                          house = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextField(
                        controller: address1Controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Address 1',
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: TextField(
                          controller: address2Controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Address 2',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: TextField(
                          controller: postcodeController,
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Postcode',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: TextField(
                          controller: cityController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'City',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: TextField(
                          controller: stateController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'State',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

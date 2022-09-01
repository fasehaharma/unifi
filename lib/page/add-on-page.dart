import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:unify/argument/add-on-argument.dart';
import 'package:unify/data-holder-singleton.dart';
import 'package:unify/ui/cart_add_on_view.dart';
import 'package:unify/ui/custom_radio_ui.dart';
import 'package:unify/ui/step_progress_view.dart';

class AddOnPage extends StatefulWidget {
  AddOnPage({Key? key}) : super(key: key);

  @override
  State<AddOnPage> createState() => _AddOnPageState();
}

class _AddOnPageState extends State<AddOnPage> {
  String type = '';

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

  final int _curStep = 2;
  DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next'),
        backgroundColor: Color(0xffff6624),
        onPressed: () {
          Navigator.of(context).pushNamed('/personal-details-page');
        },
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
              CartAddOnView(onPlanCancelFunction: () {
                type = '';
                log('The current type is $type');
                dataHolderSingleton.addOnArgument = null;
                setState(() {

                });
              },),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Bundle up with our add-ons to enjoy the fullest unifi experience'),
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xfffff0e9),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('+ International Call Plan'),
                        Text('IDD'),
                        Text(
                            'Get up to 1000 minutes FREE talk time from TM fixed lines to international fixed lines and mobiles.'),
                        Text(''),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 450,
                                child: CustomRadioUi<String>(
                                  title: 'Voice IDD Plan 20',
                                  price: '+RM20 monthly',
                                  description1: '- Free 300 minutes talk time',
                                  description2: '- RM20 per month',
                                  description3:
                                      '- RM0.20 per min for each additional minutes',
                                  value: 'Plan 20',
                                  groupValue: type,
                                  leading: 'A',
                                  onChanged: (value) {
                                    AddOnArgument addOnArgument =
                                        new AddOnArgument(value!, 'RM 20');
                                    dataHolderSingleton.addOnArgument =
                                        addOnArgument;
                                    log('add-on selected: $value');
                                    setState(() {
                                      log('Current type is $value');
                                      type = value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                width: 450,
                                child: CustomRadioUi<String>(
                                  title: 'Voice IDD Plan 30',
                                  price: '+RM30 monthly',
                                  description1: '- Free 500 minutes talk time',
                                  description2: '- RM30 per month',
                                  description3:
                                      '- RM0.20 per min for each additional minutes',
                                  value: 'Plan 30',
                                  groupValue: type,
                                  leading: 'A',
                                  onChanged: (value) {
                                    AddOnArgument addOnArgument =
                                        new AddOnArgument(value!, 'RM 30');
                                    dataHolderSingleton.addOnArgument =
                                        addOnArgument;
                                    log('add-on selected: $value');
                                    setState(() {
                                      type = value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                width: 450,
                                child: CustomRadioUi<String>(
                                  title: 'Voice IDD Plan 50',
                                  price: '+RM50 monthly',
                                  description1: '- Free 1000 minutes talk time',
                                  description2: '- RM50 per month',
                                  description3:
                                      '- RM0.15 per min for each additional minutes',
                                  value: 'Plan 50',
                                  groupValue: type,
                                  leading: 'A',
                                  onChanged: (value) {
                                    AddOnArgument addOnArgument =
                                        new AddOnArgument(value!, 'RM 50');
                                    dataHolderSingleton.addOnArgument =
                                        addOnArgument;
                                    log('add-on selected: $value');
                                    setState(() {
                                      type = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xfffff0e9),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('+ Smart Device(New!)'),
                        Text('Smart TV or Laptop'),
                        Text(
                            'Pair smart device with your unifi Home plan with our easy payment plan for 24 months. Only applicable for Malaysian citizens.'),
                        Text(''),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 450,
                                child: CustomRadioUi<String>(
                                  title: 'Asus Expertbook',
                                  price: '+RM109 month',
                                  description1: 'RM109/month for 24 months.',
                                  description2: '(4GB RAM, 256 GB SSD)',
                                  description3: '',
                                  value: 'Asus Expertbook',
                                  groupValue: type,
                                  leading: 'A',
                                  onChanged: (value) {
                                    AddOnArgument addOnArgument =
                                        new AddOnArgument(value!, 'RM 109');
                                    dataHolderSingleton.addOnArgument =
                                        addOnArgument;
                                    log('add-on selected: $value');
                                    setState(() {
                                      type = value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                width: 450,
                                child: CustomRadioUi<String>(
                                  title: 'Sharp 60" 4K UHD TV',
                                  price: '+RM129 month',
                                  description1: 'RM129/month for 24 months.',
                                  description2: '(60 inch Android TV)',
                                  description3: '',
                                  value: '5',
                                  groupValue: type,
                                  leading: 'A',
                                  onChanged: (value) {
                                    AddOnArgument addOnArgument =
                                        new AddOnArgument(value!, 'RM 129');
                                    dataHolderSingleton.addOnArgument =
                                        addOnArgument;
                                    log('add-on selected: $value');
                                    setState(() {
                                      type = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

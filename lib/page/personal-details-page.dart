import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unify/argument/personal-detail-argument.dart';
import 'package:unify/data-holder-singleton.dart';
import 'package:unify/ui/cart_personal_detail_view.dart';
import 'package:unify/ui/step_progress_view.dart';

class PersonalDetailsPage extends StatefulWidget {
  PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  String? house;
  String type = 'New NRIC';

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

  final int _curStep = 3;

  TextEditingController nameController= TextEditingController();
  TextEditingController numberNRICController= TextEditingController();
  TextEditingController emailController= TextEditingController();
  TextEditingController phoneController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next'),
        backgroundColor: Color(0xffff6624),
        onPressed: () {
          PersonalDetailArgument personalDetailArgument = new PersonalDetailArgument(nameController.text, type, numberNRICController.text, emailController.text, phoneController.text);
          DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();
          dataHolderSingleton.personalDetailArgument = personalDetailArgument;

          Navigator.of(context).pushNamed('/review-page');
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
            CartPersonalDetailView(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Fill in your personal details here and proceeed to the next step until you complete the submission. Our team will check for you and update you via email. Keep an eye on email from onlinestore@unifi.com.my'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
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
                        child: DropdownButtonFormField<String>(
                          value: type,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (String? newValue) {
                            setState(() {
                              type = newValue!;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          items: <String>[
                            'New NRIC',
                            'Passport',
                            'Military',
                            'Police',
                            'MyPR',
                            'MyKAS'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: TextField(
                          controller: numberNRICController,
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ID Number',
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
                        width: MediaQuery.of(context).size.width / 3,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
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
                        width: MediaQuery.of(context).size.width / 3,
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Note: All information provided will be kept confidential. We will not disclose your personal information to a third party without your consent unless we are required or authorised to do so by law or other regulations.'),
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

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 50,
          color: Colors.transparent,
        ),
        // for registration number
        Container(
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Registration Number',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SizedBox(
              height: 60,
              width: 375,
              child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your registration number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Registration Number',
                  ))),
        ),
        // for the sacco number
        Container(
          padding: const EdgeInsets.only(top: 10),
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Official Sacco Name',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SizedBox(
              height: 60,
              width: 375,
              child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your sacco number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Official Sacco Name',
                  ))),
        ),

        // for the email
        Container(
          padding: const EdgeInsets.only(top: 10),
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Email Number',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SizedBox(
              height: 60,
              width: 375,
              child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Email Address',
                  ))),
        ),
        // for the button
        Container(
            height: 75,
            width: 240,
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              onPressed: () {},
              child: const Text('Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            )),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _validate = false;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 50,
          color: Colors.transparent,
        ),
        // for email
        Container(
          margin: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Email Address',
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
        // for password
        Container(
          margin: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Password',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            padding: const EdgeInsets.only(bottom: 15),
            child: SizedBox(
                height: 60,
                width: 375,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: _isObscure,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field cannot be empty';
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                    errorText: _validate ? 'Field cannot be empty' : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ))),
        // for login button
        Container(
            height: 75,
            width: 240,
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              onPressed: () {
                Navigator.pushNamed(context, 'navigation');
              },
              child: const Text('Log in',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            )),
        //for help
        Container(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
              child: const Text('Need Help?',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              onPressed: () {},
            )),
      ]),
    );
  }
}

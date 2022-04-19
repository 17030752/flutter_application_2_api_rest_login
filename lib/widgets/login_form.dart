import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2_api_rest/utils/responsive.dart';
import 'package:flutter_application_2_api_rest/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String email = '', password = '';
  _submit() {
    final isOk = _formKey.currentState!.validate();
    print("form is ok $isOk");
    if (isOk) {}
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
        bottom: 300,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: responsive.isTablet ? 430 : 360,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InputText(
                    label: "Email Address",
                    fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                    onChanged: (text) {
                      email = text;
                    },
                    validator: (text) {
                      if (!text!.contains("@")) {
                        return "Invalid email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress),
                SizedBox(
                  height: responsive.dp(2),
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.black26))),
                  child: Row(
                    children: [
                      Expanded(
                        child: InputText(
                          label: "Password",
                          obscureText: true,
                          borderEnabled: false,
                          fontSize:
                              responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                          onChanged: (text) {
                            password = text;
                          },
                          validator: (text) {
                            if (text!.trim().length == 0) {
                              return "Invalid password";
                            }
                            return null;
                          },
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 20))),
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                responsive.dp(responsive.isTablet ? 1.2 : 1.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: responsive.dp(5),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 15))),
                      onPressed: _submit,
                      child: Text('sing in')),
                ),
                SizedBox(
                  height: responsive.dp(2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to firendly Desi?',
                      style: TextStyle(fontSize: responsive.dp(1.5)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text(
                        'sing up',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: responsive.dp(1.5),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: responsive.dp(10),
                )
              ],
            ),
          ),
        ));
  }
}

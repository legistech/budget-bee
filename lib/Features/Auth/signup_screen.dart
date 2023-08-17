import 'package:budgetbee/commons/errormessage/errormesage.dart';
import 'package:budgetbee/commons/widgets/elevatedcustom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../commons/widgets/authtextfield.dart';
import '../../commons/widgets/customtextbutton.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();

    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                'assets/logowhite.png',
                width: 300,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: const Row(
                children: [
                  Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  AuthTextField(
                    keyboardtype: TextInputType.emailAddress,
                    controller: _emailcontroller,
                    textlabel: 'Email',
                    obsecure: false,
                    validatortext: 'enter email',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AuthTextField(
                    keyboardtype: TextInputType.text,
                    controller: _passwordcontroller,
                    textlabel: 'Password',
                    obsecure: true,
                    validatortext: 'enter password',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(
                      ButtonText: 'Already have an account?',
                      OnPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignupScreen()),
                        );
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundButton(
                title: 'SIGN UP',
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    _auth
                        .createUserWithEmailAndPassword(
                            email: _emailcontroller.text.toString(),
                            password: _passwordcontroller.text.toString())
                        .then((value) {})
                        .onError(
                      (error, stackTrace) {
                        errormessage().toastMessage(
                          error.toString(),
                        );
                      },
                    );
                  }
                }),
            const SizedBox(
              height: 80,
            ),
            const Text('Or Sign Up with social account'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.google))),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.facebook)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

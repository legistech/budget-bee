import 'package:budgetbee/Features/Auth/Signup_screen.dart';
import 'package:budgetbee/commons/widgets/authtextfield.dart';
import 'package:budgetbee/commons/widgets/elevatedcustom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../commons/errormessage/errormesage.dart';
import '../Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //bool isChecked = false;
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  final _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();

    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  void login() {
    _auth
        .signInWithEmailAndPassword(
            email: emailcontroller.text.toString(),
            password: passwordcontroller.text.toString())
        .then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen()),
      );
    }).onError(
      (error, stackTrace) {
        errormessage().toastMessage(
          error.toString(),
        );
      },
    );
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
                    'Welcome back!',
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
                  AuthTextField(
                    keyboardtype: TextInputType.emailAddress,
                    controller: emailcontroller,
                    textlabel: 'Email',
                    obsecure: false,
                    validatortext: 'enter email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    controller: passwordcontroller,
                    keyboardtype: TextInputType.text,
                    textlabel: 'Password',
                    obsecure: true,
                    validatortext: 'enter password',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text('Forgot password?')),
                  // const SizedBox(
                  //   width: 100,
                  // ),
                  // SizedBox(
                  //   width: 50,
                  // ),
                  // const Text(
                  //   'remember me',
                  //   //textAlign: TextAlign.end,
                  // ),
                  // Checkbox(
                  //   value: isChecked,
                  //   onChanged: (bool? newValue) {
                  //     setState(() {
                  //       isChecked = newValue!;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RoundButton(
                title: 'SIGN IN',
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    login();
                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (BuildContext context) => const HomeScreen()),
                  // );
                }),
            const SizedBox(
              height: 50,
            ),
            const Text('Or Sign In with social account'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SignupScreen()),
                      );
                    },
                    child: const Text('Sign up')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

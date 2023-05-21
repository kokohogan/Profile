import 'package:flutter/material.dart';
import 'package:flutter_codes/authentication/crud_repo.dart';
import 'package:flutter_codes/authentication/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:flutter_codes/authentication/user_model.dart';
import 'package:flutter_codes/beta/signup_page.dart';
import 'package:flutter_codes/controllers/login_controller.dart';
import 'package:flutter_codes/home_home.dart';
import 'package:flutter_codes/providers/auth_provider.dart';
import 'package:flutter_codes/utils/reset_option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controllers/signup_controller.dart';

class FormWidget extends ConsumerWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //change provider to login
    ref.listen(lcdProvider, (previous, next) {
      if (next is HomeHome) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error, unable to login"),
        ));
      }
    });

    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    //final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                //key: formKey,
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        label: Text('E-mail'),
                        hintText: 'Input your Account Email Address',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text('Password'),
                        hintText: 'Input your Account Password',
                        suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp)),
                        border: OutlineInputBorder()),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              builder: (context) => Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Choose Option:',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge),
                                        Text(
                                            'Select one of the options below to reset your password',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall),
                                        const SizedBox(
                                          height: 10.0,
                                        ), // Phone and E-mail Verification code starts here
                                        const ResetEmail(),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        const ResetPhone(),
                                      ],
                                    ),
                                  ));
                        },
                        child: const Text('Forgot Password?')),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          ref
                              .read(lcdProvider
                                  .notifier) //change providers to login
                              .signin(email.text.trim(), password.text.trim());
                          // if (formKey.currentState!.validate()) {
                          //   all.book(all.email.text.trim(),
                          //       all.password.text.trim());
                          //   //print(all.email);
                          //   print(all.password);
                          // }
                        },
                        child: const Text('Login')),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('OR'),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Image(
                              image: AssetImage("assets/images/goog.png"),
                              width: 20.0,
                            ),
                            label: const Text('Sign-in with Google')),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen()));
                          },
                          child: Text.rich(TextSpan(
                              text: "Don't Have an Account? ",
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: const [
                                TextSpan(
                                    text: 'Sign-Up',
                                    style: TextStyle(color: Colors.green))
                              ])))
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

//Start Sign-up form here. !!!!!!!!!1

class SignupForm extends ConsumerWidget {
  const SignupForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController mobileNo = TextEditingController();
    TextEditingController fullname = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Form(
              key: formKey,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: fullname,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_2_outlined),
                          label: Text('Name'),
                          hintText: 'Input your Full Name',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email_sharp),
                          label: Text('E-mail'),
                          hintText: 'Input your Account Email Address',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      // controller: mobileno, //Let's review this
                      keyboardType: TextInputType.phone,
                      controller: mobileNo,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.numbers),
                          label: Text('Mobile No.'),
                          hintText: 'Input your Mobile Number',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: password,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          label: Text('Password'),
                          hintText: 'Input your Account Password',
                          suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp)),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () async {
                            // ref
                            //     .read(scdProvider.notifier)
                            //     .otp(mobileNo.text.trim());
                            ref.read(scdProvider.notifier).signup(
                                email.text.trim(), password.text.trim());

                            //Start!
                            if (formKey.currentState!.validate()) {
                              var response = await FirebaseCrud.addUzar(
                                  fullName: fullname.text,
                                  mobileNo: mobileNo.text,
                                  password: password.text,
                                  email: email.text);
                              if (response.code != 200) {
                                SnackBar(
                                    content: Text(response.message.toString()));
                              } else {
                                SnackBar(
                                    content: Text(response.message.toString()));
                              }
                            }
                            //Stop!
                          },
                          child: const Text('Sign-up')),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('OR'),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage("assets/images/goog.png"),
                                width: 20.0,
                              ),
                              label: const Text('Sign-up with Google')),
                        ),
                        TextButton(
                            onPressed: () => context.go('/LoginPage'),
                            child: Text.rich(TextSpan(
                                text: "Already Have an Account? ",
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const [
                                  TextSpan(
                                      text: 'LOGIN',
                                      style: TextStyle(color: Colors.green))
                                ])))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_codes/dashboard/dashboard.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../theme/input_deco_theme.dart';

class ProfileUpdate extends StatelessWidget {
  const ProfileUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
          },
        ),
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: 120.0,
                  height: 120.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage('assets/BAT.png'))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.green),
                    child: const Icon(
                      LineAwesomeIcons.camera,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 50.0,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        label: Text('Username'),
                        hintText: 'Input your Username',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        label: Text('Email'),
                        hintText: 'Input your Email Address',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text('Password'),
                        hintText: 'Input your Password',
                        suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp)),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.numbers),
                        label: Text('Mobile Number'),
                        hintText: 'Input your Mobile Number',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text.rich(
                        TextSpan(
                            text: 'Joined 31st January',
                            style: TextStyle(fontSize: 12.0),
                            children: [
                              TextSpan(
                                  text: '2022',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0))
                            ]),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.redAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.red,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: const Text('Delete Account'))
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

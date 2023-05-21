import 'package:flutter/material.dart';
import 'package:flutter_codes/dashboard/profile_update.dart';
import 'package:flutter_codes/home_home.dart';
import 'package:flutter_codes/providers/auth_provider.dart';
import 'package:flutter_codes/theme/button_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../widgets/profile_menu.dart';

void main() => runApp(AppBar());

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _auth = ref.read(authRepoProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeHome()));
          },
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.moon))
        ],
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
                      LineAwesomeIcons.alternate_pencil,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'GoCome',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'admin@gocome.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 200.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileUpdate()));
                  },
                  child: Text(
                    'Edit Profile',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),

              const SizedBox(
                height: 30.0,
              ),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),

              //Menu begins here:
              MenuMenu(
                title: 'Settings',
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              MenuMenu(
                  title: 'Billing Details',
                  icon: LineAwesomeIcons.wallet,
                  onPress: () {}),
              MenuMenu(
                  title: 'User Management',
                  icon: LineAwesomeIcons.user_check,
                  onPress: () {}),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10.0,
              ),
              MenuMenu(
                  title: 'Information',
                  icon: LineAwesomeIcons.info,
                  onPress: () {}),
              MenuMenu(
                title: 'Signout',
                icon: LineAwesomeIcons.alternate_sign_out,
                onPress: _auth.signOut,
                textColor: Colors.red,
                andIcon: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

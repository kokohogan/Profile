import 'package:flutter/material.dart';
import 'package:flutter_codes/utils/forgot_password_mail/phone_ver.dart';

import '../theme/button_theme.dart';
import 'forgot_password_mail/email_ver.dart';

class ResetOpp extends StatelessWidget {
  const ResetOpp({super.key});

  @override
  Widget build(BuildContext context) {
    var children2 = [const ResetEmail(), const ResetPhone()];
    return SafeArea(
        child: Column(
      children: children2,
    ));
  }
}

class ResetPhone extends StatelessWidget {
  const ResetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const PhoneVer()));
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: Gborder.darkBoxDeco,
        child: Row(
          children: [
            const Icon(
              Icons.call,
              size: 60.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mobile No.',
                    style: Theme.of(context).textTheme.titleMedium),
                Text('Reset via Mobile Number verification',
                    style: Theme.of(context).textTheme.bodySmall)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ResetEmail extends StatelessWidget {
  const ResetEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const EmailVer()));
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: Gborder.darkBoxDeco,
        child: Row(
          children: [
            const Icon(
              Icons.mail_outline,
              size: 60.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email', style: Theme.of(context).textTheme.titleMedium),
                Text('Reset via E-mail verification',
                    style: Theme.of(context).textTheme.bodySmall)
              ],
            )
          ],
        ),
      ),
    );
  }
}

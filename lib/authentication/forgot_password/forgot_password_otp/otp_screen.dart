import 'package:flutter/material.dart';
import 'package:flutter_codes/utils/auth_repo.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  var otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CO\nDE',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 70.0,
              ),
            ),
            Text(
              'VERIFICATION',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Enter the Six Digit code sent to poop@gmail.com',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                otp = code;
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    AuthRepo(otp).verifyOTP(otp);
                  },
                  child: const Text('NEXT'),
                ))
          ],
        ),
      ),
    );
  }
}

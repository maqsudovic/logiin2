import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logiin2/last.dart';
import 'package:lottie/lottie.dart';

class Code_send extends StatefulWidget {
  const Code_send({super.key});

  @override
  State<Code_send> createState() => _Code_sendState();
}

class _Code_sendState extends State<Code_send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm your phone number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Gap(10),
            Text(
              "Check your phone for the verification code. ",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Gap(20),
            Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.grey,
                ),
                Gap(7),
                Text(
                  'Helper text',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Gap(400),
            InkWell(
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Lottie.asset('assets/animation.json',
                      width: 80, height: 80),
                );
              },
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LastPage()));
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF4955F6),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Terms Of Use',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 17,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' &',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

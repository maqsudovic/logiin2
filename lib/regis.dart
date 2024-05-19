import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logiin2/login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Map<String, dynamic>? user;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? emailError;
  String? passwordError;
  String userError = "";

  void login() {
    validateEmail();
    validatePassword();

    if (emailError == null && passwordError == null) {
      if (user == null) {
        userError = "Foydalanuvchi topilmadi,";
        setState(() {});
      } else {
        if (user!['email'] == emailController.text &&
            user!['password'] == passwordController.text) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) {
                return const Login();
              },
            ),
          );
        } else {
          userError = "Email yoki parol xato";
          setState(() {});
        }
      }
    }
  }

  void validateEmail() {
    String email = emailController.text;

    setState(() {
      if (email.isEmpty) {
        emailError = "Please enter a valid email address";
      } else if (!email.contains("@") ||
          !email.substring(email.indexOf("@")).contains(".")) {
        emailError = "Please enter a valid email address";
      } else {
        emailError = null;
      }
    });
  }

  void validatePassword() {
    String password = passwordController.text;

    setState(() {
      if (password.isEmpty) {
        passwordError = "Please enter a password";
      } else {
        passwordError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Gap(10),
                Text(
                  'Create your account for your schedule ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Gap(10),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Your name',
                      prefixIcon: Icon(CupertinoIcons.person),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Your email',
                        prefixIcon: Icon(CupertinoIcons.mail),
                        errorText: emailError),
                    onChanged: (value) {
                      validateEmail();
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: Icon(CupertinoIcons.eye_slash),
                        prefixIcon: Icon(CupertinoIcons.lock),
                        errorText: passwordError),
                    obscureText: true,
                    obscuringCharacter: '*',
                    onChanged: (value) {
                      validatePassword();
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: Icon(CupertinoIcons.eye_slash),
                        prefixIcon: Icon(CupertinoIcons.lock),
                        errorText: passwordError),
                    obscureText: true,
                    obscuringCharacter: '*',
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don`t have an account?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: Text(
                            'Sign in here',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Gap(80),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Container(
                          width: 310,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF4955F6),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Continue',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
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
        ),
      ),
    );
  }
}

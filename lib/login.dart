import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logiin2/congruats.dart';
import 'package:logiin2/regis.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                const Text(
                  'Let`s login to Connect your email',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'name@example.com',
                      prefixIcon: Icon(CupertinoIcons.mail),
                      errorText: emailError,
                    ),
                    onChanged: (value) {
                      validateEmail();
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: Icon(CupertinoIcons.eye_slash),
                      prefixIcon: Icon(CupertinoIcons.lock),
                      errorText: passwordError,
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                    onChanged: (value) {
                      validatePassword();
                    },
                  ),
                ),
                const Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 109, 107, 107),
                      fontWeight: FontWeight.bold),
                ),
                const Gap(25),
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
                        Gap(5),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Registration()));
                          },
                          child: Text(
                            'Sign up here',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    const Gap(180),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Code_send()));
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
                              'Log in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F5F5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/apple.png',
                                width: 27,
                                height: 27,
                              ),
                              const Gap(5),
                              const Text(
                                'Apple',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F5F5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png',
                                width: 27,
                                height: 27,
                              ),
                              const Gap(5),
                              const Text(
                                'Google',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Gap(5),
                    Column(
                      children: [
                        const Text(
                          'By continuing you agree to Loanas’s',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
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
                                  fontSize: 14,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' &',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Privacy Policy',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

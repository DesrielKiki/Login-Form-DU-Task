import 'package:flutter/material.dart';
import 'package:tugas_loginform/view/component/auth_textfield.dart';
import 'package:tugas_loginform/view/screen/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Welcome. Enter your email and Password to sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48),
                  AuthTextField(
                      label: "Full Name",
                      hintText: "Enter your full name",
                      icon: Icons.person),
                  const SizedBox(height: 16),
                  AuthTextField(
                      label: "Email",
                      hintText: "user@example.com",
                      icon: Icons.email),
                  const SizedBox(
                    height: 16,
                  ),
                  AuthTextField(
                      label: "Password",
                      hintText: "Your Password",
                      icon: Icons.lock,
                      obscureText: true),
                  const SizedBox(
                    height: 32,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have Account? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

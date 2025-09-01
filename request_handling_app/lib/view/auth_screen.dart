import 'package:flutter/material.dart';
import 'package:request_handling_app/view/end_user/end_user_home_screen.dart';
import 'package:request_handling_app/view/receiver/receiver_home_screen.dart';
import 'package:request_handling_app/view/widgets/auth_text_field.dart';
import 'package:request_handling_app/view/widgets/choose_user_button.dart';

enum UserType { END_USER, RECEIVER }

class EndUserOrReceiverScreen extends StatelessWidget {
  const EndUserOrReceiverScreen({super.key});

  void navigateToAuthScreen(BuildContext context, UserType user) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => _AuthScreen(userType: user)),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChooseUserButton(
              text: "End User",
              bgColor: Colors.blueAccent,
              onTap: () {
                navigateToAuthScreen(context, UserType.END_USER);
              },
            ),
            ChooseUserButton(
              text: "Receiver",
              bgColor: Colors.brown,
              onTap: () {
                navigateToAuthScreen(context, UserType.RECEIVER);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthScreen extends StatefulWidget {
  final UserType userType;

  const _AuthScreen({super.key, required this.userType});

  @override
  State<_AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<_AuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Authentication"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            spacing: 18,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthTextField(
                heading: "Email",
                hintText: "example@domain.com",
                textControlller: emailController,
              ),
              AuthTextField(
                heading: "Password",
                hintText: "Your password here",
                textControlller: passwordController,
                isPassword: true,
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  if (widget.userType == UserType.END_USER) {
                    // End user login
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => EndUserHomeScreen(),
                      ),
                      (route) => false,
                    );
                  } else if (widget.userType == UserType.RECEIVER) {
                    // Receiver login
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => ReceiverHomeScreen(),
                      ),
                      (route) => false,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.indigo,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

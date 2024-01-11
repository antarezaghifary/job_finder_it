import 'package:flutter/material.dart';
import 'package:job_finder/constant.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Back",
                  style:
                      headTextStyle.copyWith(fontSize: 30, fontWeight: bold)),
              SizedBox(height: 11),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  textAlign: TextAlign.center,
                  style: bodyTextStyle.copyWith(fontSize: 12)),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style:
                        headTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 17),
                        hintText: "Your Email",
                        hintStyle: bodyTextStyle.copyWith(
                            fontSize: 12, color: textColor.withOpacity(0.6)),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Password",
                    style:
                        headTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: buttonSecondariColor,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Remember me",
                        style: textRememberColorStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                          color: textRememberColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Forgot Password?",
                    style: bodyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                      color: textColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: bodyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                        color: whiteColor,
                      ),
                    )),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: buttonSecondariColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Sign in with Google",
                          style: buttonTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                            color: buttonColor,
                          ),
                        ),
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have an account yet?",
                      style: bodyTextStyle.copyWith(fontSize: 12)),
                  SizedBox(width: 5),
                  Text("Sign Up", style: signTextStyle.copyWith(fontSize: 12))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

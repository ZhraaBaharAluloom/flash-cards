import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:go_router/go_router.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);
  final TextStyle cardMainText = const TextStyle(
      color: Color.fromARGB(225, 255, 255, 255),
      fontSize: 24,
      fontWeight: FontWeight.bold);
  final TextStyle cardText = const TextStyle(
    color: Color.fromARGB(176, 178, 161, 248),
    fontSize: 18,
  );
  final TextStyle inputStyle = const TextStyle(
    color: Color.fromARGB(238, 228, 225, 248),
    fontSize: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(34, 196, 196, 196),
            Color.fromARGB(72, 107, 27, 255)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(252, 15, 103, 224)),
                    ),
                    onPressed: () {
                      context.push("/collections");
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color.fromARGB(252, 15, 103, 224),
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "Líwf",
                    style: cardMainText,
                  )),
              Container(
                padding: const EdgeInsets.only(left: 30, bottom: 40),
                child: Text(
                  "Welcome back!",
                  style: cardText,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 7),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: "Username",
                        hintText: "Username",
                        fillColor: const Color.fromARGB(238, 228, 225, 248),
                        hintStyle: inputStyle,
                        labelStyle: inputStyle,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        contentPadding: const EdgeInsets.all(4)),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 7),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Password",
                        fillColor: const Color.fromARGB(238, 228, 225, 248),
                        hintStyle: inputStyle,
                        labelText: "Password",
                        labelStyle: inputStyle,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        contentPadding: const EdgeInsets.all(4)),
                  )),
              Container(
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sign in"),
                  )),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Text(
                  "Or",
                  textAlign: TextAlign.center,
                  style: cardText,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 7),
                  child: SignInButton(
                    Buttons.Google,
                    text: "Continue with Google",
                    onPressed: () {},
                    padding: const EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}

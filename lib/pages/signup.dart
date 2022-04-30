import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);
  final TextStyle cardMainText = const TextStyle(
      fontFamily: "robot",
      color: Color.fromARGB(225, 255, 255, 255),
      fontSize: 24,
      fontWeight: FontWeight.bold);
  final TextStyle cardText = const TextStyle(
    fontFamily: "robot",
    color: Color.fromARGB(176, 178, 161, 248),
    fontSize: 18,
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
        body: Center(
            child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                        fontFamily: "robot",
                        color: Color.fromARGB(252, 15, 103, 224),
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
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
                  "Welcome to Líwf community",
                  style: cardText,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 15, bottom: 40),
                child: Text(
                  "You are in the right place to become a better developer",
                  style: cardText,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 15, bottom: 40),
                child: const Text(
                  "We use spaced repetition to accelerate your learning.",
                  style: TextStyle(
                    fontFamily: "robot",
                    color: Color.fromARGB(238, 228, 225, 248),
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                        hintText: "Username",
                        fillColor: const Color.fromARGB(238, 228, 225, 248),
                        hintStyle: const TextStyle(
                          fontFamily: "robot",
                          color: Color.fromARGB(238, 228, 225, 248),
                          fontSize: 15,
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        contentPadding: EdgeInsets.all(4)),
                  )),
              Container(
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                        hintText: "E-mail",
                        fillColor: const Color.fromARGB(238, 228, 225, 248),
                        hintStyle: const TextStyle(
                          fontFamily: "robot",
                          color: Color.fromARGB(238, 228, 225, 248),
                          fontSize: 15,
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        contentPadding: const EdgeInsets.all(4)),
                  )),
              Container(
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                        fillColor: Color.fromARGB(238, 228, 225, 248),
                        hintStyle: const TextStyle(
                          fontFamily: "robot",
                          color: Color.fromARGB(238, 228, 225, 248),
                          fontSize: 15,
                        ),
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
                    child: const Text("Create Account"),
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
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  final TextStyle mainText = const TextStyle(
      fontFamily: "robot",
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold);
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Color.fromARGB(34, 196, 196, 196),
            Color.fromARGB(155, 50, 121, 197),
            Color.fromARGB(117, 152, 27, 255)
          ])),
      child: Scaffold(
        backgroundColor: const Color(0x00FA1BFF),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Text(
                  "Líwf",
                  style: TextStyle(
                      fontFamily: "robot",
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 15),
                  child: Icon(
                    Icons.lightbulb_outline,
                    color: Color.fromARGB(255, 251, 233, 74),
                    size: 50,
                  ),
                ),
              ]),
              const Text(
                "A place to learn",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "robot",
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.push("/signup");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                  ),
                  child: Text(
                    "Create an account",
                    style: mainText,
                  )),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  context.push("/signin");
                },
                child: Text(
                  "Or Login",
                  style: mainText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyCollections extends StatelessWidget {
  const MyCollections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/folder.png",
            width: 100,
          ),
          const Text("No Collections created yet",
              style: TextStyle(
                fontFamily: "robot",
                color: Color.fromARGB(249, 213, 229, 252),
                fontSize: 15,
              )),
          const SizedBox(
            height: 15,
          ),
          const Text(
              "Create your first collection based on any subject you want to improve your fixation",
              style: TextStyle(
                fontFamily: "robot",
                color: Color.fromARGB(249, 213, 229, 252),
                fontSize: 15,
              )),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                context.push("/add_collection");
              },
              child: const Text("Create a collection"))
        ],
      ),
    ));
  }
}

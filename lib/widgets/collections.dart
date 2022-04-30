import 'package:flash_cards/widgets/my_collections.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Collections extends StatelessWidget {
  Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(34, 196, 196, 196),
              Color.fromARGB(72, 107, 27, 255)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // do something
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  context.push("/add_collection");
                },
              )
            ],
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 155, 129, 234),
              labelColor: Color.fromARGB(255, 155, 129, 234),
              unselectedLabelColor: Color.fromARGB(255, 206, 202, 202),
              labelStyle:
                  TextStyle(fontFamily: "robot", fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "Explore",
                ),
                Tab(
                  text: "My Collections",
                ),
              ],
            ),
            title: const Center(
                child: Text(
              "Collections",
              style: TextStyle(
                fontFamily: "robot",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )),
            backgroundColor: Colors.transparent,
            shadowColor: const Color.fromARGB(255, 64, 63, 63),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.transparent,
                      // shadowColor: const Color.fromARGB(117, 65, 124, 192),
                      // elevation: 80,
                      margin: const EdgeInsets.all(10),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(229, 149, 175, 236))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListTile(
                            title: Text(
                              "Flutter $index",
                              style: const TextStyle(
                                  fontFamily: "robot",
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
                                  style: TextStyle(
                                    fontFamily: "robot",
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        primary: const Color.fromARGB(
                                            255, 23, 27, 27),
                                        shadowColor:
                                            Color.fromARGB(255, 185, 168, 233),
                                        elevation: 4,
                                      ),
                                      onPressed: () {
                                        context.go("/collections");
                                      },
                                      child: Text(
                                        "Cross-platform ",
                                        style: const TextStyle(
                                          fontFamily: "robot",
                                          color: Color.fromARGB(
                                              249, 243, 245, 248),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 23, 27, 27),
                                        shadowColor:
                                            Color.fromARGB(255, 169, 197, 249),
                                        elevation: 4,
                                      ),
                                      onPressed: () {
                                        context.go("/collections");
                                      },
                                      child: Text(
                                        "Android ",
                                        style: const TextStyle(
                                          fontFamily: "robot",
                                          color: Color.fromARGB(
                                              249, 243, 245, 248),
                                          fontSize: 12,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                    );
                  }),
              // SECOND TAB
              MyCollections(),
            ],
          ),
        ),
      ),
    );
  }
}

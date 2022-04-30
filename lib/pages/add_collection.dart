import 'package:flash_cards/pages/add_cards.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddCollection extends StatefulWidget {
  AddCollection({Key? key}) : super(key: key);

  @override
  State<AddCollection> createState() => _AddCollectionState();
}

class _AddCollectionState extends State<AddCollection>
    with TickerProviderStateMixin {
  final TextEditingController cardName = TextEditingController(text: "");

  final TextEditingController tags = TextEditingController(text: "");

  final TextEditingController description = TextEditingController(text: "");
  late final TextStyle textInputStyle = const TextStyle(
      color: Color.fromARGB(238, 228, 225, 248),
      fontSize: 16,
      fontWeight: FontWeight.bold);
  int _tabIndex = 0;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  void _toggleTab() {
    _tabIndex = _tabController!.index + 1;
    _tabController!.animateTo(_tabIndex);
  }

  // ignore: prefer_const_constructors
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: _tabIndex,
      child: Container(
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
          appBar: AppBar(
            title: const Text("Add a new collection"),
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                context.pop();
              },
            ),
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Color.fromARGB(255, 155, 129, 234),
              labelColor: Color.fromARGB(255, 155, 129, 234),
              unselectedLabelColor: Color.fromARGB(255, 206, 202, 202),
              labelStyle:
                  TextStyle(fontFamily: "robot", fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "Details",
                ),
                Tab(
                  text: "Cards",
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // INPUT FIELD
                    _buildTextField(
                        labelText: "Collection Name",
                        textInputStyle: textInputStyle),
                    _buildTextField(
                        labelText: "Tags",
                        textInputStyle: textInputStyle,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          onPressed: () {
                            // context.pop();
                          },
                        )),
                    _buildTextField(
                        labelText: "Description",
                        textInputStyle: textInputStyle),

                    Expanded(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child:
                          // ignore: deprecated_member_use
                          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40), // NEW
                        ),
                        onPressed: _toggleTab,
                        child: const Text(
                          'Next',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              // SECOND TAB
              AddCards()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField(
    {String? labelText, TextStyle? textInputStyle, IconButton? suffixIcon}) {
  // new
  return Padding(
    padding: const EdgeInsets.all(5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: const Color.fromARGB(255, 100, 95, 121),
        filled: true,
        border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 100, 95, 121))),
        labelText: labelText,
        labelStyle: textInputStyle,
      ),
      style: textInputStyle,
    ),
  );
}

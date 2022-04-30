import 'package:flutter/material.dart';

class AddCards extends StatefulWidget {
  AddCards({Key? key}) : super(key: key);

  @override
  State<AddCards> createState() => _AddCardsState();
}

class _AddCardsState extends State<AddCards> {
  final TextEditingController question = TextEditingController(text: "");

  final TextEditingController answer = TextEditingController(text: "");

  late final TextStyle textInputStyle = const TextStyle(
      color: Color.fromARGB(238, 228, 225, 248),
      fontSize: 16,
      fontWeight: FontWeight.bold);
  int _index = 0;

  final TextStyle labelStyle = const TextStyle(
      color: Color.fromARGB(174, 151, 177, 146),
      fontSize: 16,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: 5,
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: SingleChildScrollView(
                  child: Card(
                    color: Colors.transparent,
                    margin: const EdgeInsets.all(10),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(229, 149, 175, 236),
                            width: 2)),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "## Question $_index",
                            style: labelStyle,
                          ),
                          _buildTextField(
                            labelText: "Add the question",
                            textInputStyle: textInputStyle,
                            controller: question,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "## Answer $_index",
                            style: labelStyle,
                          ),
                          _buildTextField(
                            labelText: "Add the answer",
                            textInputStyle: textInputStyle,
                            controller: answer,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // ignore: deprecated_member_use
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(35), // NEW
            ),
            onPressed: () {},
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildTextField({
  String? labelText,
  TextStyle? textInputStyle,
  TextEditingController? controller,
}) {
  // new
  return Padding(
    padding: const EdgeInsets.all(5),
    child: TextField(
      maxLines: 5,
      keyboardType: TextInputType.multiline,
      controller: controller,
      decoration: InputDecoration(
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

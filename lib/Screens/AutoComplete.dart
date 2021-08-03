import 'package:flutter/material.dart';

class AutoCompleteDemo extends StatefulWidget {
  @override
  _AutoCompleteDemoState createState() => _AutoCompleteDemoState();
}

class _AutoCompleteDemoState extends State<AutoCompleteDemo> {
  List<String> d = ["a", "b", "v", "c", "d", "e", "f", "g", "h", "i", "j"];
  bool isLoading = false;
  List<String> autocomplete;
  Future _fetchData() async {
    setState(() {
      isLoading = true;
    });
    Future.delayed(Duration(seconds: 1000));
    setState(() {
      isLoading = false;
      autocomplete = d;
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Material(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Autocomplete(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text.isNotEmpty) {
                      return const Iterable<String>.empty();
                    } else {
                      return autocomplete.map((word) => word
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase()));
                    }
                  }),
                ],
              ),
            ),
          );
  }
}

import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search key...',
          hintStyle: TextStyle(color: Colors.blue.shade400,),
          enabledBorder: customBorder(),
          focusedBorder: customBorder1(),
          suffixIcon: const Icon(Icons.search, color: Colors.blue,)
        ),
      ),
    );
  }
  OutlineInputBorder customBorder1() => OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(10.0)
  );
  OutlineInputBorder customBorder() => OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(100.0)
  );
}
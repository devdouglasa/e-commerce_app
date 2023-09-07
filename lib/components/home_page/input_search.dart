import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        alignment: Alignment.topCenter,
        width: 340,
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
                top: 5, right: 10, left: 20, bottom: 5),
            filled: true,
            focusColor: Colors.white38,
            hoverColor: Colors.white38,
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.black26),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                print('Clicou!');
              },
              child: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}

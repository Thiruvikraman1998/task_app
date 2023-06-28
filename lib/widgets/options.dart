import 'package:flutter/material.dart';
import 'package:taskapp/utils/optionsList.dart';
import 'package:taskapp/widgets/options_tile.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: optionsList.length,
        itemBuilder: (context, index) {
          return OptionsTile(options: optionsList[index]);
        },
      ),
    );
  }
}

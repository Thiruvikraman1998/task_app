import 'dart:math';

import 'package:flutter/material.dart';

class OptionsTile extends StatelessWidget {
  final Map<String, dynamic> options;
  const OptionsTile({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
        child: options['icon'],
      ),
      title: Text(
        options['text'],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

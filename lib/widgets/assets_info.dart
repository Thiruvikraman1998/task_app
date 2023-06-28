import 'package:flutter/material.dart';

class AssetsInfo extends StatelessWidget {
  const AssetsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> infoTitles = [
      'Asset ID',
      'Asset Name',
      'IP Address',
      'Device Type',
      'Make / Model',
      'OS',
      'Serial Number',
      'QR / Bar Code'
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: infoTitles
                .map(
                  (e) => SizedBox(height: 30, child: Text(e)),
                )
                .toList(),
          ),
          const SizedBox(width: 100),
          Container(
            height: 250,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('ASSET00590'),
                Text("Reception-desktop"),
                Text('192.168.51.165'),
                Row(
                  children: [Icon(Icons.laptop_chromebook), Text('Desktop')],
                ),
                Text("Dell - Vostro 3400"),
                Row(
                  children: [Icon(Icons.window), Text("Windows 11 Pro")],
                ),
                Text('FZSMYM3'),
                Icon(Icons.qr_code_2_sharp)
              ],
            ),
          )
        ],
      ),
    );
  }
}

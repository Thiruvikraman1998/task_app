import 'package:flutter/material.dart';
import 'package:taskapp/widgets/assets_info.dart';

import '../widgets/location.dart';
import '../widgets/options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text('SHILPA-EIMS-131'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('AD'),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(Icons.laptop_chromebook),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('#ASSET-99 SHILPA'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Row(
                              children: [
                                Text('#LAPTOP'),
                                VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 2,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.network_wifi),
                                    Text('192.168.50.1')
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                //padding: const EdgeInsets.all(5),
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.purple[100],
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(child: Text('In use')),
                              ),
                              CircleAvatar(
                                maxRadius: 15,
                                backgroundColor: Colors.green[100],
                                child: const Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // values container

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Purchased Value'),
                    Text(
                      'RS.60000.00',
                      style: TextStyle(fontSize: 15, color: Colors.green[400]),
                    )
                  ],
                ),
                // vertical Divider follows

                Column(
                  children: [
                    const Text('Current value'),
                    Text(
                      'RS.20000.00',
                      style: TextStyle(fontSize: 15, color: Colors.red[400]),
                    )
                  ],
                )
              ],
            ),
          ),
          AssetsInfo(),
          Options(),
          LocationContainer()
        ],
      ),
    );
  }
}

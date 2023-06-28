import 'package:flutter/material.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.blue,
                height: 120,
                width: 90,
                child: const Center(child: Text("Map")),
              )
            ],
          ),
          const SizedBox(width: 5),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Bangalore HQ:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  '3rd floor, 15th cross Stree, JP Nagar \n4th Phase, Dollar Layout, Phase 4 JP naagr',
                  maxLines: 3,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue[200])),
                    child: const Text("Maps"))
              ])
        ],
      ),
    );
  }
}

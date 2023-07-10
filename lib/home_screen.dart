import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showBtmSheet(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    showModalBottomSheet(
      //also keep in mind to set it to true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        //use this padding to move the bottomSheet along with the keyboard
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 3,
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text('sample text'),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: () {}, icon: Icon(Icons.add), label: Text('add'))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showBtmSheet(context);
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber)),
            child: const Text(
              'Open bottom sheet',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }
}

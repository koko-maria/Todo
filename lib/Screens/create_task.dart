import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SafeArea(
          child: Column(
        children: [
          const ListTile(
            title: Text("Today"),
            subtitle: Text("Best platform for creating to-do lists"),
            trailing: Icon(Icons.settings),
          ), Card(
            margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
            child: Column(
              children: [ 
                Container(
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.amber),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          )),const SizedBox(width: 8,), 
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                                height: 7,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                )), const SizedBox(height: 8,),
                            Container(
                                height: 5,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                )),const SizedBox(height: 8,),
                            Container(
                                height: 6,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

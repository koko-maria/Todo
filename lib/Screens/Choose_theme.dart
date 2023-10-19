import 'package:flutter/material.dart';
import 'package:todoy/data/colorTheme.dart';

class ColorTheme extends StatelessWidget {
  const ColorTheme({super.key, required this.colorTheme});
  final List<ColorThemeModel> colorTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: colorTheme.length,
        itemBuilder: (context, index) => InkWell(onTap: () {},
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 17),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(color: colorTheme[index].colors),
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
        ),
      ),
    );
  }
}

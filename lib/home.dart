import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          //in case the horizontal view I used SingleChildScrollView to scroll the whole screen
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 3; i++)
                  Column(
                    children: [
                      Text(
                        "Set ${i}",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .34 - 70,
                          width: 100,
                          child: ListView(
                            children: [
                              for (int j = 0; j < 100; j++)
                                Center(
                                  child: Text("{${i}, ${j}}"),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'main.dart';

class MyState extends StatefulWidget {
  @override
  _MyStateState createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: engineers.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 1.0,
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        if (aBool[index]) {
                          aBool[index] = false;
                        } else {
                          aBool[index] = true;
                        }
                      });
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      child: Text(
                        engineers[index].abbreviation,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    title: Text(
                      engineers[index].name,
                    ),
                    subtitle: Text(engineers[index].title),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  ),
                  Visibility(
                    visible: aBool[index],
                    child: Column(
                      children: [
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[400],
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              onPressed: () {},
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF0D47A1),
                                      Color(0xFF1976D2),
                                      Color(0xFF42A5F5),
                                    ],
                                  ),
                                ),
                                padding: const EdgeInsets.all(10.0),
                                child: const Text('Button 1',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF0D47A1),
                                      Color(0xFF1976D2),
                                      Color(0xFF42A5F5),
                                    ],
                                  ),
                                ),
                                padding: const EdgeInsets.all(10.0),
                                child: const Text('Button 2',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

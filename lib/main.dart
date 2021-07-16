import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenPage createState() => HomeScreenPage();
}

class HomeScreenPage extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Counter App'),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    backgroundColor: Colors.green,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 16),
                    ),
                    foregroundColor: Colors.white,
                    onPressed: () => {
                          setState(() {
                            counter++;
                          })
                        }),
                Spacer(),
                FloatingActionButton(
                    backgroundColor: Colors.redAccent,
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 16),
                    ),
                    foregroundColor: Colors.white,
                    onPressed: () => {
                          setState(() {
                            if (counter > 0) {
                              counter--;
                            }
                          })
                        }),
              ],
            )),
        body: Center(
          child: Text(
            '$counter',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ));
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
}

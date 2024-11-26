import 'package:flutter/material.dart';

class MyStatelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 66, 126, 255),
          title: Text(
            'Stateless Counter App',
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255)
            ),)),
        body: CounterWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Counter Value: 0'),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {

            },
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidgetApp extends StatefulWidget {
  @override
  _MyStatefulWidgetAppState createState() => _MyStatefulWidgetAppState();
}

class _MyStatefulWidgetAppState extends State<MyStatefulWidgetApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 164, 66, 255),
          title: Text('Stateful Counter App',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255)
          ),)
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Counter Value: $counter'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: incrementCounter,
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() {
  // runApp(MyStatelessApp()); 
  runApp(MyStatefulWidgetApp()); 
}

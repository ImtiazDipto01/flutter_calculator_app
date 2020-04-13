import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: bodyWidget(),
    );
  }

  Widget buildButton() {
    return Expanded(
      child: OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: Text("1"),
        color: Colors.blueAccent,
        textColor: Colors.black,
        onPressed: () => {},
      ),
    );
  }

  Widget bodyWidget() {
    return Container(
      child: Column(
        children: <Widget>[
          Text("0"),
          Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(
                children: [
                  buildButton(),
                  buildButton(),
                  buildButton(),
                  buildButton()
                ],
              ),
              Row(
                children: [
                  buildButton(),
                  buildButton(),
                  buildButton(),
                  buildButton()
                ],
              ),
              Row(
                children: [
                  buildButton(),
                  buildButton(),
                  buildButton(),
                  buildButton()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

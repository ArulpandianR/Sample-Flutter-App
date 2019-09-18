import 'package:flutter/material.dart';
import 'helper/SampleFlutterConstants.dart';

class LoginPage extends StatelessWidget {

  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  // 2
  final _pinCodeController = TextEditingController();

  // 3
  @override
  Widget build(BuildContext context) {
    // 3a
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,
    );

    // 3b
    final pinCode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.number,
      maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: pinCodeHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          hintStyle: TextStyle(color: Colors.white)),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    // 3c
    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ,),
    onPressed: () {Navigator.of(context).pushNamed(homePageTag);},
    padding: EdgeInsets.all(12),
    color: appGreyColor,
    child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
    ),
    );

    // 3d
    return Scaffold(
    backgroundColor: appDarkGreyColor,
    body: Center(
    child: ListView(
    shrinkWrap: true,
    padding: EdgeInsets.only(left: 24.0, right: 24.0),
    children: <Widget>[
    logo,
    SizedBox(height: bigRadius),
    pinCode,
    SizedBox(height: buttonHeight),
    loginButton
    ],
    ),
    ),
    );
    }
  }

/*class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/

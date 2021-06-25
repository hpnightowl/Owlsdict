import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OwlDict',
         home: MyHomePage(title: 'Owls Dictionary'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ),
      bottomSheet: BottomAppBar(
        child: Row(
          children: [
            Expanded(
                child: Container(
                  color: Colors.blue,
                  child: TextFormField(
                    onChanged: (String text){
                    },
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Search For word",
                    ),
              ),
                )
            ),
          ],
        ),
      ),
      body: Container(
      )
    );
  }
}

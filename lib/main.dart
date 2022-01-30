import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  bool altMail = false;
  bool altCall = false;
  bool altRoute = false;

  void _decrementCounter() {
    setState(() {
      _counter--;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
                "https://iteso.mx/documents/10810/0/C-Juven.jpg/186d142b-5ce8-478f-bbb0-6e462d9ed05f?t=1565888976904"),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "El ITESO Universidad Jesuita de Guadalajara",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("San Pedro Tlaquepaque,Jal."),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    _decrementCounter();
                  },
                  icon: const Icon(Icons.thumb_down),
                ),
                IconButton(
                  onPressed: () {
                    _incrementCounter();
                  },
                  icon: const Icon(Icons.thumb_up),
                ),
                Text("$_counter")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      iconSize: 60,
                      onPressed: () {
                        setState(() {
                          altMail = !altMail;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Correo"),
                            duration: Duration(milliseconds: 666),
                          ),
                        );
                      },
                      icon: const Icon(Icons.mail),
                      color: altMail ? Colors.blue : Colors.grey[900],
                    ),
                    const Text("Correo")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        iconSize: 60,
                        onPressed: () {
                          setState(() {
                            altCall = !altCall;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Llamada"),
                              duration: Duration(milliseconds: 666),
                            ),
                          );
                        },
                        icon: const Icon(Icons.add_call),
                        color: altCall ? Colors.blue : Colors.grey[900]),
                    const Text("Llamada"),
                  ],
                ),
                Column(children: [
                  IconButton(
                      iconSize: 60,
                      onPressed: () {
                        setState(() {
                          altRoute = !altRoute;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Ruta"),
                            duration: Duration(milliseconds: 666),
                          ),
                        );
                      },
                      icon: const Icon(Icons.near_me),
                      color: altRoute ? Colors.blue : Colors.grey[900]),
                  const Text("Ruta"),
                ])
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

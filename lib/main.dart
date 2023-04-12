import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fund_collector/login_page.dart';
import 'package:fund_collector/signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          "/MyHomePage": (context) => const MyHomePage(title: 'hello'),
          "/signup": (context) => const signUp(),
          "/LoginPage": (context) => LoginPage()
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
      body: ListView(children: [
        Center(
          child: Column(
            children: [
              Container(
                width: 350, // set the width to 100 pixels
                height: 650.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.5,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),

                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(25),

                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(top: 1.0),
                        child: Image.asset(
                          'assets/1.jpg',
                          height: 250,
                          width: 350,
                        ),
                      ),
                    ),
                    Container(
                      height: 305,
                      width: 350,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'DONATE',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              Container(
                  width: 350, // set the width to 100 pixels
                  height: 650.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(top: 1.0),
                          child: Image.asset(
                            'assets/1.jpg',
                            height: 250,
                            width: 350,
                          ),
                        ),
                      ),
                      Container(
                        height: 305,
                        width: 350,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'DONATE',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w400),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Ujjwal kumar'),
              accountEmail: const Text('ukdev278@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green.shade300,
                child: const Text(
                  'U',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Colors.indigo),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.money,
                color: Colors.red,
              ),
              title: const Text('Raising Fund'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.money,
                color: Colors.green,
              ),
              title: const Text('Donations'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red.shade100,
              ),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


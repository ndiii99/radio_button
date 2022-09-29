import 'package:flutter/material.dart';
import 'package:radio_button/model.dart';
import 'package:radio_button/radio.dart';
import 'package:radio_button/user.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Default Radio Button Item
  // Group Value for Radio Button.
  List<Jenis> jenis = [];
  // List<FruitsList> flist = [];
  static const users = [
    User(name: 'Tidak Ada', description: 'coba'),
    User(name: 'Kotor', description: 'coba'),
    User(name: 'Bersih', description: 'coba'),
  ];

  User selectedValue = users.first;
  @override
  void initState() {
    super.initState();
    jenis.add(Jenis(name: 'Sweeping'));
    jenis.add(Jenis(name: 'Brushing'));
    jenis.add(Jenis(name: 'basbajbd'));
    jenis.add(Jenis(name: 'sadbhdhabsh'));
    // flist.add(FruitsList(name: 'Tidak Ada'));
    // flist.add(FruitsList(name: 'Kotor'));
    // flist.add(FruitsList(name: 'Bersih'));
  }

  // ignore: unnecessary_const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: jenis.length,
        itemBuilder: (context, index) {
          final item = jenis[index];
          return Column(
            children: [
              SizedBox(
                height: 200,
                child: Column(
                  children: [
                    Card(
                      color: Colors.green,
                      child: Text(item.name),
                    ),
                    Expanded(
                      child: RadioButtonAdvancedWidget(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}

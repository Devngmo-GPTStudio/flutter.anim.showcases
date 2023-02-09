import 'package:flutter/material.dart';
import 'package:flutter_anim_showcases/demos/flip_around_center.dart';
import 'package:flutter_anim_showcases/shared/demo_info.dart';

final SHOWCASES = [
  DemoInfo(
      name: 'Flip Around Center',
      id: 'flip_around_center',
      desc: 'A Card which will flip when user click')
];


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'main_menu',
      routes: {
        'main_menu': (context) => MainMenuScreen(),
        'flip_around_center': (context) => FlipAroundCenterDemo()
      },
    );
  }
}

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}


class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    int index = 0;
    for(var d in SHOWCASES) {
      items.add( buildShowcase(d, index++) );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items
        ),
      ),
    );
  }

  Widget buildShowcase(DemoInfo d, index) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, d.id),
      title: Text(d.name),
      subtitle: Text(d.desc),
    );
  }
}

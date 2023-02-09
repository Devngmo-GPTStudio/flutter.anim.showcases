import 'package:flutter/material.dart';
import 'package:flutter_anim_showcases/widgets/flip_card_widget.dart';

class FlipAroundCenterDemo extends StatefulWidget {
  const FlipAroundCenterDemo({Key? key}) : super(key: key);

  @override
  State<FlipAroundCenterDemo> createState() => _FlipAroundCenterDemoState();
}

class _FlipAroundCenterDemoState extends State<FlipAroundCenterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flip Around Center Demo")),
      body: FlipCardWidget()
    );
  }
}

import 'package:flutter/material.dart';

const double pi = 3.1415926535897932;

class Exercice2 extends StatefulWidget {
  const Exercice2({Key? key}) : super(key: key);

  @override
  _Exercice2State createState() => _Exercice2State();
}

class _Exercice2State extends State<Exercice2> {
  double rotX = 0;
  double rotZ = 0;
  bool mirror = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rotate / resize image")),
      body: SingleChildScrollView(
        child: Column(children: [
          //Image
          Container(
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..scale(scale)
                ..rotateY(mirror ? pi : 0)
                ..rotateX(rotX)
                ..rotateZ(rotZ),
              child: const Image(
                image: NetworkImage("https://picsum.photos/512/1024"),
              ),
            ),
            padding: const EdgeInsets.all(10),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(color: Colors.white),
          ),

          //Slider rot X
          Container(
            child: Row(
              children: [
                const Text("Rotate X:"),
                Expanded(
                  child: Slider(
                    value: rotX,
                    min: -pi,
                    max: pi,
                    onChanged: (double value) {
                      setState(() {
                        rotX = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),

          //Slider rot Z
          Container(
            child: Row(
              children: [
                const Text("Rotate Z:"),
                Expanded(
                  child: Slider(
                    value: rotZ,
                    min: -pi,
                    max: pi,
                    onChanged: (double value) {
                      setState(() {
                        rotZ = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),

          //Checkbox mirror
          Container(
            child: Row(
              children: [
                const Text("Mirror:"),
                Checkbox(
                  value: mirror,
                  onChanged: (bool? value) {
                    setState(() {
                      mirror = value!;
                    });
                  },
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),

          //Slider scale
          Container(
            child: Row(
              children: [
                const Text("Scale:"),
                Expanded(
                  child: Slider(
                    value: scale,
                    min: 0.1,
                    max: 2.5,
                    onChanged: (double value) {
                      setState(() {
                        scale = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),
        ]),
      ),
    );
  }
}
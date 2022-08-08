import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Container(
                      padding: EdgeInsets.all(2),
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage("https://helostatus.com/wp-content/uploads/2021/09/pic-for-WhatsApp-HD.jpg"),
                        backgroundColor: Colors.white,
                        //
                      )),
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              top: 8,
              child: InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 16,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

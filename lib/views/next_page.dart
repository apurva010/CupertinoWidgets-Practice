import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Page 2",
        ),
      ),
      backgroundColor: Colors.blueGrey,
      child: Center(
        child: Text(
          "Page 2",
        ),
      ),
    );
  }
}

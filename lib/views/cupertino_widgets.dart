import 'package:flutter/cupertino.dart';

class CupertinoWidgets extends StatefulWidget {
  const CupertinoWidgets({Key? key}) : super(key: key);

  @override
  State<CupertinoWidgets> createState() => _CupertinoWidgetsState();
}

class _CupertinoWidgetsState extends State<CupertinoWidgets> {
  DateTime initDate = DateTime.now();
  String? _selectedvalue;
  double showValue = 10;
  String? searchVal;
  TextEditingController _searchFieldController = TextEditingController(
    text: "Search Field",
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: const Icon(CupertinoIcons.back),
            onPressed: () {},
          ),
          middle: const Text(
            "Cupertino Widgets",
          ),
        ),
        child: Center(
          child: cupertinoSliverBar(),
        ),
      ),
    );
  }

  Widget cupertinoSliverBar() {
    return const CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text(
            "Sliver App Bar",
          ),
          leading: Icon(
            CupertinoIcons.back,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
          ),
        ),
      ],
    );
  }
}

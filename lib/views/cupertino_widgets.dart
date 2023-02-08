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
            CupertinoIcons.arrow_right,
          ),
        ),
      ],
    );
  }

  Widget cupertinoListSection() {
    return CupertinoListSection.insetGrouped(
      footer: Container(
        height: 200,
        width: double.maxFinite,
        color: CupertinoColors.activeGreen,
      ),
      header: const Text(
        "Cupertino List Section",
      ),
      children: [
        const CupertinoListTile(
          leading: Icon(
            CupertinoIcons.person,
          ),
          title: Text(
            "title",
          ),
        ),
        CupertinoListTile(
          onTap: () {},
          leading: const Icon(
            CupertinoIcons.person,
          ),
          title: const Text(
            "title",
          ),
        ),
        const CupertinoListTile(
          leading: Icon(
            CupertinoIcons.person,
          ),
          title: Text(
            "title",
          ),
        ),
      ],
    );
  }

  Widget cupertinoTabScaffold() {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.activeOrange,
        inactiveColor: CupertinoColors.inactiveGray,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.mail,
            ),
            label: "Mail",
          ),
        ],
      ),
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) {
          return Center(
            child: Text("$index"),
          );
        },
      ),
    );
  }
}

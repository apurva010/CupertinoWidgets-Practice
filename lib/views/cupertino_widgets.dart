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

  Widget cupertinoSearchField() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Text $searchVal"),
        const SizedBox(
          height: 20,
        ),
        CupertinoSearchTextField(
          controller: _searchFieldController,
          placeholder: "Search",
          onChanged: (val) {
            setState(() {
              searchVal = val;
            });
          },
          onSubmitted: (val) {
            searchVal = val;
          },
          onTap: () {
            print("tapped");
          },
        ),
      ],
    );
  }

  Widget cupertinoSlider() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("$showValue"),
        CupertinoSlider(
            value: showValue,
            max: 100,
            min: 0,
            divisions: 20,
            activeColor: CupertinoColors.activeOrange,
            onChanged: (changeValue) {
              setState(() {
                showValue = changeValue;
              });
            }),
      ],
    );
  }

  Widget cupertinoScrollbar() {
    return CupertinoScrollbar(
      // thickness: 20,
      // thicknessWhileDragging: 30,
      // thumbVisibility: true,
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              "$index",
            ),
          );
        },
      ),
    );
  }

  Widget popUpSurface() {
    return CupertinoButton(
      child: const Text(
        "Pop up surface",
      ),
      onPressed: () {
        showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoPopupSurface(
            isSurfacePainted: true,
            child: Container(
              width: double.infinity,
              height: 200,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Pop up Surface",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';

import 'next_page.dart';

class CupertinoWidgets extends StatefulWidget {
  const CupertinoWidgets({Key? key}) : super(key: key);

  @override
  State<CupertinoWidgets> createState() => _CupertinoWidgetsState();
}

class _CupertinoWidgetsState extends State<CupertinoWidgets> {
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
        child: const Center(
          child: CupertinoSlidingSegmentedControlWidget(),
        ),
      ),
    );
  }
}

class CupertinoSlidingSegmentedControlWidget extends StatefulWidget {
  const CupertinoSlidingSegmentedControlWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSlidingSegmentedControlWidget> createState() =>
      _CupertinoSlidingSegmentedControlWidgetState();
}

class _CupertinoSlidingSegmentedControlWidgetState
    extends State<CupertinoSlidingSegmentedControlWidget> {
  int sliding = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 30,
        ),
        CupertinoSlidingSegmentedControl(
          children: const {
            0: Text(
              "Text 0",
            ),
            1: Text(
              "Text 1",
            ),
            2: Text(
              "Text 2",
            ),
          },
          groupValue: sliding,
          onValueChanged: (changeVal) {
            setState(() {
              sliding = changeVal!;
            });
          },
        ),
      ],
    );
  }
}

class CupertinoSegmentedControlWidget extends StatefulWidget {
  const CupertinoSegmentedControlWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSegmentedControlWidget> createState() =>
      _CupertinoSegmentedControlWidgetState();
}

class _CupertinoSegmentedControlWidgetState
    extends State<CupertinoSegmentedControlWidget> {
  String? _currentText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoSegmentedControl(
          children: {
            'Flutter': Container(
              color: CupertinoColors.activeOrange,
              height: 50,
              width: 100,
              child: const Center(child: Text("Flutter")),
            ),
            'React Native': Container(
              color: CupertinoColors.activeGreen,
              height: 50,
              width: 100,
              child: const Center(child: Text("React native")),
            ),
          },
          onValueChanged: (changeVal) {
            setState(() {
              _currentText = changeVal;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        _currentText != null ? Text("$_currentText") : Container(),
      ],
    );
  }
}

class CupertinoSliverBarWidget extends StatelessWidget {
  const CupertinoSliverBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class CupetinoListSectionWidget extends StatelessWidget {
  const CupetinoListSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class CupertinoTabScaffoldWidget extends StatelessWidget {
  const CupertinoTabScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

class CupertinoSearchField extends StatefulWidget {
  const CupertinoSearchField({Key? key}) : super(key: key);

  @override
  State<CupertinoSearchField> createState() => _CupertinoSearchFieldState();
}

class _CupertinoSearchFieldState extends State<CupertinoSearchField> {
  String? searchVal;

  TextEditingController _searchFieldController = TextEditingController(
    text: "Search Field",
  );

  @override
  Widget build(BuildContext context) {
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
}

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double showValue = 10;

  @override
  Widget build(BuildContext context) {
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
}

class CupetinoScrollBarWidget extends StatelessWidget {
  const CupetinoScrollBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class PopUpSurface extends StatelessWidget {
  const PopUpSurface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  String? _selectedvalue;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(
        "Cupertino Picker ($_selectedvalue)",
      ),
      onPressed: () {
        showCupertinoModalPopup(
          context: context,
          builder: (_) => SizedBox(
            height: 250,
            child: CupertinoPicker(
              itemExtent: 30,
              onSelectedItemChanged: (newValue) {
                setState(() {
                  _selectedvalue = newValue.toString();
                });
              },
              scrollController: FixedExtentScrollController(
                initialItem: 1,
              ),
              children: const [
                Text(
                  "0",
                ),
                Text(
                  "1",
                ),
                Text(
                  "2",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CupertinoPageRouteWidget extends StatelessWidget {
  const CupertinoPageRouteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      child: const Text(
        "Next",
      ),
      onPressed: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => const NextPage(),
          ),
        );
      },
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime initDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        child: Text(
          "${initDate.day}/${initDate.month}/${initDate.year}",
        ),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) => SizedBox(
              height: 300,
              child: CupertinoDatePicker(
                // backgroundColor: CupertinoColors.white,
                initialDateTime: initDate,
                maximumYear: 2023,
                minimumDate: DateTime(1990),
                mode: CupertinoDatePickerMode.date,
                use24hFormat: true,
                onDateTimeChanged: (value) {
                  print(value);
                  setState(() {
                    initDate = value;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class ContextMenu extends StatelessWidget {
  const ContextMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: [
        CupertinoContextMenuAction(
          child: const Text(
            "Action 1",
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        CupertinoContextMenuAction(
          child: const Text(
            "Action 2",
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
      child: Image.network(
        "https://thumbs.dreamstime.com/b/ellis-bridge-ahmedabad-century-old-situated-gujarat-india-bridges-western-eastern-parts-city-across-124476810.jpg",
      ),
    );
  }
}

class AlertDialog extends StatelessWidget {
  const AlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text(
        "Alert Dialog",
      ),
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            insetAnimationDuration: const Duration(
              seconds: 5,
            ),
            title: const Text(
              "Alert Dialog",
            ),
            content: const Text(
              "Content",
            ),
            actions: [
              CupertinoDialogAction(
                child: const Text(
                  "No",
                ),
                onPressed: () => Navigator.of(context).pop(),
                isDestructiveAction: true,
                isDefaultAction: true,
              ),
              const CupertinoDialogAction(
                child: Text(
                  "Yes",
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ActivityIndicator extends StatelessWidget {
  const ActivityIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator(
      color: CupertinoColors.activeOrange,
      radius: 20,
    );
  }
}

class ActionSheet extends StatelessWidget {
  const ActionSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        showCupertinoModalPopup(
          barrierColor: CupertinoColors.inactiveGray,
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return CupertinoActionSheet(
              title: const Text(
                "Delete",
              ),
              message: const Text(
                "want to delete?",
              ),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDestructiveAction: true,
                  child: const Text(
                    "Yes",
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDefaultAction: true,
                  child: const Text(
                    "NO",
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Cancel",
                ),
              ),
            );
          },
        );
      },
      child: const Text(
        "Cupertino Action Sheet",
      ),
    );
  }
}

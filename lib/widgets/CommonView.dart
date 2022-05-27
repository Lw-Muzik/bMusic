// ignore_for_file: file_names, must_be_immutable, depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Body.dart';

class CommonView extends StatefulWidget {
  Widget child;
  String title;
  bool search;
  bool showFab;
  CommonView(
      {Key? key,
      required this.child,
      this.showFab = true,
      required this.title,
      this.search = false})
      : super(key: key);

  @override
  State<CommonView> createState() => _CommonViewState();
}

class _CommonViewState extends State<CommonView> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Body(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const CircleAvatar()),
                accountName: const Text(
                  "Receipt Generator",
                  style: TextStyle(
                    // fontFamily: 'Dancing',
                    fontSize: 23,
                  ),
                ),
                accountEmail: const Text(""),
              ),
            ],
          ),
        ),
      ),
      fab: widget.showFab == true
          ? FloatingActionButton.extended(
              icon: const Icon(Icons.add),
              onPressed: () {},
              label: const Text("New receipt"),
            )
          : Container(),
      child: widget.child,
    );
  }

  showAddReceipt() {
    showCupertinoModalPopup(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        context: context,
        builder: (context) {
          return Center(
            child: Padding(
                padding: EdgeInsets.zero,
                child: BottomSheet(
                    elevation: 12,
                    backgroundColor: Colors.transparent,
                    onClosing: () {},
                    builder: (context) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(""),
                      );
                    })),
          );
        });
  }
}

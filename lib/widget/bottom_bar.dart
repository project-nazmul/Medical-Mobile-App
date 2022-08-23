import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    selected = 1;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      selected == 1 ? Colors.black12 : Colors.white,
                  child: const Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    selected = 2;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      selected == 2 ? Colors.black12 : Colors.white,
                  child: const Icon(Icons.note, color: Colors.blue),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    selected = 3;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      selected == 3 ? Colors.black12 : Colors.white,
                  child: const Icon(Icons.calendar_month_rounded,
                      color: Colors.blue),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    selected = 4;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      selected == 4 ? Colors.black12 : Colors.white,
                  child: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                )),
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';

class TopNavigation extends StatefulWidget {
  const TopNavigation({super.key});

  @override
  State<TopNavigation> createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  @override
  Widget build(BuildContext context) {
    double topviewport = MediaQuery.of(context).viewPadding.top;
    return Container(
      margin: MediaQuery.of(context).viewPadding.top > 0
          ? EdgeInsets.fromLTRB(0, topviewport, 0, 0)
          : const EdgeInsets.fromLTRB(0, 32, 0, 0),
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .95,
        height: 40.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300]),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 35,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintTextDirection: TextDirection.rtl,
                          hintText: 'جستجوی نماد...',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

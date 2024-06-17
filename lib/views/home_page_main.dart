import 'package:flutter/material.dart';

import '../components/top_navigation_bar.dart';

class HomePageMain extends StatelessWidget {
  const HomePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const TopNavigation(),
        Expanded(
          child: Container(
            color: Colors.grey[100],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                  Center(child: Text("Comming Soon..."))
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

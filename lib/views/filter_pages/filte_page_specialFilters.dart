import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterPageSpecialFilters extends StatelessWidget {
  const FilterPageSpecialFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/ghost.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "پول گنده",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/flash.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "افزایش حجم ناگهانی",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/shield-tick.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "اردرهای حمایتی",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/computing.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "اختلاف قیمت",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/radar-2.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "رادار صفوف",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/danger.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "اردرهای ترس",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 12,
                              child: SvgPicture.asset(
                                'assets/images/icon/convertshape-2.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const FittedBox(
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            child: Text(
                              "کد به کد",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

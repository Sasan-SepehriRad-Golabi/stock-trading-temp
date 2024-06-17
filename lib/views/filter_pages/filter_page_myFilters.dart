import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stock_trading_app/controllers/filter_page_controller.dart';
import 'package:stock_trading_app/views/filter_pages/tse_built_filters.dart';
import 'easy_built_filters.dart';

class FilterPageMyFilters extends StatelessWidget {
  FilterPageMyFilters({super.key});
  FilterController fController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      initState: (state) {
        fController.listOfFilters = [];
        fController.updateListOfFilter();
      },
      builder: (controller) {
        print(controller.addFiltersFinished);
        return controller.addFiltersFinished
            ? Material(
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ListView.builder(
                                itemCount: controller.listOfFilters.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.black26,
                                              spreadRadius: 0,
                                              blurRadius: 1)
                                        ]),
                                    child: SizedBox(
                                      height: 50,
                                      width: 90,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: SvgPicture.asset(
                                                        'assets/images/icon/trash.svg')),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: SvgPicture.asset(
                                                        'assets/images/icon/edit.svg')),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: SvgPicture.asset(
                                                        'assets/images/icon/note-1.svg')),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Container(
                                            padding: const EdgeInsets.all(8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          textDirection:
                                                              TextDirection.rtl,
                                                          controller
                                                                          .listOfFilters[
                                                                              index]
                                                                          .name !=
                                                                      null &&
                                                                  controller
                                                                          .listOfFilters[
                                                                              index]
                                                                          .name!
                                                                          .length >
                                                                      7
                                                              ? "${controller.listOfFilters[index].name!.substring(0, 5)}..."
                                                              : controller
                                                                      .listOfFilters[
                                                                          index]
                                                                      .name ??
                                                                  "",
                                                          style:
                                                              const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .blue),
                                                        ),
                                                      ),
                                                      Text(
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        controller
                                                                    .listOfFilters[
                                                                        index]
                                                                    .type ==
                                                                "mine"
                                                            ? " ${controller.listOfFilters[index].numOfConditions}تعداد شرط"
                                                            : "فیلتر TSE",
                                                        style: const TextStyle(
                                                            fontSize: 6,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.blue.shade500,
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: SizedBox(
                                                    width: 30,
                                                    height: 30,
                                                    child: Center(
                                                      child: controller
                                                                  .listOfFilters[
                                                                      index]
                                                                  .type ==
                                                              "tse"
                                                          ? const FittedBox(
                                                              child:
                                                                  Text("TSE"),
                                                            )
                                                          : SvgPicture.asset(
                                                              'assets/images/icon/magicpen.svg'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 20,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              barrierColor: const Color.fromRGBO(0, 0, 0, 0.8),
                              builder: (BuildContext context) {
                                return Container(
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 140,
                                        left: 20,
                                        child: Container(
                                          child: SizedBox(
                                            width: 150,
                                            height: 200,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.off(EasyBuiltFilters());
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        radius: 18,
                                                        child: Center(
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/icon/magicpen.svg',
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 7,
                                                      ),
                                                      const Text(
                                                        "طراحی آسان",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                GestureDetector(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        radius: 18,
                                                        child: Center(
                                                          child: Text(
                                                            "TSE",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .blue[200]),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 7,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Get.off(TSEFilters());
                                                        },
                                                        child: const Text(
                                                          "ثبت فیلتر TSE",
                                                          textDirection:
                                                              TextDirection.rtl,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                GestureDetector(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        radius: 18,
                                                        child: Center(
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/icon/shopping-cart.svg',
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 7,
                                                      ),
                                                      const Text(
                                                        "خریداری شده",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: SvgPicture.asset(
                                'assets/images/icon/filter-add.svg'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
      },
    );
  }
}

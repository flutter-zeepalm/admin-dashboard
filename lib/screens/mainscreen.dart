import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:ecommerce_store_screen/data/typography.dart';

import 'package:ecommerce_store_screen/model/chartmodel.dart';
import 'package:ecommerce_store_screen/model/progress_model.dart';
import 'package:ecommerce_store_screen/widgets/barchart.dart';
import 'package:ecommerce_store_screen/widgets/checkbox.dart';
import 'package:ecommerce_store_screen/widgets/expense_rate_container.dart';
import 'package:ecommerce_store_screen/widgets/label_heading.dart';
import 'package:ecommerce_store_screen/widgets/navigation_buttons.dart';
import 'package:ecommerce_store_screen/widgets/order_checkbox.dart';
import 'package:ecommerce_store_screen/widgets/revenue_container.dart';
import 'package:ecommerce_store_screen/widgets/top_selling_buttons.dart';
import 'package:ecommerce_store_screen/widgets/user_retention_wid.dart';
import 'package:flutter/material.dart';

import '../widgets/newbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: CustomColor.kwhitecontback,
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 1000,
              width: 200,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: CustomColor.kgrey,
                            radius: 40,
                          ),
                          Positioned(
                            top: 10,
                            left: 65,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: CustomColor.kpurplebar,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Kelly Turner",
                      style: TextStyle(
                          color: CustomColor.kblack,
                          fontSize: 16,
                          fontWeight: kBoldFontWeight),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ecommerce Store",
                      style: TextStyle(
                        color: CustomColor.kgrey,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    NavigationBarContainer(
                      title: 'Home',
                      selectcol: CustomColor.kpurplebar,
                      icon: Icons.home,
                      color: CustomColor.kpurplebar,
                    ),
                    NavigationBarContainer(
                      title: 'Analytics',
                      selectcol: Colors.transparent,
                      icon: Icons.graphic_eq,
                      color: CustomColor.kgrey,
                    ),
                    NavigationBarContainer(
                      title: 'Reporting',
                      selectcol: Colors.transparent,
                      icon: Icons.report,
                      color: CustomColor.kgrey,
                    ),
                    NavigationBarContainer(
                      title: 'Secuirty',
                      selectcol: Colors.transparent,
                      icon: Icons.security,
                      color: CustomColor.kgrey,
                    ),
                    NavigationBarContainer(
                      title: 'Task',
                      selectcol: Colors.transparent,
                      icon: Icons.task,
                      color: CustomColor.kgrey,
                    ),
                    NavigationBarContainer(
                        title: 'Settings',
                        selectcol: Colors.transparent,
                        icon: Icons.settings,
                        color: CustomColor.kgrey)
                  ],
                ),
              ),
            ),
            Container(
              height: 1000,
              width: 1080,
              color: CustomColor.kwhitecontback,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 450,
                      decoration: BoxDecoration(
                          color: CustomColor.kwhite,
                          borderRadius: BorderRadius.circular(kcontRadius)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: 24,
                            ),
                            border: InputBorder.none,
                            hintText: "Search by question or keyword ",
                            hintStyle: TextStyle(
                              fontSize: 12,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 12,
                            ),
                            suffixIcon: Icon(Icons.menu, size: 10)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "USER RETENTION",
                      style: TextStyle(
                        color: CustomColor.kgrey,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 135,
                              width: 280,
                              decoration: BoxDecoration(
                                  color: CustomColor.kpurplebar,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 12,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "User Retention Overview",
                                          style: TextStyle(
                                            color: CustomColor.kwhite
                                                .withOpacity(0.7),
                                            fontSize: 10,
                                          ),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.more_horiz,
                                          size: 10,
                                          color: CustomColor.kwhite
                                              .withOpacity(0.7),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(width: 30),
                                      UserRetentionWidget(
                                        value: 36.7,
                                        rateicon: Icons.arrow_downward,
                                        ratecolour: CustomColor.kpinkbar,
                                        rate: 2.45,
                                        icon: Icons.calendar_month,
                                      ),
                                      const SizedBox(width: 40),
                                      UserRetentionWidget(
                                        value: 190,
                                        rateicon: Icons.arrow_upward,
                                        ratecolour: CustomColor.kbluedarkbar,
                                        rate: 3.78,
                                        icon: Icons.line_axis,
                                      ),
                                      const SizedBox(width: 40),
                                      UserRetentionWidget(
                                        value: 773,
                                        rateicon: Icons.arrow_upward,
                                        ratecolour: CustomColor.kbluedarkbar,
                                        rate: 4.19,
                                        icon: Icons.build,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "REVENUE COMPARISONS",
                              style: TextStyle(
                                color: CustomColor.kgrey,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 135,
                              width: 280,
                              decoration: BoxDecoration(
                                  color: CustomColor.kdarkblue,
                                  borderRadius:
                                      BorderRadius.circular(kcontRadius)),
                              child: Column(
                                children: [
                                  const Labelcontainer(
                                    label: 'Weekly Revenue Comparision',
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      ExpenseRateContainer(
                                        iconcolor: CustomColor.kpinkbar,
                                        week: 'This Week',
                                        rateiniticon: Icons.arrow_downward,
                                        rate: '3,396',
                                        initrate: 1.62,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ExpenseRateContainer(
                                        iconcolor: CustomColor.klightveryblue,
                                        week: 'Last Week',
                                        rateiniticon: Icons.arrow_upward,
                                        rate: '4,038',
                                        initrate: 4.01,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 135,
                              width: 280,
                              decoration: BoxDecoration(
                                  color: CustomColor.kwhite,
                                  borderRadius:
                                      BorderRadius.circular(kcontRadius)),
                              child: Column(
                                children: [
                                  const Labelcontainer(
                                      label: "Daily Active User"),
                                  Newbar(listdata: activeuserdata),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                color: CustomColor.kgrey,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 135,
                              width: 280,
                              decoration: BoxDecoration(
                                  color: CustomColor.kwhite,
                                  borderRadius:
                                      BorderRadius.circular(kcontRadius)),
                              child: Column(
                                children: [
                                  const Labelcontainer(
                                      label: "Total Revenue Generated"),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      RevenueContainer(
                                        iconcolor: CustomColor.kpinkbar,
                                        week: 'This Week',
                                        rateiniticon: Icons.arrow_downward,
                                        rate: '15,916',
                                        initrate: 1.62,
                                        trending: 'Currently Trending',
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      RevenueContainer(
                                        iconcolor: CustomColor.klightveryblue,
                                        week: 'Last Week',
                                        rateiniticon: Icons.arrow_upward,
                                        rate: '17,302',
                                        initrate: 4.01,
                                        trending: '',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 298,
                              width: 280,
                              decoration: BoxDecoration(
                                  color: CustomColor.kwhite,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "",
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.more_horiz,
                                          size: 14,
                                          color: CustomColor.kgrey,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 280,
                                    width: 260,
                                    child: ListView.builder(
                                      padding: const EdgeInsets.only(bottom: 0),
                                      itemCount: sellinglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return TopSelingButtons(
                                          sellinglist: sellinglist[index],
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 34,
                      width: 892,
                      decoration: BoxDecoration(
                          color: CustomColor.kwhite,
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: CustomColor.kgrey,
                            ),
                          ),
                          Text(
                            "Unlock Machine learning insight below. Try our premium service for 1 month free",
                            style: TextStyle(
                              color: CustomColor.kgrey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          SizedBox(
                            height: 20,
                            width: 100,
                            child: ElevatedButton(
                                child: Text("Unlock".toUpperCase(),
                                    style: const TextStyle(fontSize: 10)),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            CustomColor.kwhite),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            CustomColor.kdarkblue),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ))),
                                // ignore: avoid_returning_null_for_void
                                onPressed: () => null),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "STORE STATS",
                      style: TextStyle(
                        color: CustomColor.kgrey,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(children: [
                      Container(
                        height: 135,
                        width: 280,
                        decoration: BoxDecoration(
                            color: CustomColor.kwhite,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            const Labelcontainer(label: "Revenue Trends"),
                            Newbar(
                              listdata: data,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 135,
                        width: 280,
                        decoration: BoxDecoration(
                            color: CustomColor.kwhite,
                            borderRadius: BorderRadius.circular(kcontRadius)),
                        child: Column(
                          children: [
                            const Labelcontainer(label: "Inventory Managment"),
                            barchart(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 135,
                        width: 280,
                        decoration: BoxDecoration(
                            color: CustomColor.kwhite,
                            borderRadius: BorderRadius.circular(kcontRadius)),
                        child: Column(children: [
                          const Labelcontainer(label: "Shipment tracker"),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CheckBox(
                                  value: true,
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Divider(
                                    height: 5,
                                    color: CustomColor.kpurplebar,
                                  ),
                                ),
                                const CheckBox(
                                  value: true,
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Divider(
                                    height: 5,
                                    color: CustomColor.kblack,
                                  ),
                                ),
                                const CheckBox(
                                  value: false,
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Divider(
                                    indent: 2,
                                    height: 5,
                                    color: CustomColor.kblack,
                                  ),
                                ),
                                const CheckBox(
                                  value: false,
                                )
                              ]),
                          Row(
                            children: const [
                              SizedBox(
                                width: 48,
                              ),
                              OrderColumn(
                                date: '22 May',
                                status: 'Order',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              OrderColumn(
                                status: 'Ship',
                                date: '24 May',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              OrderColumn(
                                date: '',
                                status: 'Deliver',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              OrderColumn(
                                date: '30 May',
                                status: 'Arrive',
                              )
                            ],
                          )
                        ]),
                      )
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

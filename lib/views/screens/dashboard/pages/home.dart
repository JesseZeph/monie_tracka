import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/constants/image_strings.dart';
import 'package:monie_tracka/views/common/appstyle.dart';
import 'package:monie_tracka/views/common/custom_text.dart';
import 'package:monie_tracka/views/common/dropdown.dart';
import 'package:monie_tracka/views/common/height_spacer.dart';
import 'package:monie_tracka/views/common/width_spacer.dart';
import 'package:monie_tracka/views/screens/dashboard/widgets/menu_tiles.dart';
import 'package:monie_tracka/views/screens/dashboard/widgets/transaction_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightTextColor.withOpacity(0.05),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: lightTextColor.withOpacity(0.01),
          elevation: 0,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.r),
                  child: Image.asset(
                    profileImage,
                    fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                  ),
                ),
              ),
              const WidthSpacer(width: 30),
              const CustomText(
                text: 'Hi John',
                size: 16,
                weight: FontWeight.w500,
              )
            ],
          ),
          leadingWidth: 200,
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.bell),
                ),
                Positioned(
                  top: 17,
                  right: 15,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              Row(
                children: [
                  CustomText(
                    text: 'Your balance',
                    style: appStyle(10, lightTextColor, FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                        size: 14,
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'NGN',
                    style: appStyle(12, mainTextColor, FontWeight.w500),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "0",
                      style: appStyle(40, mainTextColor, FontWeight.w500),
                      children: [
                        TextSpan(
                          text: '.00 ',
                          style: appStyle(35, lightTextColor, FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const HeightSpacer(size: 25),
              Row(
                children: [
                  TransactionWidget(
                    icon: Icons.add,
                    text: 'Fund Wallet',
                    onTap: () {},
                  ),
                  const WidthSpacer(width: 10),
                  TransactionWidget(
                    icon: Icons.send_outlined,
                    text: 'Send Money',
                    onTap: () {},
                  ),
                ],
              ),
              const HeightSpacer(size: 30),
              const CustomText(
                text: 'Daily Budget',
                align: TextAlign.left,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    const HeightSpacer(size: 10),
                    Container(
                      width: width * 0.45,
                      height: height * 0.2,
                      decoration: BoxDecoration(
                        color: monieWhite,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              (Icons.add_circle_rounded),
                            ),
                            CustomText(
                              text: 'Create Budget',
                              style:
                                  appStyle(10, lightTextColor, FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const HeightSpacer(size: 30),
              const CustomText(
                text: 'Menu',
                align: TextAlign.left,
              ),
              const HeightSpacer(size: 15),
              FittedBox(
                child: Container(
                  width: width,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                    color: monieWhite,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuTileWidget(
                            imageUrl: airtime,
                            text: 'Airtime',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: arrow,
                            text: 'Data  ',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: bills,
                            text: 'Bills',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: electricity,
                            text: 'Electricity',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: tv,
                            text: 'TV',
                            onTap: () {},
                          ),
                        ],
                      ),
                      HeightSpacer(size: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuTileWidget(
                            imageUrl: stack,
                            text: 'Cards',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: naira,
                            text: 'Cash Backs',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: group,
                            text: 'Group Budget',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: contribution,
                            text: 'Contribution',
                            onTap: () {},
                          ),
                          MenuTileWidget(
                            imageUrl: more,
                            text: 'More',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const HeightSpacer(size: 20),
              const Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: DropDownWidget(),
                  ),
                ],
              ),
              const HeightSpacer(size: 15),
              Container(
                width: width,
                height: height * 0.3,
                decoration: BoxDecoration(
                    color: monieWhite,
                    borderRadius: BorderRadius.circular(10.r)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

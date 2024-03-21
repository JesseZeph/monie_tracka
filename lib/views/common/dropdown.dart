import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/views/common/custom_text.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key, this.onSelect, this.initialValue})
      : super(key: key);
  final Function(String?)? onSelect;
  final String? initialValue;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? selectedFollowing;
  TextEditingController searchController = TextEditingController();
  bool isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    selectedFollowing = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.5,
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        color: monieWhite,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isMenuOpen = !isMenuOpen;
              });
            },
            child: InputDecorator(
              decoration: InputDecoration(
                label: const CustomText(
                  text: 'All Transactions',
                  size: 18,
                  weight: FontWeight.w500,
                  color: mainTextColor,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(
                  isMenuOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                ),
                contentPadding: EdgeInsets.only(left: 10.w, top: 15.h),
              ),
              child: Text(
                selectedFollowing ?? '',
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          if (isMenuOpen)
            SizedBox(
              height: 250.h,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:f_ui/src/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageButtonWidget extends StatelessWidget {
  const PageButtonWidget({
    Key? key,
    required this.page,
    required this.onPressed,
  }) : super(key: key);

  final int page;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        height: 56.r,
        width: 56.r,
        color: AppColors.grey,
        child: Center(
          child: Text(
            "$page",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

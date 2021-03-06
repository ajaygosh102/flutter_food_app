
import 'package:flutter/material.dart';
import 'package:flutter_food_app/config/theme.dart';

Widget showCircleProgress({double size = 30}) => Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          backgroundColor: AppColors.black,
          valueColor: new AlwaysStoppedAnimation<Color>(AppColors.darkGray),
        ),
      ),
    );

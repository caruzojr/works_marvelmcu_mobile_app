import 'package:flutter/material.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';

const double imgBackgroundSizeHeight = 350.0;
const String imgBackgroundUrlBase =
    "${BaseURL.urlTheMoveDB}${SizeImages.imagesW1280}";

const double shadowBackgroundSizeHeight = imgBackgroundSizeHeight + 10;
final Color shadowBackgroundInitialState = Color(0xFF000000).withOpacity(0.0);
final Color shadowBackgroundEndState = Color(0xFF000000).withOpacity(1);

const double votePositionTop = 190.0;
const double votePositionRight = 32.0;
const double voteCircleSize = 45.0;

const double contentMarginTop = 220.0;
const double contentHeaderSizeBox = 190.0;
const double contentGenderSizeHeight = 16.0;
const String contentGenderSeparated = ", ";

const int numberColumnContent = 2;
const int gapColumnContent = 24;

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension IntExt on int {
  Widget get vPad => SizedBox(height: h);
  Widget get hPad => SizedBox(width: w);
}

import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/resources/stacked_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showNotification(context,
    {required String title, required String description}) {
  return ElegantNotification.success(
    width: 360.w,
    stackedOptions: StackedOptions(
      key: 'topRight',
      type: StackedType.same,
      itemOffset: Offset(0, 0),
    ),
    position: Alignment.topCenter,
    animation: AnimationType.fromTop,
    title: Text(title),
    description: Text(description),
    onDismiss: () {},
  ).show(context);
}

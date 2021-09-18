import 'package:flutter/material.dart';

Future<dynamic> defaultBottomSheet(
    {required BuildContext context, required Widget child}) async {
  return await showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.black.withOpacity(0.2),
      backgroundColor: Colors.transparent,
      builder: (ctx) => child);
}

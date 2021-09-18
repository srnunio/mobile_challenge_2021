import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';
import 'package:mobile_challenge_2021/presentation/core/component/base_component.dart';

import 'core/sizes.dart';
import 'core/styles.dart';

class BodySearchUI extends BaseComponent {
  final Function(String) onSearch;

  final bool isBusy;

  FocusNode myFocusNode = FocusNode();

  TextEditingController _controller = new TextEditingController();

  BodySearchUI({required this.onSearch, required this.isBusy});

  _input() {
    var hintText = 'searching'.translate;
    return Container(
      height: 40.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: decoration(color: kBackgroundColor, borderRadius: kBorder),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            decoration:
                decoration(color: kBackgroundColor, borderRadius: kBorder),
            child: TextField(
              onTap: (){},
              scrollPadding: EdgeInsets.zero,
              textInputAction: TextInputAction.search,
              controller: _controller,
              autofocus: false,
              enabled: !isBusy,
              cursorColor: kIconColor,
              focusNode: myFocusNode,
              onEditingComplete: () => onSearch(_controller.text),
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: styleText(color: kSubtitleTextColor, size: 14.0),
              ),
              style: styleText(size: 14.0),
            ),
          )),
          horizontalSpaceSmall(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            height: 40.0,
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            decoration:
                decoration(color: kBackgroundColor, borderRadius: kBorder),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: _input()),
                horizontalSpaceSmall(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

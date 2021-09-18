import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/presentation/core/component/icon.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';
import 'package:mobile_challenge_2021/presentation/core/component/base_component.dart';

import 'core/sizes.dart';
import 'core/styles.dart';

class BodySearchUI extends BaseComponent {
  final Function(String) onSearch;
  final Function() onFilter;

  final bool isBusy;

  FocusNode myFocusNode = FocusNode();

  TextEditingController _controller = new TextEditingController();

  BodySearchUI(
      {required this.onSearch, required this.isBusy, required this.onFilter});

  void _onEditingComplete() {
    _onTap();
    onSearch(_controller.text);
  }

  void _onTap() {
    if (myFocusNode.hasFocus)
      myFocusNode.unfocus();
    else
      myFocusNode.requestFocus();
  }

  _input() {
    var hintText = 'searching'.translate;
    var color = (isBusy) ? kPlaceholderColor : kPrimaryColor2;

    return Container(
      height: 40.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: decoration(
          color: kBackgroundColor,
          borderRadius: kBorder,
          border: Border.all(color: color, width: 2.0)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TextField(
            onTap: _onTap,
            scrollPadding: EdgeInsets.zero,
            textInputAction: TextInputAction.search,
            controller: _controller,
            autofocus: false,
            enabled: !isBusy,
            cursorColor: kIconColor,
            focusNode: myFocusNode,
            onEditingComplete: _onEditingComplete,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: styleText(color: kSubtitleTextColor, size: 14.0),
            ),
            style: styleText(size: 14.0),
          )),
          horizontalSpaceSmall(),
          Container(
            width: kSizeIcon,
            height: kSizeIcon,
            child: Center(
              child: CustomIcon(
                iconName: 'search',
                color: color,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
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
          horizontalSpaceSmall(),
          GestureDetector(
            onTap: (isBusy) ? null : onFilter,
            child: Container(
              width: kSizeIcon,
              height: kSizeIcon,
              child: Center(
                child: CustomIcon(
                  iconName: 'filter-filled-tool-symbol',
                  color: (isBusy) ? kPlaceholderColor : kPrimaryColor2,
                ),
              ),
            ),
          ),
          horizontalSpaceSmall(),
        ],
      ),
    );
  }
}

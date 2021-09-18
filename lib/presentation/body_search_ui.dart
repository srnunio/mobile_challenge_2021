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

  final String searchValue;

  String _searchValue = '';

  FocusNode myFocusNode = FocusNode();

  BodySearchUI({
    required this.onSearch,
    required this.isBusy,
    required this.onFilter,
    required this.searchValue,
  });

  void _onEditingComplete() {
    _onTap();
    if (_searchValue.isEmpty) return;
    onSearch(_searchValue);
  }

  void _onTap() {
    if (myFocusNode.hasFocus)
      myFocusNode.unfocus();
    else
      myFocusNode.requestFocus();
  }

  _input() {
    var hintText = 'filter_description'.translate;
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
              child: TextFormField(
            initialValue: searchValue,
            onTap: _onTap,
            scrollPadding: EdgeInsets.zero,
            textInputAction: TextInputAction.search,
            autofocus: false,
            enabled: !isBusy,
            cursorColor: kIconColor,
            focusNode: myFocusNode,
            onEditingComplete: _onEditingComplete,
            onChanged: (value) => this._searchValue = value,
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
          if (searchValue.isNotEmpty) horizontalSpaceSmall(),
          GestureDetector(
            onTap: (isBusy) ? null : onFilter,
            child: AnimatedContainer(
              width: (searchValue.isEmpty) ? 0.0 : 30.0,
              duration: Duration(milliseconds: 300),
              child: Icon(
                Icons.cancel,
                size: 30.0,
                color: Colors.red[600],
              ),
            ),
          ),
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

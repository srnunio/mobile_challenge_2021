import 'package:flutter/cupertino.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobx/mobx.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'base_view_model.g.dart';

var _navigationService = inject<INavigationService>();

class BaseViewModel = _BaseViewModel with _$BaseViewModel;

abstract class _BaseViewModel with Store {
  @observable
  bool _isBusy = false;

  @computed
  bool get isBusy => _isBusy;

  @action
  void setBusy(bool state) {
    _isBusy = state;
  }

  final RefreshController refresh = new RefreshController(
    initialRefresh: false,
  );

  void onRefresh({bool value = false}) {
    if (value) {
      WidgetsBinding.instance!
          .addPostFrameCallback((_) => refresh.requestRefresh());
    } else {
      WidgetsBinding.instance!.addPostFrameCallback(
          (_) => refresh.refreshCompleted(resetFooterState: true));

      WidgetsBinding.instance!
          .addPostFrameCallback((_) => refresh.loadComplete());
    }
  }

  Future<dynamic> navigateToPushNamed(String routeName,
      {Object? arguments}) async {
    return await _navigationService.navigateToPushNamed(routeName,
        arguments: arguments);
  }

  Future<dynamic> navigateToPop({Object? arguments}) async {
    return await _navigationService.navigateToPop(object: arguments);
  }

  Future<dynamic> navigateToPushNamedAndRemoveUntil(String routeName) async {
    return await _navigationService
        .navigateToPushNamedAndRemoveUntil(routeName);
  }
}

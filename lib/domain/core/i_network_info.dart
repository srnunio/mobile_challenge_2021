import 'package:connectivity/connectivity.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;

  final Connectivity connectivity;

  INetworkInfo(this.connectivity);
}

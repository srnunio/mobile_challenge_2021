import 'package:dio/dio.dart';

import 'i_network_info.dart';

abstract class IApiService {
  const IApiService(this.dio);
  final Dio dio;
}

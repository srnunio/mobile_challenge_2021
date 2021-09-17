import 'package:dartz/dartz.dart';
import 'package:dio/src/dio.dart';
import 'package:mobile_challenge_2021/domain/core/i_api_service.dart';
import 'package:mobile_challenge_2021/domain/core/i_network_info.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';

abstract class IPatientRepository extends IApiService {
  IPatientRepository(Dio dio, INetworkInfo networkInfo)
      : super(dio, networkInfo);

  /// read all patients
  /// return Right(List<Patient>) when tha cal successful
  /// return Let(RequestFailure) when the call fails
  Future<Either<RequestFailure, List<Patient>>> getPatients(
      {required PatientRequest request});
}

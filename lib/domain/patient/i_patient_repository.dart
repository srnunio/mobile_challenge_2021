import 'package:dartz/dartz.dart';
import 'package:dio/src/dio.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';

abstract class IPatientRepository {
  final Dio dio;

  IPatientRepository(this.dio);

  /// read all patients
  /// return Right(List<Patient>) when tha cal successful
  /// return Let(RequestFailure) when the call fails
  Future<Either<RequestFailure, List<Patient>>> getPatients(
      {required PatientRequest request});
}

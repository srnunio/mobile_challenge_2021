import 'package:dartz/dartz.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_repository.dart';

abstract class IPatientService {
  final IPatientRepository repository;

  IPatientService(this.repository);

  /// read all patients
  /// return Right(List<Patient>) when tha cal successful
  /// return Let(RequestFailure) when the call fails
  Future<Either<RequestFailure, List<Patient>>> getPatients(
      {required PatientRequest request});
}

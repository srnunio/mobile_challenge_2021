import 'package:dartz/dartz.dart';
import 'package:dio/src/dio.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_repository.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_service.dart';

class PatientService extends IPatientService {
  PatientService(IPatientRepository repository) : super(repository);

  @override
  Future<Either<RequestFailure, List<Patient>>> getPatients(
          {required PatientRequest request}) async =>
      await repository.getPatients(request: request);
}

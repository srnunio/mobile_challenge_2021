import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_repository.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_mapper.dart';

class PatientRepository extends IPatientRepository {
  PatientRepository(Dio dio) : super(dio);

  @override
  Future<Either<RequestFailure, List<Patient>>> getPatients(
      {required PatientRequest request}) async {
    try {
      var _genderParam =
          (request.hasFiltered) ? '&gender=${request.gender}' : '';

      var _nationalityParam =
          (request.hasFiltered) ? '&nat=${request.nationality}' : '';

      var _path = '/?page=${request.page}&results=${request.resultSize}';

      _path += _genderParam + _nationalityParam;

      final response = await dio.get(_path,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ));

      var data = (response.data['results'] as List<dynamic>);

      var list = PatientMapper.fromList(data);

      return Right(list);
    } on DioError catch (error) {
      if (error.error is OSError || error.error is SocketException) {
        return left(RequestFailure.networkError());
      }
    } catch (error) {}

    return left(RequestFailure.serverError());
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_repository.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_service.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_mapper.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'patient_repository_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<IPatientRepository>(
      returnNullOnMissingStub: true, as: #MockPropertyRepositoy)
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockPropertyRepositoy _mock;
  late IPatientService _service;

  setUp(() {
    _mock = MockPropertyRepositoy();
    _service = PatientService(_mock);
  });

  test('when get result successful', () async {
    var patient = PatientMapper.fromData({
      "gender": "female",
      "name": {"title": "Miss", "first": "Alva", "last": "Træet"},
      "location": {
        "street": {"number": 4824, "name": "Eikelundveien"},
        "city": "Vikøy",
        "state": "Aust-Agder",
        "country": "Norway",
        "postcode": "9582",
        "coordinates": {"latitude": "-5.7570", "longitude": "150.3060"},
        "timezone": {"offset": "-2:00", "description": "Mid-Atlantic"}
      },
      "email": "alva.traeet@example.com",
      "login": {
        "uuid": "44a7ff03-4cb8-47cc-8e46-72f09b4f4880",
        "username": "brownzebra607",
        "password": "hondas",
        "salt": "Qs9sFFb7",
        "md5": "72f69e2c59cea47c88c2c6737b4237d9",
        "sha1": "7daa0e98480cfd40b01147b07c4cbb06b638eb81",
        "sha256":
            "3a9c4730842cdaa52158bef5e00799a64147599aaacd21423d58b6ea91d54437"
      },
      "dob": {"date": "1978-12-30T23:51:25.414Z", "age": 43},
      "registered": {"date": "2004-04-17T17:52:19.811Z", "age": 17},
      "phone": "32077432",
      "cell": "93592513",
      "id": {"name": "FN", "value": "30127840047"},
      "picture": {
        "large": "https://randomuser.me/api/portraits/women/18.jpg",
        "medium": "https://randomuser.me/api/portraits/med/women/18.jpg",
        "thumbnail": "https://randomuser.me/api/portraits/thumb/women/18.jpg"
      },
      "nat": "NO"
    });

    var expectedValue = <Patient>[patient];

    var request = PatientRequest();

    when(_mock.getPatients(request: request))
        .thenAnswer((_) async => Future.value(Right(expectedValue)));

    var response = await _service.getPatients(request: request);

    expect(response, equals(Right(expectedValue)));
  });

  test('when get result fails', () async {
    var expectedValue = RequestFailure.serverError();

    var request = PatientRequest();

    when(_mock.getPatients(request: request))
        .thenAnswer((_) async => Future.value(Left(expectedValue)));

    var response = await _service.getPatients(request: request);

    expect(response, equals(Left(expectedValue)));
  });
}

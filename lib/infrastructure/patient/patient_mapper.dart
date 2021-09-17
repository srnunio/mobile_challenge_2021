import 'package:mobile_challenge_2021/domain/patient/entities/address.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/date_of_birth.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/name.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';

class PatientMapper {
  static List<Patient> fromList(List<dynamic> data) {
    return data.map((data) => fromData(data)).toList();
  }

  static Patient fromData(Map<String, dynamic> data) {
    var idData = data['id'] as Map<String, dynamic>;
    return Patient(
        id: '${idData['name']}-${idData['value']}',
        name: Name.fromJson(data['name']),
        gender: data['gender'],
        email: data['email'],
        phone: data['phone'],
        picture: data['picture']['large'],
        nat: data['nat'],
        address: Address.fromJson(data['location']),
        dateOfBirth: DateOfBirth.fromJson(data['dob']),
        nationality: data['nat']);
  }
}

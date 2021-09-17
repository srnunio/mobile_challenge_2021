import 'package:mobile_challenge_2021/domain/patient/entities/address.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/date_of_birth.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/name.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';

class PatientMapper {
  static List<Patient> fromList(List<dynamic> data) {
    return data.map((item) => fromData(item)).toList();
  }

  static Patient fromData(Map<String, dynamic> data) {
    var idData = data['id'] as Map<String, dynamic>;

    var addressData = Address(
        street: Street.fromJson(data['location']['street']),
        city: data['city'],
        state: data['state'],
        country: data['country'],
        postcode: '${data['location']['postcode']}');

    return Patient(
        id: '${idData['name']}-${idData['value']}',
        name: Name.fromJson(data['name']),
        gender: data['gender'],
        email: data['email'],
        phone: data['phone'],
        picture: data['picture']['large'],
        address: addressData,
        dateOfBirth: DateOfBirth.fromJson(data['dob']),
        nationality: data['nat']);
  }
}

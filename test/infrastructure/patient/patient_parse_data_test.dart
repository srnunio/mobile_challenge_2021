import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_mapper.dart';

void main(){
  test('parse data', (){
    var result = false;
    try{
      var patient = PatientMapper.fromData({
        "gender": "female",
        "name": {
          "title": "Miss",
          "first": "Alva",
          "last": "Træet"
        },
        "location": {
          "street": {
            "number": 4824,
            "name": "Eikelundveien"
          },
          "city": "Vikøy",
          "state": "Aust-Agder",
          "country": "Norway",
          "postcode": "9582",
          "coordinates": {
            "latitude": "-5.7570",
            "longitude": "150.3060"
          },
          "timezone": {
            "offset": "-2:00",
            "description": "Mid-Atlantic"
          }
        },
        "email": "alva.traeet@example.com",
        "login": {
          "uuid": "44a7ff03-4cb8-47cc-8e46-72f09b4f4880",
          "username": "brownzebra607",
          "password": "hondas",
          "salt": "Qs9sFFb7",
          "md5": "72f69e2c59cea47c88c2c6737b4237d9",
          "sha1": "7daa0e98480cfd40b01147b07c4cbb06b638eb81",
          "sha256": "3a9c4730842cdaa52158bef5e00799a64147599aaacd21423d58b6ea91d54437"
        },
        "dob": {
          "date": "1978-12-30T23:51:25.414Z",
          "age": 43
        },
        "registered": {
          "date": "2004-04-17T17:52:19.811Z",
          "age": 17
        },
        "phone": "32077432",
        "cell": "93592513",
        "id": {
          "name": "FN",
          "value": "30127840047"
        },
        "picture": {
          "large": "https://randomuser.me/api/portraits/women/18.jpg",
          "medium": "https://randomuser.me/api/portraits/med/women/18.jpg",
          "thumbnail": "https://randomuser.me/api/portraits/thumb/women/18.jpg"
        },
        "nat": "NO"
      });
      result = true;
      print(patient.toJson());
    }catch(ex){ print(ex); }
    
    expect(result, true);
  });
}
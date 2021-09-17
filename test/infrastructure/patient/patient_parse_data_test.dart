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

  test('parse list data', (){
    var result = false;
    var data = [
      {
        "gender": "female",
        "name": {
          "title": "Mrs",
          "first": "Jessica",
          "last": "Lowe"
        },
        "location": {
          "street": {
            "number": 1426,
            "name": "Pearse Street"
          },
          "city": "Shannon",
          "state": "Wexford",
          "country": "Ireland",
          "postcode": 70948,
          "coordinates": {
            "latitude": "26.1934",
            "longitude": "11.6194"
          },
          "timezone": {
            "offset": "+7:00",
            "description": "Bangkok, Hanoi, Jakarta"
          }
        },
        "email": "jessica.lowe@example.com",
        "login": {
          "uuid": "78ad2adf-a113-428a-8c93-31cf6fd08c4b",
          "username": "brownelephant208",
          "password": "muffin1",
          "salt": "hgojGPpW",
          "md5": "277813b55c7a7cf32f0fa6bf847eb068",
          "sha1": "ef76f14ab64f0322e84178ac6dff34f8090a40af",
          "sha256": "cc3c303534d101cc0092bc7eafd2e15debfe20fe7020a3987523222ba25e1b9c"
        },
        "dob": {
          "date": "1987-11-26T22:39:19.139Z",
          "age": 34
        },
        "registered": {
          "date": "2018-11-10T19:45:55.252Z",
          "age": 3
        },
        "phone": "071-805-7374",
        "cell": "081-932-6499",
        "id": {
          "name": "PPS",
          "value": "0227754T"
        },
        "picture": {
          "large": "https://randomuser.me/api/portraits/women/37.jpg",
          "medium": "https://randomuser.me/api/portraits/med/women/37.jpg",
          "thumbnail": "https://randomuser.me/api/portraits/thumb/women/37.jpg"
        },
        "nat": "IE"
      },
      {
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
      }
    ];
    try{
      var patient = PatientMapper.fromList(data);
      result = true;
    }catch(ex){ print(ex); }

    expect(result, true);
  });
}
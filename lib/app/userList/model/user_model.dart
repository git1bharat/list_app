import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String username,
    required String email,
    @JsonKey(fromJson: _addressFromJson, toJson: _addressToJson)
    required Address address,
    required String phone,
    required String website,
    @JsonKey(fromJson: _companyFromJson, toJson: _companyToJson)
    required Company company,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// Helpers for Address
Address _addressFromJson(dynamic json) {
  if (json is String) {
    return Address.fromJson(jsonDecode(json));
  } else if (json is Map<String, dynamic>) {
    return Address.fromJson(json);
  } else {
    throw ArgumentError('Invalid type for Address');
  }
}

String _addressToJson(Address address) => jsonEncode(address.toJson());

// Helpers for Company
Company _companyFromJson(dynamic json) {
  if (json is String) {
    return Company.fromJson(jsonDecode(json));
  } else if (json is Map<String, dynamic>) {
    return Company.fromJson(json);
  } else {
    throw ArgumentError('Invalid type for Company');
  }
}

String _companyToJson(Company company) => jsonEncode(company.toJson());

@freezed
class Address with _$Address {
  factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required Geo geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Geo with _$Geo {
  factory Geo({
    required String lat,
    required String lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}

@freezed
class Company with _$Company {
  factory Company({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

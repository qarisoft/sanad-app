import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    @JsonKey(readValue: convertJ, name: 'latitude') @Default(0.0) double lat,
    @JsonKey(readValue: convertJ, name: 'longitude') @Default(0.0) double lng,
  }) = _LocationEntity;

  factory LocationEntity.fromJson(Map<String, dynamic> json) =>
      _$LocationEntityFromJson(json);

// factory LocationEntity.fromLatLng(LatLng location) {
//   return LocationEntity(lat: location.latitude, lng: location.longitude);
// }
}

double convertJ(Map<dynamic, dynamic> json, String name) {
  try {
    return double.parse(json[name]);
  } catch (e) {
    return 0.0;
  }
}

// extension LocationMapper on LocationEntity {
//   LatLng latLng() {
//     return LatLng(lat, lng);
//   }
// }

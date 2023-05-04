import 'package:latlong2/latlong.dart';

class MapMarker {
  final String? title;
  final String? address;
  final LatLng? location;
  final int? rating;

  MapMarker({
    required this.title,
    required this.address,
    required this.location,
    required this.rating,
  });
}

final mapMarkers = [
  MapMarker(
      title: 'Alexander The Great Restaurant',
      address: '8 Plender St, London NW1 0JT, United Kingdom',
      location: LatLng(51.5382123, -0.1882464),
      rating: 4),
];

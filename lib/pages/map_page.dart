import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:te_arcanis/constants.dart';

import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            minZoom: 5,
            maxZoom: 18,
            zoom: 13,
            center: LatLng(51.5090214, -0.1982948),
          ),
          layers: [
            TileLayerOptions(
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/{username}/{mapStyleId}/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
              additionalOptions: {
                'mapStyleId': AppConstants.mapBoxStyleId,
                'accessToken': AppConstants.mapBoxAccessToken,
                'username': AppConstants.mapBoxUsername
              },
            ),
          ],
        ),
      ],
    );
  }
}

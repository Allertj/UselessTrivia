import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class StreetMap extends StatelessWidget {
  StreetMap({super.key});

  final MapController mapController = MapController(
    initMapWithUserPosition: false,
    initPosition: GeoPoint(latitude: 52.4358055, longitude: 6.1737324),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

// or

  // final MapController controller = MapController.withPosition(
  //   initPosition: GeoPoint(
  //     latitude: 47.4358055,
  //     longitude: 8.4737324
  //     ,),
  //   areaLimit: BoundingBox(
  //     east: 10.4922941,
  //     north: 47.8084648,
  //     south: 45.817995,
  //     west:  5.9559113,
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overzicht'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: OSMFlutter(
              controller: mapController,
              staticPoints: [
                StaticPositionGeoPoint(
                    "hello",
                    const MarkerIcon(
                        icon: Icon(
                      Icons.location_history_rounded,
                      color: Colors.red,
                      size: 48,
                    )),
                    [GeoPoint(latitude: 52.4358055, longitude: 6.1737324)])
              ],
              trackMyPosition: false,
              initZoom: 12,
              minZoomLevel: 8,
              maxZoomLevel: 14,
              stepZoom: 1.0,
              userLocationMarker: UserLocationMaker(
                personMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.location_history_rounded,
                    color: Colors.red,
                    size: 48,
                  ),
                ),
                directionArrowMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 48,
                  ),
                ),
              ),
              roadConfiguration: const RoadOption(
                roadColor: Colors.yellowAccent,
              ),
              markerOption: MarkerOption(
                  defaultMarker: const MarkerIcon(
                icon: Icon(
                  Icons.person_pin_circle,
                  color: Colors.blue,
                  size: 56,
                ),
              )),
            )),
            // const SizedBox(height: 300, child: SampleAppPage()),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Open route'),
            ),
          ],
        ),
      ),
    );
  }
}

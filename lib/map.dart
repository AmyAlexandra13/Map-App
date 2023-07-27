import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


final myPosition = LatLng(18.5001200,-69.9885700);
const acces_token = 'pk.eyJ1IjoiYW15YWxleGFuZHJhMTMiLCJhIjoiY2xra2phNjMyMGVobzNkbzhmZ3o2bXhlaCJ9.djIqUA4FxbvIyGhMa-gQQw';


class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapp app screen'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: myPosition,
          minZoom: 5,
          maxZoom: 25,
          zoom: 18),
          nonRotatedChildren: [
            TileLayer(
              urlTemplate: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
              additionalOptions: {'accessToken': acces_token,
              'id': 'mapbox/streets-v12'},
            ),
            MarkerLayer(
              markers: [
                Marker(point: myPosition, builder: (context){
                  return Container(
                    child: const Icon(
                      Icons.person_pin,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  );  

                },
                ),
                ],
            ),
          ],

      ),
    );
  }
}
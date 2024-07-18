import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/config/app_icons.dart';
import 'package:flutter_test_application/config/app_strings.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(
        title: AppStrings.nearby,
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(44.53842, 18.66709),
          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // Plenty of other options available!
          ),
          /*      MarkerLayer(
            markers: [
              Marker(
                point: LatLng(44.53842, 18.66709),
                width: 30,
                height: 30,
                child: FlutterLogo(),
              ),
            ],
          ),
          */
          MarkerLayer(
            markers: [
              Marker(
                point: const LatLng(44.53842, 18.66709),
                width: 100,
                height: 30,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SvgPicture.asset(AppIcons.icLocation),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:virtualku/pages/location_list_page.dart';
import 'package:virtualku/pages/google_map_page.dart';
import 'package:virtualku/pages/ar_page.dart'; // Import ARPage

class LocationDetails extends StatelessWidget {
  final Location location;

  LocationDetails({required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location: ${location.name}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                location.imagePath,
                width: 512,
                height: 512,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                'Landmark: ${location.landmark}',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Details: ${location.details}',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoogleMapPage(
                        destinationLatitude: location.latitude,
                        destinationLongitude: location.longitude,
                      ),
                    ),
                  );
                },
                child: Text('Set Location'),
              ),
              SizedBox(height: 10), // Add some spacing between the buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ARPage(
                        // Pass any required parameters to ARPage constructor
                      ),
                    ),
                  );
                },
                child: Text('Go to AR Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

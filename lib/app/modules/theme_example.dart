import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TestThemePage extends StatefulWidget {
  const TestThemePage({Key? key}) : super(key: key);

  @override
  State<TestThemePage> createState() => _TestThemePageState();
}

class _TestThemePageState extends State<TestThemePage> {
  int currentPage = 0;

  List<Widget> pages = [SecondPage(),Placeholder(),Placeholder(),Placeholder(),Placeholder(),];

  var latitude = '';
  var longitude = '';
  var address = '';

  late StreamSubscription<Position> streamSubscription;


  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    getLocation();
    if (kDebugMode) {
      print('Latitude: $latitude');
      print('Longitude: $longitude');
      print('Address: $address');
    }
    super.initState();
  }

  getLocation() async {
    bool enabledServices;

    LocationPermission locationPermission;

    enabledServices = await Geolocator.isLocationServiceEnabled();
    if(!enabledServices){
        await Geolocator.openLocationSettings();
        return Future.error('Vui lòng cho phép quyền mở vị trí');
    }
     locationPermission = await Geolocator.checkPermission();
      if(locationPermission == LocationPermission.denied){
        locationPermission = await Geolocator.requestPermission();

        if(locationPermission == LocationPermission.denied){
          return Future.error('Quyền vị trí đã bị từ chối');
        }
      }
      if(locationPermission == LocationPermission.deniedForever){
        return Future.error('Quyền vị trí đã bị từ chối vĩnh viễn');
      }

      streamSubscription = Geolocator.getPositionStream().listen((Position position) {

        latitude = 'Latitude: ${position.latitude.toStringAsFixed(5)}';
        longitude = 'Longitude: ${position.longitude.toStringAsFixed(5)}';
        getAddressPosition(position);

      });
  }

  Future<void> getAddressPosition(Position position) async {
    List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];

    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    final coordinates = Coordinates(position.latitude, position.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    //print("${first.featureName} : ${first.addressLine}");

    address = 'Address: ${first.addressLine}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_rounded),
              hintText: "Search product"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              color: context.theme.colorScheme.primary,
            ),
          ),
          IconButton(
            onPressed: () {
              getLocation();
              print('$latitude');
              print('$longitude');
              print('$address');
            },
            icon: Icon(Icons.location_on_outlined),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: changePage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.shopping_basket_outlined),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Account',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double slideVal = 0.3;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Form',
              style: context.textTheme.titleMedium,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Placeholder",
              ),
            ),
            SizedBox(height: 12),
            TextFormField(
              initialValue: "Fill Form",
            ),
            SizedBox(height: 16),
            TextFormField(
              autofocus: true,
              initialValue: "Active",
              decoration: InputDecoration(),
            ),
            SizedBox(height: 16),
            TextFormField(
              initialValue: "Active",
              autofocus: true,
              decoration: InputDecoration(errorText: "Error"),
            ),
            Divider(height: 16),
            Text('Button', style: context.textTheme.titleMedium),
            SizedBox(height: 16),
            Wrap(
              spacing: 16,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated button'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Outlined button'),
                ),
              ],
            ),
            Divider(height: 30),
            Text('Chip (Label)', style: context.textTheme.titleMedium),
            SizedBox(height: 30),
            Wrap(
              spacing: 16,
              children: [
                RawChip(label: Text('Raw chip')),
                ActionChip(
                    label: Text('Action'), avatar: Icon(Icons.calendar_today)),
                ChoiceChip(
                  label: Text('Choice'),
                  selected: false,
                ),
                ChoiceChip(
                  label: Text('Choice selected'),
                  selected: true,
                ),
                FilterChip(
                  label: Text('Filter'),
                  selected: false,
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  label: Text('Filter selected'),
                  selected: true,
                  onSelected: (bool value) {},
                ),
                InputChip(
                  label: Text('Input chip'),
                  deleteIcon: Icon(Icons.close),
                ),
              ],
            ),
            Divider(height: 30),
            Text('Other', style: context.textTheme.titleMedium),
            ListTile(title: Text('List tile'),onTap: (){},leading: Icon(Icons.settings_outlined)),
            Slider(
                value: slideVal,
                onChanged: (val) {
                  setState(() {
                    slideVal = val;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

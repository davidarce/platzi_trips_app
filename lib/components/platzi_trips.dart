import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/home/home_trips.dart';
import 'package:platzi_trips_app/components/profile/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int _indexTap = 0;
  final List<Widget> widgetsChildren = [HomeTrips(), Container(), Container(), Container(), ProfileTrips()];

  void _onTapTapped(int index) {
    setState(() {
      _indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget titleItemBar = Container(height: 0.0);
    return Scaffold(
      body: widgetsChildren[_indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.deepPurple),
          child: BottomNavigationBar(
              onTap: _onTapTapped,
              currentIndex: _indexTap,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: titleItemBar),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: titleItemBar),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on), title: titleItemBar),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), title: titleItemBar),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: titleItemBar),
              ])),
    );
  }
}

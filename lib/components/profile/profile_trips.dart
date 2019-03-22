import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/profile/header_profile.dart';
import 'package:platzi_trips_app/components/profile/profile_information.dart';
import 'package:platzi_trips_app/components/profile/profile_menu.dart';
import 'package:platzi_trips_app/components/profile/card_image_profile_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderProfile("Profile"),
        ProfileInformation("David Arce", "davidarce@gmail.com"),
        ProfileMenu(),
        CardImageProfileList()
      ],
    );
  }
}

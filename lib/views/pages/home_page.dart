import 'package:flutter/material.dart';
import 'package:flutter_bloc/views/components/custom_slidable.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
          alignment: Alignment.bottomCenter,
              child: ProfileBanner(),
    ));
  }
}

class ProfileBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomSlidable();
  }
}



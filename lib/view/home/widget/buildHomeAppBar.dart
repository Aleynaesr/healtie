import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';

AppBar buildHomeAppBar() {
  return AppBar(
    leading: IconButton(onPressed: () {}, icon: const Icon(Icons.storefront_rounded, color: black)),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Center(child: Text("Healtie", style: TextStyle(color:black, fontFamily: 'Kalam', fontSize: 35),)),
    actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active, color: black)),
    ],

  );
}
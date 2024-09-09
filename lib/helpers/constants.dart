// URLS
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_app/app.dart';
import 'package:social_app/pages/messages.page.dart';
import 'package:social_app/pages/settings.page.dart';
import 'package:social_app/pages/status.page.dart';

const apiUrl = "http://192.168.1.66:2024";

// Bottom navigation pages
const navPages = <Widget>[
  MessagesPage(),
  StatusPage(),
  SettingsPage(),
];

// Bottom navigation items
var bottomItems = [
  bottomItem(
    label: "Chats",
    icon: Iconsax.messages,
    activeIcon: Iconsax.messages,
  ),
  bottomItem(
    label: "Status",
    icon: Iconsax.status4,
    activeIcon: Iconsax.status4,
  ),
  bottomItem(
    label: "Settings",
    icon: Iconsax.profile_circle,
    activeIcon: Iconsax.profile_circle,
  ),
];

// PADDINGS
const double xmPadding = 10.0; // Xtra Small
const double smPadding = 12.0; // Small
const double mdPadding = 14.0; // Medium
const double lgPadding = 16.0; // Large
const double xgPadding = 18.0; // Xtra Large

// RADIUS
const double xmRadius = 6.0; // Xtra Small
const double smRadius = 8.0; // Small
const double mdRadius = 10.0; // Medium
const double lgRadius = 12.0; // Large
const double xgRadius = 14.0; // Xtra Large

// DateTime
DateTime today = DateTime.now();


    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Color(0xFFF9F9F9),
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // );
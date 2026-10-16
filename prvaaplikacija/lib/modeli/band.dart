import 'package:flutter/material.dart';

class Bend {
  final String name;
  final String numberOfSongs;
  final String description;
  final IconData icon;

  const Bend({
    required this.name,
    required this.numberOfSongs,
    required this.description,
    required this.icon,
  });
}

const List<Bend> activities = [
  Bend(name: "Azra", 
  numberOfSongs: "150", 
  description: "Jugoslavenski rock sastav novog vala", 
  icon: Icons.,
  ),
  Bend(name: "", 
  numberOfSongs: "", 
  description: "", 
  icon: Icons.,
  ),
  Bend(name: "",
  numberOfSongs: "", 
  description: "", 
  icon: Icons.,
  ),
  Bend(name: "", 
  numberOfSongs: "", 
  description: "", 
  icon: Icons.,
  ),
  Bend(name: "", 
  numberOfSongs: "", 
  description: "", 
  icon: Icons.sports_basketball,
  ),
];
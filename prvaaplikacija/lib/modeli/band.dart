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

const List<Bend> bendovi = [
  Bend(
    name: "Azra",
    numberOfSongs: "150+ pjesama",
    description:
        "Kultni jugoslavenski i hrvatski rock sastav novog vala predvođen Branimirom Džonijem Štulićem.",
    icon: Icons.graphic_eq,
  ),
  Bend(
    name: "Iron Maiden",
    description:
        "Britanski heavy metal bend, jedan od najutjecajnijih i najpoznatijih predstavnika žanra u povijesti.",
    numberOfSongs: "160+ pjesama",
    icon: Icons.album,
  ),
  Bend(
    name: "Vojko V",
    description:
        "Poznati hrvatski reper i producent, prepoznatljiv po specifičnom humoru.",
    numberOfSongs: "45+ pjesama",
    icon: Icons.mic,
  ),
  Bend(
    name: "Megadeth",
    description:
        "Američki heavy/thrash metal sastav osnovan u Los Angelesu, sa njihovim poznatim gitaristom i pjevačom Dave Mustainom.",
    numberOfSongs: "200+ pjesama",
    icon: Icons.speaker,
  ),
  Bend(
    name: "Prljavo Kazalište",
    description:
        "Jedan od najpopularnijih hrvatskih rock sastava osnovan u zagrebačkoj četvrti Dubrava.",
    numberOfSongs: "130+ pjesama",
    icon: Icons.music_note,
  ),
];
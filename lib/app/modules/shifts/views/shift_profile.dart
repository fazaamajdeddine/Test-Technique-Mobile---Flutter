import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class ShiftView extends StatefulWidget {
  final String? company;
  final String? postName;
  final String? startAt;
  final String? endAt;
  final String? buyPrice;
  final String? bonus;
  final double latitude;
  final double longitude;
  const ShiftView({
    Key? key,
    this.company,
    this.postName,
    this.startAt,
    this.endAt,
    this.buyPrice,
    this.bonus,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  @override
  State<ShiftView> createState() => _ShiftViewState();
}

class _ShiftViewState extends State<ShiftView> {
  //String _address = ""; // create this variable
//
  //void getAdresseFromCordination() async {
  //  List<Placemark> newPlace =
  //      await placemarkFromCoordinates(widget.latitude, widget.longitude);
//
  //  Placemark placeMark = newPlace[0];
  //  String? name = placeMark.name;
  //  String? subLocality = placeMark.subLocality;
  //  String? locality = placeMark.locality;
  //  String? administrativeArea = placeMark.administrativeArea;
  //  String? postalCode = placeMark.postalCode;
  //  String? country = placeMark.country;
  //  String? address =
  //      "${name}, ${subLocality}, ${locality}, ${administrativeArea} ${postalCode}, ${country}";
//
  //  print(address);
//
  //  setState(() {
  //    _address = address;
  //  });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("assets/images/bistro.webp"),
            backgroundColor: Colors.transparent,
          ),
          Text(
            '${widget.company}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: const [
                Text(
                  "Ajourd'hui",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text('${widget.postName}')),
              ),
              Text(
                '${widget.buyPrice}\$/H',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Text(
                '${widget.startAt}'.toString().substring(10, 16) +
                    "-" +
                    '${widget.endAt}'.toString().substring(10, 16),
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: const [
                Icon(
                  Icons.add_location_outlined,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "48 Rue Sous le Fort, Québec, QC G1k 4G9",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: [
                const Icon(
                  Icons.monetization_on,
                  color: Colors.black87,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Bonus au travailleur:" + '${widget.bonus}\$/H',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: const [
                Icon(
                  Icons.pause_circle_filled_outlined,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Pause de 30 minutes",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: const [
                Icon(
                  Icons.bus_alert_sharp,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "stationnement gratuit",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: const [
                Icon(
                  Icons.bus_alert_sharp,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Pantaon noir, chemise noir",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: [
                Text(
                  "Responsable",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: const [
                Text(
                  "Gregorie Kovlaks",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                side: BorderSide(color: Colors.transparent)),
            onPressed: () {},
            height: 50,
            minWidth: 300,
            child: const Text(
              "Postuler",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:testtechniquemobileflutter/app/modules/home/views/bottom_nav.dart';

import '../../shifts/views/shift_profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List _data = [];
  @override
  void initState() {
    super.initState();
    readJson();
  }

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/ offered_shifts.json');
    final data = await json.decode(response);
    setState(() {
      _data = data["data"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 700,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  //Text(
                  //  "Shiftes Offerts",
                  //  style: TextStyle(
                  //    fontSize: 20,
                  //    fontWeight: FontWeight.bold,
                  //  ),
                  //),
                ],
              ),
              _data.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: _data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: ()  {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ShiftView(
                                    company: _data[index]["company"],
                                    startAt: _data[index]["start_at"],
                                    endAt: _data[index]["end_at"],
                                    buyPrice: _data[index]["buy_price"],
                                    bonus: _data[index]["bonus"].toString(),
                                    postName:_data[index]["post_name"],
                                    latitude: _data[index]["latitude"],
                                    longitude: _data[index]["longitude"],
                                    );
                                  },
                                ),
                              );
                            },
                            child: Card(
                              child: Container(
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          _data[index]["company"],
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
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
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                              child: Text(
                                                  _data[index]["post_name"])),
                                        ),
                                        Text(
                                          _data[index]["buy_price"] + "\$/H",
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "+" +
                                              _data[index]["bonus"].toString() +
                                              "\$/H",
                                          style: const TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          _data[index]["start_at"]
                                                  .toString()
                                                  .substring(10, 16) +
                                              "-" +
                                              _data[index]["end_at"]
                                                  .toString()
                                                  .substring(10, 16),
                                          style: const TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

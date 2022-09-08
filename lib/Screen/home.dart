import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String amount = "3,000";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Your Balance:",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          const Text(
                            '\Tsh',
                            style: TextStyle(
                              color: Color(0xff32d74b),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            amount,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff32d74b),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Your Expenses",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    children: const [
                      // ignore: prefer_const_literals_to_create_immutables, prefer_const_literals_to_create_immutables, prefer_const_literals_to_create_immutables
                      Text(
                        "All",
                        style: TextStyle(fontWeight: FontWeight.w700),
                        // ignore: prefer_const_literals_to_create_immutables
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: ListView.builder(
                    physics: const ScrollPhysics(),
                    itemCount: cardData.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      IconData ic = index == 0
                          ? Icons.movie
                          : index == 1
                              ? Icons.car_rental_outlined
                              : Icons.local_grocery_store;
                      var val =
                          double.parse(cardData[index]["c_amount"].toString());
                      var max =
                          double.parse(cardData[index]["t_amount"].toString());
                      return Column(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xff181818),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xff32d74b),
                                    ),
                                    height: 40,
                                    width: 40,
                                    child: Icon(
                                      ic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 25,
                                  left: 90,
                                  child: Text(
                                    cardData[index]["Task"].toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 30,
                                  child: Text(
                                    "\tsh ${cardData[index]["c_amount"].toString()}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  right: 25,
                                  child: Text(
                                    "\tsh ${cardData[index]["t_amount"].toString()}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 57,
                                  left: 90,
                                  child: Text(
                                    "\ ${cardData[index]["T_rem"].toString()}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Color(0xff32d74b),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: 30,
                                  right: 10,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: Color(0xff32d74b),
                                          thumbShape:
                                              const RoundSliderThumbShape(
                                                  enabledThumbRadius: 2)),
                                      child: Slider(
                                        value: val,
                                        min: 0,
                                        max: max,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var cardData = [
  {
    "Icon": Icons.electric_bolt,
    "Task": "Movies",
    "T_rem": "10 transactions",
    "c_amount": "15.500",
    "t_amount": "37.500",
  },
  {
    "Icon": Icons.car_rental,
    "Task": "Bolt",
    "T_rem": "6 transactions",
    "c_amount": "8.500",
    "t_amount": "10.000",
  },
  {
    "Icon": Icons.local_grocery_store,
    "Task": "Groceries",
    "T_rem": "4 10 transactions",
    "c_amount": "5.000",
    "t_amount": "7.000",
  },
];

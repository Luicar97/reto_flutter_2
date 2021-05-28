import 'package:flutter/material.dart';

class AlarmBodyCardWidget extends StatelessWidget {
  const AlarmBodyCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: PhysicalModel(
        color: Color.fromRGBO(71, 71, 71, 1),
        //shadowColor: Color.fromRGBO(71, 71, 71, 0.8),
        borderRadius: BorderRadius.circular(10),
        elevation: 7,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.white,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  children: [
                    SwitchListTile(
                      value: true,
                      title: Text('Alarm'),
                      onChanged: (bool value) {},
                      activeColor: Colors.black,
                      //activeTrackColor: Colors.black,
                    ),
                    Center(
                      child: Container(
                        width: constraints.maxWidth * 0.85,
                        child: Divider(),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxWidth * 0.05,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          //color: Colors.amber,
                          width: constraints.maxWidth * 0.2,
                          child: Icon(
                            Icons.nights_stay_outlined,
                            size: 30,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          //color: Colors.amber,
                          width: constraints.maxWidth * 0.8,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'to bed',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '23:30',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          color: Color.fromRGBO(161, 161, 161, 1),
                          height: constraints.maxWidth * 0.07,
                          width: 1,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          //color: Colors.amber,
                          width: constraints.maxWidth * 0.2,
                          child: Icon(
                            Icons.airline_seat_flat_sharp,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            //color: Colors.amber,
                            width: constraints.maxWidth * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    '8 hours sleep',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: 16,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          color: Color.fromRGBO(161, 161, 161, 1),
                          height: constraints.maxWidth * 0.07,
                          width: 1,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          //color: Colors.amber,
                          width: constraints.maxWidth * 0.2,
                          child: Icon(
                            Icons.wb_sunny,
                            size: 30,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          //color: Colors.amber,
                          width: constraints.maxWidth * 0.8,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '07:30',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'wake up',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: constraints.maxWidth * 0.1,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

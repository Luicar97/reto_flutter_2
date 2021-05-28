import 'package:flutter/material.dart';

class AlarmCardWidget extends StatelessWidget {
  const AlarmCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: PhysicalModel(
        color: Color.fromRGBO(71, 71, 71, 1),
        //shadowColor: Color.fromRGBO(71, 71, 71, 0.8),

        elevation: 8,
        borderRadius: BorderRadius.circular(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: const RadialGradient(
                          center: Alignment(0.0, 2.0),
                          focal: Alignment(0.0, 1.2),
                          colors: [
                            Color(0xffcbeefa),
                            Color(0xffebcae5),
                            Color(0xffe9b6c5),
                            Color(0xfffae49c),
                          ],
                          focalRadius: 1.0,
                        ),
                      ),
                      //color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 19,
                            ),
                            alignment: Alignment.center,
                            //color: Colors.blue,
                            height: constraints.maxWidth * 0.5,
                            width: constraints.maxWidth * 0.5,
                            child: Text(
                              'you did it! here you can manage your alarm, change time and other things',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: constraints.maxWidth * 0.5,
                            width: constraints.maxWidth * 0.5,
                            child: Image.asset(
                              'assets/img/relojv2.png',
                              /*
                              cacheHeight: 50,
                              cacheWidth: 50,
                              scale: 0.5,
                              height: 150,
                              */
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.close,
                          size: 15,
                        ),
                      ),
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

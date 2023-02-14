import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[TopProfile(), MidProfile(), Testresult()],
    ));
  }
}

class TopProfile extends StatelessWidget {
  const TopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 100.0),
          padding: EdgeInsets.all(20.0),
          width: 345,
          height: 155,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 139, 127, 199),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: (Icon(Icons.edit)),
        ),
        Positioned(
            left: 140.0,
            top: 150.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/hild.png'),
              radius: 40.0,
            )),
        Positioned(
            left: 130.0,
            top: 240.0,
            child: Text(
              'Hilda Dokubo',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xff0E0255)),
            )),
        Positioned(
            left: 30.0,
            top: 280.0,
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Address: ',
                      style: TextStyle(
                        color: Color(0XFF0E0255),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      children: [
                        TextSpan(
                          text: 'Kigali, Rwanda',
                          style: TextStyle(
                            color: Color(0xFFC12604),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 15.0,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Age: ',
                      style: TextStyle(
                        color: Color(0XFF0E0255),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      children: [
                        TextSpan(
                          text: '25',
                          style: TextStyle(
                            color: Color(0xFFC12604),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 15.0,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Blood Type: ',
                      style: TextStyle(
                        color: Color(0XFF0E0255),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      children: [
                        TextSpan(
                          text: 'O',
                          style: TextStyle(
                            color: Color(0xFFC12604),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ]),
                ),
              ],
            ))
      ]),
    );
  }
}

class MidProfile extends StatelessWidget {
  const MidProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Doctors Report',
            style: TextStyle(
                color: Color(0xFF0E0255),
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
          Container(
            width: 345,
            height: 155,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 127, 199),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Text(
              'On physical examination, there is a rash consisting of erythematous papules on the bilateral arms and legs. No pustules or vesicles are noted. The rash is mildly pruritic. There are no other significant findings on physical examination. The patients presentation is consistent with an allergic ...',
              style: TextStyle(color: Color(0xff0E0255), fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class Testresult extends StatelessWidget {
  const Testresult({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> resultname = <String>[
      'PregTest B Result',
      'Hormone L Result',
      'Skin A Test Result'
    ];
    return Container(
        margin: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Medical Report',
            style: TextStyle(
                color: Color(0xFF0E0255),
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: resultname.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                  width: 123,
                  margin: EdgeInsets.fromLTRB(0, 20.0, 20.0, 20.0),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(children: [
                        Positioned(
                          left: 10.0,
                          top: 10.0,
                          child: Icon(
                            Icons.cancel,
                            size: 15.0,
                            color: Colors.red,
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 35.0,
                          child: Icon(
                            Icons.download_for_offline,
                            size: 50.0,
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 20.0,
                          child: Text(
                            '${resultname[index]}',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff0E0255)),
                          ),
                        ),
                      ]))),
            ),
          )
        ])));
  }
}

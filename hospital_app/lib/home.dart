import 'package:flutter/material.dart';

class Homepag extends StatefulWidget {
  const Homepag({super.key});

  @override
  State<Homepag> createState() => _HomepagState();
}

class _HomepagState extends State<Homepag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children:<Widget>[Home(), HomeAppoint(), Homehealth()],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 34.0),
      child: const Material(
        child: ListTile(
          title: Text('Welcome,',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0E0255))),
          subtitle: Text(
            "Hilda",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color(0xFF0E0255)),
          ),
          trailing: Icon(
            Icons.notifications,
            size: 30,
            color: Color(0xFF0E0255),
          ),
        ),
      ),
    );
  }
}

class HomeAppoint extends StatelessWidget {
  const HomeAppoint({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> docname = <String>[
      'Dr. Alix Doe',
      'Dr. John Cena',
      'Dr Kate Stone'
    ];
    final List<String> doctype = <String>[
      'Gyneacologist',
      'Dermatologist',
      'Ophtamologist'
    ];
    final List<String> doctime = <String>['13:30', '11:00', '4:00'];
    final List<String> docavatar = <String>[
      'assets/avatar1.png',
      'assets/avatar2.png',
      'assets/avatar1.png'
    ];

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Today's Appointments",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14, color: Color(0xFF0E0255)),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: docname.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 260,
                margin: EdgeInsets.all(10),
                child: Material(
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), //<-- SEE HERE
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('${docavatar[index]}'),
                    ),
                    title: Text(
                      "${docname[index]}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "${doctype[index]}",
                      style: TextStyle(color: Colors.white),
                    ),
                    visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                    trailing: Text("${doctime[index]}",
                        style: TextStyle(
                            color: Color(0xFFC12604),
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.w500)),
                    tileColor: Color(0xFF0E0255),
                  ),
                ),
              ),
            ),
          )
        ])));
  }
}

class Homehealth extends StatelessWidget {
  const Homehealth({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tipstitle = <String>[
      'Food For a Healthy Heart',
      'What is Mental Health',
      'Understand Blood Type'
    ];
    final List<String> tipspara = <String>[
      'Eating a healthy diet is one of the most important steps you can take to maintain a healthy heart. Your heart requires the right nutrients and energy to function optimally, and a healthy diet can help reduce your risk of heart disease, stroke, and other cardiovascular problems...',
      'Mental health refers to a person overall emotional, psychological, and social well-being. It encompasses a range of factors that influence an individual thoughts, feelings, and behavior, and it can be impacted by a range of biological, environmental...',
      'Understanding your blood type is important for several reasons. Blood type is determined by the presence or absence of certain antigens on the surface of red blood cells. There are four main blood types: A, B, AB, and O.The ABO blood system is the most important blood type...'
    ];
    final List<String> doctime = <String>['13:30', '11:00', '4:00'];
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Daily Health Tips",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14, color: Color(0xFF0E0255)),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: tipstitle.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                        height: 300,
                        width: 150,
                        margin: EdgeInsets.all(10),
                        child: Card(
                          color: Color(0xFFC19804),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image: AssetImage("assets/health1.png"),
                                    height: 110,
                                    fit: BoxFit.cover,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                                child: Column(children: [
                                  Text(
                                    "${tipstitle[index]}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${tipspara[index]}",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                                  )
                                ]),
                              ),
                              TextButton(
                                child: Text(
                                  "Read More",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 11),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      )))
        ])));
  }
}

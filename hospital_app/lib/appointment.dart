import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  @override
  AppointmentState createState() => AppointmentState();
}

class AppointmentState extends State<Appointment> {
  // create a list of items for the dropdown
  var item = ['General Check-up', 'Dental', 'Eye', 'Test', 'Other'];
  var item2 = ['10:00', '10:30', '11:00', '11:30', '12:00'];
  var item3 = ['Dr. John', 'Dr. Jane', 'Dr. Joe', 'Dr. Jill', 'Dr. Jack'];

  // create a variable for the selected item
  var currentItemSelected = 'General Check-up';
  var currentItemSelected2 = '10:00';
  var currentItemSelected3 = 'Dr. John';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // Top Container that contains the title and stacked over one another
          Stack(
            children: <Widget>[
              // The first container that contains the blue background
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF0E0255),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                  ),
                ),
              ),

              // The second container that contains the white background
              Positioned(
                top: 0,
                left: 0,
                right: 40,
                bottom: 30,
                child: Container(
                  height: 100,

                  // create the width of the container to be the same as the parent
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),
              ),

              // The third container that contains the title
              Positioned(
                top: 50,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Book Appointment',
                      style: TextStyle(
                        color: Color(0xFF0E0255),
                        fontSize: 24,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // The second container that contains the date and calendar icon which is in a row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: Text(
                  'Pick a date',
                  style: TextStyle(
                    color: Color(0xFF0E0255),
                    fontSize: 20,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 50),
                child: Icon(
                  Icons.calendar_today,
                  color: Color(0xFF0E0255),
                  size: 30,
                ),
              )
            ],
          ),

          // Stack widget that contains the dropdown button and a background container
          Stack(
            children: <Widget>[
              // The first container that contains the blue background
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(69, 14, 2, 85),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              // The second container that contains the title of the dropdown button
              Container(

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text('Type of Appointment',
                          style: TextStyle(
                            color: Color(0xFF0E0255),
                            fontSize: 15,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          )),
                    ),

                    // The dropdown button container that will be used to edit the displayed srop down button
                    Container(
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(top: 20, left: 40, right: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF0E0255),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0E0255),
                            blurRadius: 2,
                            offset: Offset(2, -2),
                          ),
                        ],
                      ),

                      // The dropdown button that contains the list of items
                      child: DropdownButton<String>(
                        items: item.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 10)),
                                Text(dropDownStringItem),
                                SizedBox(
                                    width:
                                        80), // Add spacing between text and icon
                              ],
                            ),
                          );

                          // convert the list of items to a list of dropdown menu items
                        }).toList(),

                        // create a variable for the selected item
                        // change the state of the selected item when a new item is selected
                        onChanged: (newValueSelected) {
                          setState(() {
                            this.currentItemSelected = newValueSelected!;
                          });
                        },

                        // set the value of the selected item
                        value: currentItemSelected,
                        style: TextStyle(
                          color: Color(0xFF0E0255),
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),

                        // remove the underline of the dropdown button
                        underline: SizedBox.shrink(),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF0E0255),
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // The next 2 containers are the samev as the containers above
              //  The only difference is that they are used to display the time of the appointment and the specialist
              // and also the padding of the top of the container is different
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: Text('Time of Appointment',
                          style: TextStyle(
                            color: Color(0xFF0E0255),
                            fontSize: 15,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(top: 20, left: 40, right: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF0E0255),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0E0255),
                            blurRadius: 2,
                            offset: Offset(2, -2),
                          ),
                        ],
                      ),
                      child: DropdownButton<String>(
                        items: item2.map((String dropDownStringItem2) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 10)),
                                Text(dropDownStringItem2),
                                SizedBox(
                                    width:
                                        180), // Add spacing between text and icon
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (newValueSelected2) {
                          setState(() {
                            this.currentItemSelected2 = newValueSelected2!;
                          });
                        },
                        value: currentItemSelected2,
                        style: TextStyle(
                          color: Color(0xFF0E0255),
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),
                        underline: SizedBox.shrink(),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF0E0255),
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 280),
                      child: Text('Specialist',
                          style: TextStyle(
                            color: Color(0xFF0E0255),
                            fontSize: 15,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(top: 20, left: 40, right: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF0E0255),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0E0255),
                            blurRadius: 2,
                            offset: Offset(2, -2),
                          ),
                        ],
                      ),
                      child: DropdownButton<String>(
                        items: item3.map((String dropDownStringItem3) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 10)),
                                Text(dropDownStringItem3),
                                SizedBox(
                                    width:
                                        150), // Add spacing between text and icon
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (newValueSelected3) {
                          setState(() {
                            this.currentItemSelected3 = newValueSelected3!;
                          });
                        },
                        value: currentItemSelected3,
                        style: TextStyle(
                          color: Color(0xFF0E0255),
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),
                        underline: SizedBox.shrink(),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF0E0255),
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // This is the submit button container
              Container(
                margin: EdgeInsets.only(top: 400, left: 130),
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF0E0255),
                  borderRadius: BorderRadius.circular(10),
                ),

                //  The text buton which does nothing on pressed
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                content: Text(
                                    'Successfully Booked!'),

                                // add an action to the dialog box to close the dialog box when clicked
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        'Close',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              ));
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
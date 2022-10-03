import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  /*when button cleck a alert send*/
  Future addworkTimer(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Add",
              style: TextStyle(
                color: Color(0xFF1c7589),
              ),
              textAlign: TextAlign.center,
            ),
            content: Container(
              height: 150.0,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        hintText: "Work Name",
                        filled: true,
                        fillColor: Color(0xFF73d6ff),
                        focusColor: Color(0xFF31d6ff)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                      hintText: "Work Time in Munites",
                      filled: true,
                      fillColor: Color(0xFF73d6ff),
                      focusColor: Color(0xFF31d6ff),
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Add'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancle'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /*total widget designe need a coiloum arrange stape by stape*/
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InputChip(
                  deleteIconColor: Colors.white,
                  onPressed: () {},
                  backgroundColor: Color(0xFF3198be),
                  label: Text(
                    'Work',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onDeleted: () {},
                ),
                InputChip(
                  deleteIconColor: Colors.white,
                  onPressed: () {},
                  backgroundColor: Color(0xFF3198be),
                  label: Text(
                    'Break',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onDeleted: () {},
                ),
                MaterialButton(
                  onPressed: () {
                    addworkTimer(context);
                  },
                  child: Icon(Icons.add),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: CircularPercentIndicator(
              radius: constraints.maxWidth > constraints.maxHeight
                  ? constraints.maxHeight * 0.40
                  : constraints.maxWidth * 0.40,
              lineWidth: 10.0,
              percent: 1,
              center: Text(
                '00.00',
                style: TextStyle(
                  fontSize: 28.00,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 4, 100, 179),
                ),
              ),
              progressColor: Color.fromARGB(255, 0, 80, 145),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xFF3198be),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Stop',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xFF3198be),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}

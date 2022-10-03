import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            title: Text("Add"),
            content: Container(
              height: 150.0,
              child: Column(
                children: [],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('add'),
              ),
              TextButton(
                onPressed: () {},
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
              radius: 180,
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

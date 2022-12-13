import 'package:bmi_calculator_ipnet/calculator_brain.dart';
import 'package:bmi_calculator_ipnet/screens/resultpage.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/myiconwidget.dart';
import '../constants.dart';
import '../components/rounded_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int ma_taille = 180;
  int mon_age = 15;
  int mon_poids = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ReusableCard(
                largeur: 170.0,
                couleur: Colors.teal,
                containerChild: MyIconWidget(
                  icon: FontAwesomeIcons.mars,
                  gender: 'HOMME',
                ),
              ),
              ReusableCard(
                largeur: 170.0,
                couleur: Colors.teal,
                containerChild: MyIconWidget(
                  icon: FontAwesomeIcons.venus,
                  gender: 'FEMME',
                ),
              ),
            ],
          ),
          ReusableCard(
            largeur: double.infinity,
            couleur: Colors.teal,
            containerChild: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(ma_taille.toString(), style: kMyTextStyle),
                        const Text('cm'),
                      ],
                    ),
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: const Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: const Color(0xFF8D8E98),
                    overlayColor: const Color(0x29EB1555),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 25.0),
                  ),
                  child: Slider(
                    value: ma_taille.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        ma_taille = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              ReusableCard(
                largeur: 170.0,
                couleur: Colors.teal,
                containerChild: Column(
                  children: [
                    const Text(
                      'Poids',
                      style: kMyTextStyle,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mon_poids.toString(),
                          style: kMyTextStyle,
                        ),
                        const Text('KG')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (mon_poids != 0) {
                                  mon_poids--;
                                } else {}
                              });
                            }),
                        RoundedButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                mon_poids++;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
              ReusableCard(
                largeur: 170.0,
                couleur: Colors.teal,
                containerChild: Column(
                  children: [
                    const Text(
                      'Age',
                      style: kMyTextStyle,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mon_age.toString(),
                          style: kMyTextStyle,
                        ),
                        const Text('ans')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (mon_age != 0) {
                                  mon_age--;
                                } else {}
                              });
                            }),
                        RoundedButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                mon_age++;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            height: 80.0,
            width: double.infinity,
            color: const Color(0xFFEB1555),
            child: TextButton(
              onPressed: () {
                CalculatorBrain cal = CalculatorBrain(taille: ma_taille, poids: mon_poids);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                  mon_bmi: cal.calculateBMI(),
                  mon_resultat: cal.getResult(),
                  interpretation: cal.getInterpretation()
                )));
              },
              child: const Center(
                child: Text(
                  'CALCULER BMI',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

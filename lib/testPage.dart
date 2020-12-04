import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class testPage extends StatefulWidget {
  @override
  _testPageState createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  double _redvalue = 255.0;
  double _greenvalue = 255.0;
  double _bluevalue = 255.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 30.0),
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 15.0, color: Colors.white),
                    color: Color.fromRGBO(_redvalue.round(),
                        _greenvalue.round(), _bluevalue.round(), 1.0),
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black87,
                          offset: Offset(0.0, 8.0),
                          blurRadius: 30.0)
                    ]),
                width: 250.0,
                height: 250,
                isLive: true,
                hourHandColor: Colors.black,
                minuteHandColor: Colors.black,
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.red.withOpacity(0.7),
                  inactiveTrackColor: Colors.red.withOpacity(0.1),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.red,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.red.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)),
              child: Slider(
                value: _redvalue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _redvalue = value;
                    print(_redvalue);
                  });
                },
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.green.withOpacity(0.7),
                  inactiveTrackColor: Colors.green.withOpacity(0.1),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.green,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.green.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)),
              child: Slider(
                value: _greenvalue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _greenvalue = value;
                    print(_greenvalue);
                  });
                },
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.blue.withOpacity(0.7),
                  inactiveTrackColor: Colors.blue.withOpacity(0.1),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.blue,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.blue.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0)),
              child: Slider(
                value: _bluevalue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    _bluevalue = value;
                    print(_bluevalue);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TemperPage extends StatefulWidget {
  @override
  State<TemperPage> createState() => _Temperater();
}

//--------------
class _Temperater extends State<TemperPage> {
  final _controller = TextEditingController();

  var _feedback = '';
  var ans = 0.0;

//-------------
  void ClickCeltoFah() {
    var Num = double.tryParse(_controller.text);
    if (Num == null) {
      setState(() {
        _feedback = 'Please enter a value to convert.';
      });
    } else if (Num == 0) {
      //เช็คค่าที่ไม่ใช่ตัวเลข
    } else {
      ans = Num * 1.8 + 32;
      setState(() {
        _feedback = '$Num Celsius = $ans Fahrenheit';
      });
    }
  }

  void ClickCeltoKel() {
    var Num = double.tryParse(_controller.text);
    if (Num == null) {
      setState(() {
        _feedback = 'Please enter a value to convert.';
      });
    } else if (Num == 0) {
      //เช็คค่าที่ไม่ใช่ตัวเลข
    } else {
      ans = Num + 273.15;
      setState(() {
        _feedback = '$Num Celsius = $ans Kelvin';
      });
    }
  }

  void ClickFahtoCal() {
    var Num = double.tryParse(_controller.text);
    if (Num == null) {
      setState(() {
        _feedback = 'Please enter a value to convert.';
      });
    } else if (Num == 0) {
      //เช็คค่าที่ไม่ใช่ตัวเลข
    } else {
      ans = (Num - 32) / 1.8;
      setState(() {
        _feedback = '$Num Fahrenheit = $ans Celsius';
      });
    }
  }

  void ClickFahtoKel() {
    var Num = double.tryParse(_controller.text);
    if (Num == null) {
      setState(() {
        _feedback = 'Please enter a value to convert.';
      });
    } else if (Num == 0) {
      //เช็คค่าที่ไม่ใช่ตัวเลข
    } else {
      ans = (Num + 459.67) * 1.8;
      setState(() {
        _feedback = '$Num Fahrenheit = $ans Kelvin';
      });
    }
  }

  void ClickKeltoCal() {
    var Num = double.tryParse(_controller.text);
    if (Num == null) {
      setState(() {
        _feedback = 'Please enter a value to convert.';
      });
    } else if (Num == 0) {
      //เช็คค่าที่ไม่ใช่ตัวเลข
    } else {
      ans = Num - 273.15;
      setState(() {
        _feedback = '$Num Kelvin = $ans Celsius';
      });
    }
  }

  void ClickKeltoFah() {
    var Num = double.tryParse(_controller.text);
    if (Num == null) {
      setState(() {
        _feedback = 'Please enter a value to convert.';
      });
    } else if (Num == 0) {
      //เช็คค่าที่ไม่ใช่ตัวเลข
    } else {
      ans = (Num * 1.8) - 459.67;
      setState(() {
        _feedback = '$Num Kelvin = $ans Fahrenheit';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Temperature Converter'),
          TextField(
            //controller: TextEditingController(),
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a number',
            ),
          ),
          ElevatedButton(
            //ชื่อเมธอดที่จะส่งค่าไป
            onPressed: ClickCeltoFah,
            child: const Text('Celsius to Fahrenheit'),
          ),
          ElevatedButton(
            //ชื่อเมธอดที่จะส่งค่าไป
            onPressed: ClickCeltoKel,
            child: const Text('Celsius to Kelvin'),
          ),
          ElevatedButton(
            //ชื่อเมธอดที่จะส่งค่าไป
            onPressed: ClickFahtoCal,
            child: const Text('Fahrenheit to Celsius'),
          ),
          ElevatedButton(
            //ชื่อเมธอดที่จะส่งค่าไป
            onPressed: ClickFahtoKel,
            child: const Text('Fahrenheit to Kelvin'),
          ),
          ElevatedButton(
            //ชื่อเมธอดที่จะส่งค่าไป
            onPressed: ClickKeltoCal,
            child: const Text('Kelvin to Celsius'),
          ),
          ElevatedButton(
            //ชื่อเมธอดที่จะส่งค่าไป
            onPressed: ClickKeltoFah,
            child: const Text('Kelvin to Fahrenheit'),
          ),
          Text(_feedback),
        ],
      ),
    );
  }
}

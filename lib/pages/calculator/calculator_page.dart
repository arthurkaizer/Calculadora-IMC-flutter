import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  String textInfo = "Informe seus dados";
  
  void _calculateIMC(){
    double height = double.parse(heightController.text)/100;
    double weight = double.parse(weightController.text);

    double imc = weight/(height * height);

    if(imc < 18.5){
      textInfo = "Abaixo do peso ${imc.toStringAsPrecision(2)}";
    }else if(imc <= 24.9){
      textInfo = "No peso ${imc.toStringAsPrecision(2)}";
    }else if(imc <= 29.9){
      textInfo = "Acima do peso ${imc.toStringAsPrecision(2)}";
    }else if(imc <= 34.9){
      textInfo = "Obesidade grau I ${imc.toStringAsPrecision(2)}";
    }else if(imc <= 39.9){
      textInfo = "Obesidade grau II ${imc.toStringAsPrecision(2)}";
    }else{
      textInfo = "Obesidade grau III ${imc.toStringAsPrecision(2)}";
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Image.asset('assets/images/logo_home_1.png'),
        title: Text('Calculadora IMC'),
        actions: [
          GestureDetector(
            onTap: () => {
              //call function refresh weight and  height
            },
            child: Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 36)),
            Image.asset(
              'assets/images/icon_person.png',
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 47,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: weightController,
                decoration: InputDecoration(
                  hintText: 'Peso (kg)',
                  contentPadding: EdgeInsets.only(bottom: 15),
                  hintStyle: TextStyle(
                    color: Color(0xFF767676),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 38.5)),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: heightController,
                decoration: InputDecoration(
                  hintText: 'Altura (cm)',
                  contentPadding: EdgeInsets.only(bottom: 15),
                  hintStyle: TextStyle(
                    color: Color(0xFF767676),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 33.5),
              width: 300,
              height: 50,
              child: ElevatedButton(
                child: const Text('calcular'),
                onPressed: () {
                  setState(() {
                    _calculateIMC(); 
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Text(textInfo)
          ],
        ),
      ),
    );
  }
}

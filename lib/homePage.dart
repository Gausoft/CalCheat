import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  //logical part
    double numberOne = 0.0 , numberTwo = 0.0, ans = 0.0;
    final TextEditingController t1 = new TextEditingController();
    final TextEditingController t2 = new TextEditingController();

    void addition(){
      setState(() {
              numberOne = double.parse(t1.text);
              numberTwo = double.parse(t2.text);
              ans = numberOne + numberTwo;
            });
    }
    void substraction(){
      setState(() {
              numberOne = double.parse(t1.text);
              numberTwo = double.parse(t2.text);
              ans = numberOne - numberTwo;
            });
    }

    void multiply(){
      setState(() {
              numberOne = double.parse(t1.text);
              numberTwo = double.parse(t2.text);
              ans = numberOne * numberTwo;
            });
    }

    void divide(){
      setState(() {
              numberOne = double.parse(t1.text);
              numberTwo = double.parse(t2.text);
              ans = numberOne / numberTwo;         
            });
    }

    void resetCal(){
      setState(() {
              ans = 0.0;       
              t1.text = "";
              t2.text = "";
            });
    }
//----------------------------------------------------------------------------------------------    

  //UI
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: new AppBar(
      title: new Text("CalCheat"),
       ),
       body: new Container(
         padding: const EdgeInsets.all(30.0),
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[  
             new Text("Answer = $ans",
             style: new TextStyle(
               fontSize: 40.0,
               color: Colors.black87,
               fontFamily: "Raleway"
             ),
            ),

        //Padding
        new Padding(
          padding: EdgeInsets.all(10.0),
        ),

             new TextField(
               keyboardType: TextInputType.number,
               decoration: new InputDecoration(
                 hintText: "Enter the number one"
               ), 
               controller: t1, 
             ),
             new TextField(
               keyboardType: TextInputType.number,
               decoration: new InputDecoration(
                 hintText: "Enter the number two"
               ),
               controller: t2,
             ),
             new Padding(
               padding: const EdgeInsets.only(top: 20.0),
             ),
             new Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 new MaterialButton(
                   child: new Text("+"),
                   onPressed: () {
                     addition();                        //Calling the function to execute 
                   },
                   color: Colors.greenAccent,
                 ),
                 new MaterialButton(
                   child: new Text("-"),
                   onPressed: () {
                     substraction();
                   },
                   color: Colors.greenAccent,
                 ),
               ]
             )
             ,
             new Padding(
               padding: const EdgeInsets.only(top: 20.0),
             ),
             new Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 new MaterialButton(
                   child: new Text("x"),
                   onPressed: () {
                     multiply();
                   },
                   color: Colors.greenAccent,
                 ),
                 new MaterialButton(
                   child: new Text("/"),
                   onPressed: () {
                     divide();
                   },
                   color: Colors.greenAccent,
                 ),
               ],
             ),
             new Padding(
               padding: const EdgeInsets.only(top: 20.0),
             ),
             new Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
               new MaterialButton(
                   child: new Text("C"),
                   onPressed: () {
                     resetCal();
                   },
                   color: Colors.greenAccent,
                 )
             ],
             )
           ],
         ),
       ),
    );
  }
}
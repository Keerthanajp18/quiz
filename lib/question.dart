import 'package:flutter/material.dart';
import 'package:quiz/questionlist.dart';

class que extends StatefulWidget {
  const que({Key? key}) : super(key: key);

  @override
  State<que> createState() => _queState();
}

class _queState extends State<que> {
  List question=[
    Quiz(qus:'linnet is single',ans:true),
    Quiz(qus:'diya is a ammayi',ans:true),
    Quiz(qus:'hamna have nice voice',ans:false),
    Quiz(qus:'linnet is a pottathi',ans:true),
    Quiz(qus:'sreya sings very well',ans:false),
    Quiz(qus:'lakshmi is super',ans:false),
    Quiz(qus:'keerthana is a nice girl',ans:true),
    Quiz(qus:'shamil is sugu',ans:true),
    Quiz(qus:'sana have blood fear',ans:true),
    Quiz(qus:'sinan is a singer',ans:true),
  ];

  int q_no=0;
  String result='';
  void nextqns(){

    if(q_no<question.length){
      q_no++;
    }
  }
  void check(bool answer){
    print(answer);
    if(answer==question[q_no].ans) {
      result='✔';
    } else{
        result='✖';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              question[q_no].qus,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text(
                  'TRUE',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  setState((){
                    check(true);
                    nextqns();

                  });

                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text(
                  'FALSE',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  setState((){
                    check(false);
                    nextqns();

                  });

                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}

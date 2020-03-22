import 'package:flutter/material.dart';





class MyGridView {
  //final Function startTimer;
  // MyGridView(this.startTimer);
 final Function startTimer;

 MyGridView(this.startTimer)
  GestureDetector getStructuredGridCell(name,startTimer) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      onTap : () {
        print("onTap called.");
        () => startTimer;
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              
              Container(
                alignment: Alignment.center,
                child: Text(name),
              )
            ],
          )),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 3,
      childAspectRatio: 0.65,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("1"),
        getStructuredGridCell("2"),
        getStructuredGridCell("3"),
        getStructuredGridCell("4"),
        getStructuredGridCell("5"),
        getStructuredGridCell("6"),
      ],
    );
  }
}










 /*
class MyGridView {

 
  GestureDetector getStructuredGridCell(name, image) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      onTap: () {
        print("onTap called.");
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            print("sdsd")
          )),
    );
  }   

  GridView build() {
    return GridView.count(
        primary: true,
        padding: const EdgeInsets.all(1.0),
        crossAxisCount: 3,
        childAspectRatio: 0.85,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: List.generate(9, (index) {
          return RaisedButton(
            onPressed: null,
            child: Container(
              child: CircleAvatar(
                child: Text(
                  '$index',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          );
        }));
  }
}
*/
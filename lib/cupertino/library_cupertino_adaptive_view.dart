import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryCupertinoAdaptiveView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text("Found: Cupertino + Adaptive")),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoSlider(
                value: 1,
                onChanged: (_) {},
                activeColor: CupertinoColors.systemRed,
              ),
              Material(
                  child: Slider.adaptive(
                      value: 1, onChanged: (_) {}, activeColor: Colors.blue)),
              CupertinoSwitch(
                  activeColor: CupertinoColors.systemRed, value: true, onChanged: (_) {}),
              Switch.adaptive(activeColor: Colors.blue, value: true, onChanged: (_) {}),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Icon(CupertinoIcons.share, color: Colors.red),
              ),
              Icon(Icons.adaptive.share, color: Colors.blue),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: CupertinoActivityIndicator(),
              ),
              CircularProgressIndicator.adaptive(backgroundColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
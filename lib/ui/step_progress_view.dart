import 'package:flutter/material.dart';

class StepProgressView extends StatelessWidget {

  final double _width;
  final List<Icon> _icons;
  final List<String> _titles;
  final int _curStep;
  final Color _activeColor;
  final Color? _inactiveColor = Colors.grey[100];
  final double lineWidth = 4.0;

  StepProgressView({
    required List<Icon> icons,
    required int curStep,
    required List<String> titles,
    required double width,
    required Color color}) :
        _icons = icons,
        _titles = titles,
        _curStep = curStep,
        _width = width,
        _activeColor = color,
        assert(curStep > 0 == true && curStep <= icons.length),
        assert(width > 0);

  Widget build (BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0,),
        width: this._width,
        child: Column(
          children: <Widget>[

            Row(
              children: _iconViews(),
            ),

            SizedBox(height: 10,),

            if (_titles != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _titleViews(),
              ),

          ],
        ));
  }

  List<Widget> _iconViews() {
    var list = <Widget>[];
    _icons.asMap().forEach((i, icon) {

      //colors according to state
      var circleColor = (i == 0 || _curStep > i + 1)
          ? _activeColor
          : _inactiveColor;

      var lineColor = _curStep > i + 1
          ? _activeColor
          : _inactiveColor;

      var iconColor = (i == 0 || _curStep > i + 1)
          ? _inactiveColor
          : _activeColor;

      list.add(

        //dot with icon view
        Container(
          width: 30.0,
          height: 30.0,
          padding: EdgeInsets.all(0),
          child: icon
        ),
      );

      //line between icons
      if (i != _icons.length - 1) {
        list.add(
            Expanded(
                child: Container(height: lineWidth, color: lineColor,)
            )
        );
      }
    });

    return list;
  }

  List<Widget> _titleViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, text) {
      list.add(Text(text, style: TextStyle(color: _activeColor)));
    });
    return list;
  }


}
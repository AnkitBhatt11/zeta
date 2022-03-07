import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/themes/color.dart';

class AnimatedSwipeToConfirm extends StatefulWidget {
  const AnimatedSwipeToConfirm({
    Key? key,
    this.height = 60,
    this.borderWidth = 3,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  final double? height;
  final double? borderWidth;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  @override
  _AnimatedSwipeToConfirmState createState() => _AnimatedSwipeToConfirmState();
}

class _AnimatedSwipeToConfirmState extends State<AnimatedSwipeToConfirm> {
  late double _maxWidth;
  late double _handleSize;
  double _dragValue = 0;
  double _dragWidth = 0;
  bool _confirmed = false;

  @override
  Widget build(BuildContext context) {
    _handleSize = (widget.height! - (widget.borderWidth! * 2));
    return LayoutBuilder(builder: (context, constraint) {
      _maxWidth = constraint.maxWidth;
      return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: widget.height,
        decoration: BoxDecoration(
          color: _confirmed ? textBlueColor : white,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Center(
          child: Stack(
            children: [
              Center(
                child: Text(
                  _confirmed ? "Confirmed" : "PROCEED TO PAY",
                  style: GoogleFonts.notoSans(
                    fontSize: 16,
                    color: _confirmed ? Colors.white : textBlueColor,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                width: _dragWidth <= _handleSize ? _handleSize : _dragWidth,
                child: Row(
                  children: [
                    Expanded(child: SizedBox.shrink()),
                    GestureDetector(
                      onHorizontalDragUpdate: _onDragUpdate,
                      onHorizontalDragEnd: _onDragEnd,
                      child: Container(
                        width: _handleSize,
                        height: _handleSize,
                        decoration: BoxDecoration(
                          color: textBlueColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragValue = (details.globalPosition.dx) / _maxWidth;
      _dragWidth = _maxWidth * _dragValue;
    });

  }

  void _onDragEnd(DragEndDetails details) {
    if (_dragValue > .9) {
      _dragValue = 1;
    } else {
      _dragValue = 0;
    }

    setState(() {
      _dragWidth = _maxWidth * _dragValue;
      _confirmed = _dragValue == 1;
    });

    if (_dragValue == 1) {
      widget.onConfirm();
      setState(() {
        _dragValue = 0;
        _dragWidth = 0;
        _confirmed = false;
      });
    } else {
      widget.onCancel();
    }
  }
}
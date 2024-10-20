import 'package:flutter/material.dart';

class DraggableSheet extends StatelessWidget {
  final Widget draggableSheetBody;
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;
  const DraggableSheet({
    super.key,
    required this.draggableSheetBody,
    required this.initialChildSize,
    required this.minChildSize,
    required this.maxChildSize,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 10,
                blurRadius: 100,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: 60.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
                child: draggableSheetBody,
              ),
            ],
          ),
        );
      },
    );
  }
}

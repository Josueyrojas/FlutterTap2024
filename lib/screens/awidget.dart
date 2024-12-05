import 'package:flutter/material.dart';
import 'package:challenge/screens/attribute.dart';
import 'package:challenge/screens/details.dart';
import 'dart:math' as math;

import 'model.dart';

// Degree / Radians converter
const double degrees2Radians = math.pi / 180.0;
const double radians2Degrees = 180.0 / math.pi;

double degrees(double radians) => radians * radians2Degrees;

double radians(double degrees) => degrees * degrees2Radians;

class Awidget extends StatelessWidget {
  final Model hero;
  final double rowHeight;

  const Awidget({super.key, 
    required this.hero,
    this.rowHeight = 282,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: rowHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: const Offset(-10, 0),
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateY(radians(1.5)),
              child: Container(
                height: 216,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(-44, 0),
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateY(radians(8)),
              child: Container(
                height: 188,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Transform.translate(
                offset: const Offset(-30, 0),
                child: Container(
                  child: Hero(
                    tag: hero.name,
                    child: Image.asset(
                      hero.image,
                      width: rowHeight,
                      height: rowHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 58),
              padding: const EdgeInsets.symmetric(vertical: 34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AttributeWidget(
                    progress: hero.speed,
                    key: GlobalKey(),
                    child: Image.asset(
                      'assets/images/rayo.png',
                      ),
                  ),
                  AttributeWidget(
                    progress: hero.health,
                    key: GlobalKey(),
                    child: Image.asset('assets/images/vida.png'),
                  ),
                  AttributeWidget(
                    progress: hero.attack,
                    key: GlobalKey(),
                    child: Image.asset('assets/images/Logo.png'),
                  ),
                  SizedBox(
                    height: 32,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return Details(hero);
                        }));
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white, // Color del texto o ícono
                        side: const BorderSide(
                          color: Color.fromARGB(255, 252, 255, 255), // Color del borde
                            width: 1,
                      ),
                      overlayColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                      child: new Text(
                        'Details',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0 , 0, 0),
                          fontSize: 12,
                        ),
                      ),
                  )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
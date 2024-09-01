import 'package:flutter/material.dart';

class Task {
  String name;
  bool done;
  IconData icon;

  Task({required this.name, this.done = false,this.icon=Icons.pets});
}

List<Task> Tasks = [
  Task(name: "Feeding",icon: Icons.restaurant),
  Task(name: "Exercise", icon: Icons.fitness_center),
  Task(name: "Rest and Sleep", icon: Icons.bed),
  Task(name: "Bonding Time", icon: Icons.favorite), //وقت الترابط
  Task(name: "Potty Breaks", icon: Icons.pets), // فترات استراحة الحمام
];
// الفحوصات الصحيةHealth Checks
// تدابير السلامةSafety Measures
///Groomingالعناية

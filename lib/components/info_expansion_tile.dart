import 'package:flutter/material.dart';

Widget infoExpansionTile(String title, String content) {
  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
        BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
        BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
        BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
      ],
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ExpansionTile(
        collapsedBackgroundColor: Colors.lightBlue.shade50,
        backgroundColor: Colors.lightBlue.shade50,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [Text(content)],
        expandedAlignment: Alignment.topLeft,
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        collapsedTextColor: Colors.black,
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
    ),
  );
}

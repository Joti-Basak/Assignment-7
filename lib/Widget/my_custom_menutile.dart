import 'package:flutter/material.dart';

Widget myMenuTile(String title, {required TextStyle? style}) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
        style: style
      // style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
    trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
    onTap: () {},
  );
}

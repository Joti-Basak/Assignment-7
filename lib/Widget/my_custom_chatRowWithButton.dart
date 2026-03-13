import 'package:flutter/material.dart';

Widget chatRowWithButton({required String text, required bool isSender}) {
  return Row(
    mainAxisAlignment: isSender
        ? MainAxisAlignment.end
        : MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      if (!isSender) avatar(),

      const SizedBox(width: 8),

      Flexible(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: isSender
                ? const Color(0xFFE92E3D)
                : const Color(0xFFF1F2F4),
            foregroundColor: isSender ? Colors.white : Colors.black87,
            elevation: isSender ? 4 : 0,
            shadowColor: Colors.black26,
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: Radius.circular(isSender ? 20 : 20),
                bottomRight: Radius.circular(isSender ? 20 : 20),
              ),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),

      const SizedBox(width: 8),

      if (isSender) avatar(isUser: true),
    ],
  );
}

Widget avatar({bool isUser = false}) {
  return CircleAvatar(
    radius: 18,
    backgroundColor: isUser ? Colors.red : const Color(0xFF3E332E),
    child: Image.asset(
      isUser ? "assets/images/user_id.png" : "assets/images/user.png",
      height: 24,
      width: 24,
    ),
    // Icon(
    //   isUser ? Icons.face : Icons.person,
    //   size: 20,
    //   color: Colors.white,
    // ),
  );
}

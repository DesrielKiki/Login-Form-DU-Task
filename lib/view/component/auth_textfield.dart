import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData icon;
  bool obscureText = false;

  AuthTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !widget.obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
        hintText: widget.hintText,
        labelText: widget.label,
        suffixIcon: !widget.obscureText
            ? Icon(
                widget.icon,
                color: Colors.blue,
              )
            : IconButton(
                icon: Icon(
                  widget.obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                color: Colors.blue,
              ),
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

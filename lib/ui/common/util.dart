import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension BuildContextHelpers on BuildContext {
    void showSnackBar({required Widget content}) {
        ScaffoldMessenger.of(this).showSnackBar(
            SnackBar(content: content),
        );
    }
}
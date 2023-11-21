import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class AppSnackBar extends StatelessWidget {
  AppSnackBar({
    super.key,
    required this.title,
    required this.contentType
  , required this.message
  });

  String title;
  String message;
  ContentType contentType;
  @override
  Widget build(BuildContext context) {
      return AwesomeSnackbarContent(
        title: title,
        message:message,

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: contentType,
    );
  }
}

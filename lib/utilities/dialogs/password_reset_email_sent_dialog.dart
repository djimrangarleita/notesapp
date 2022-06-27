import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
      context: context,
      title: 'Password reset',
      content: 'Password reset link sent. Please check your mails',
      optionBuilder: () => {
            'OK': null,
          });
}

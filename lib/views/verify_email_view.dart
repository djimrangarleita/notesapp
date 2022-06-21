import 'package:flutter/material.dart';
import 'package:mynotes/const/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text(
              'We\'ve sent you an email verification. Please open it in order to confirm it\'s your email address.'),
          const Text(
              'If you didn\'t receive any email even in your spam. Please clic the button below.'),
          TextButton(
            onPressed: () async {
              AuthService.firebase().sendEmailVerification();
            },
            child: const Text('Send Email'),
          ),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().logout();

              Navigator.of(context).pushNamedAndRemoveUntil(
                registerRoute,
                (route) => false,
              );
            },
            child: const Text('Restart'),
          )
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    Key? key,
    required this.message,
  }) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tr('common_screen_error', args: [message]),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20.0),
            FilledButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                tr('common_route_back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

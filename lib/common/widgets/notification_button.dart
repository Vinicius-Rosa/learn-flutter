import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 30,
      child: IconButton(
        icon: const Icon(
          Icons.notifications_none_rounded,
          size: 36,
          color: Colors.grey,
        ),
        tooltip: 'Notificações',
        onPressed: () {},
      ),
    );
  }
}

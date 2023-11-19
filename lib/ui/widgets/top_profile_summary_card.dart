import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../controller/auth_controller.dart';
import '../screens/login_screen.dart';
import '../screens/update_profile_screen.dart';

class TopProfileSummeryCard extends StatefulWidget {
  final bool onTapStatus;

  const TopProfileSummeryCard({
    super.key,
    this.onTapStatus = true,
  });

  @override
  State<TopProfileSummeryCard> createState() => _TopProfileSummeryCardState();
}

class _TopProfileSummeryCardState extends State<TopProfileSummeryCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (widget.onTapStatus == true) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const UpdateProfileScreen()),
          );
        }
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(Auth.user?.photo ?? ''),
        backgroundColor: Colors.lightGreen,
      ),
      title: Text(
        userFullName,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        Auth.user?.email ?? '',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      trailing: IconButton(
        onPressed: () async {
          await Auth.clearUserAuthState();
          if (mounted) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
                  (route) => false,
            );
          }
        },
        icon: const Icon(Icons.logout),
      ),
      tileColor: PrimaryColor.color,
    );
  }

  String get userFullName {
    return '${Auth.user?.firstName ?? ''} ${Auth.user?.lastName ?? ''}';
  }
}
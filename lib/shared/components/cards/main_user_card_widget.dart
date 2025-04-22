import 'package:dog_care/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class MainUserCardWidget extends StatefulWidget {
  const MainUserCardWidget({super.key, required this.user});
  final UserModel? user;

  @override
  State<MainUserCardWidget> createState() => _MainUserCardWidgetState();
}

class _MainUserCardWidgetState extends State<MainUserCardWidget> {
  void _handleTap() {
    Scaffold.of(context).closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  widget.user?.imageUrl ?? 'https://fastly.picsum.photos/id/964/200/300.jpg?hmac=4TmUg5VWiMt4hl9NxKOrX4W3N74VEbYJLbFeZbx3-tE',
                ),
              ),
              const SizedBox(width: 10),
              Text(
                widget.user?.name ?? 'User Name',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:padkeeper/common/assets/constants.dart';

class Avatar extends StatefulWidget {
  const Avatar({
    this.size = 48,
    Key? key,
  }) : super(key: key);

  final double size;

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  var _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: AnimatedContainer(
        duration: Constants.aniamionDuration,
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            if (_isHover) Constants.shadow,
          ],
          border: _isHover
              ? Border.all(
                  color: Theme.of(context).primaryColor,
                )
              : null,
        ),
        child: const Icon(
          Icons.person,
          size: 24,
        ),
      ),
    );
  }
}

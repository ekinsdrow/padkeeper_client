import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:padkeeper/common/assets/constants.dart';
import 'package:padkeeper/common/widgets/avatar.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  var _isOpen = false;

  double get _smallWidth => 100;
  double get _bigWidth {
    if (Platform.isAndroid || Platform.isIOS) {
      return MediaQuery.of(context).size.width;
    }

    return 300;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _isOpen ? _bigWidth  : _smallWidth + 12,
      child: Stack(
        children: [
          Container(
            width: _isOpen ? _bigWidth : _smallWidth,
            padding: const EdgeInsets.symmetric(
              vertical: Constants.bigPadding,
            ),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Avatar(),
                SizedBox(
                  height: Constants.bigPadding,
                ),
                Expanded(
                  child: _Pages(),
                ),
                SizedBox(
                  height: Constants.bigPadding,
                ),
                _Bottom(),
              ],
            ),
          ),
          Positioned(
            left: 88,
            top: MediaQuery.of(context).size.height / 2 - 12,
            child: _OpenButton(
              tapCallback: () {
                setState(() {
                  _isOpen = !_isOpen;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _OpenButton extends StatefulWidget {
  const _OpenButton({
    required this.tapCallback,
    Key? key,
  }) : super(key: key);

  final VoidCallback tapCallback;

  @override
  State<_OpenButton> createState() => __OpenButtonState();
}

class __OpenButtonState extends State<_OpenButton> {
  var _isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tapCallback,
      child: MouseRegion(
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
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).backgroundColor,
            boxShadow: const [
              Constants.shadow,
            ],
            border: _isHover
                ? Border.all(
                    color: Theme.of(context).primaryColor,
                  )
                : null,
          ),
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 10,
          ),
        ),
      ),
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SidebarItem(
          iconData: Icons.add,
          text: AppLocalizations.of(context)!.create_new,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        const SizedBox(
          height: Constants.mediumPadding,
        ),
        Flexible(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => _SidebarItem(
              emoji: "🧐",
              text: "Page",
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: Constants.mediumPadding,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SidebarItem(
          iconData: Icons.search,
          text: AppLocalizations.of(context)!.search,
          color: Theme.of(context).backgroundColor,
        ),
        const SizedBox(
          height: Constants.mediumPadding,
        ),
        _SidebarItem(
          iconData: Icons.settings,
          text: AppLocalizations.of(context)!.settings,
          color: Theme.of(context).backgroundColor,
        ),
      ],
    );
  }
}

class _SidebarItem extends StatefulWidget {
  const _SidebarItem({
    required this.text,
    required this.color,
    this.iconData,
    this.emoji,
    Key? key,
  }) : super(key: key);

  final IconData? iconData;
  final String? emoji;
  final String text;
  final Color color;

  @override
  State<_SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<_SidebarItem> {
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
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
          boxShadow: [
            if (_isHover) Constants.shadow,
          ],
          border: _isHover
              ? Border.all(
                  color: Theme.of(context).primaryColor,
                )
              : null,
        ),
        child: widget.iconData != null
            ? Icon(
                widget.iconData,
                size: 24,
              )
            : Center(
                child: Text(
                  widget.emoji!,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
      ),
    );
  }
}

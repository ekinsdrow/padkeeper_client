import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:padkeeper/common/assets/constants.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> with SingleTickerProviderStateMixin {
  var _isOpen = false;
  late AnimationController _openButtonAnimationController;

  double get _smallWidth => 100;

  double get _bigWidth {
    double bigW = 300;

    if (widget.constraints.maxWidth < Constants.maxSmallScreenSize) {
      bigW = MediaQuery.of(context).size.width;
    }

    return bigW;
  }

  void _changeSideBar() {
    setState(() {
      if (_isOpen) {
        _openButtonAnimationController.reverse();
      } else {
        _openButtonAnimationController.forward();
      }

      _isOpen = !_isOpen;
    });
  }

  void _closeSideBar() {
    setState(() {
      _openButtonAnimationController.reverse();

      _isOpen = false;
    });
  }

  void _openSideBar() {
    setState(() {
      _openButtonAnimationController.forward();

      _isOpen = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _openButtonAnimationController = AnimationController(
      vsync: this,
      duration: Constants.aniamionDuration,
    );
  }

  @override
  void dispose() {
    _openButtonAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx > 8) {
          _openSideBar();
        } else if (details.delta.dx < -8) {
          _closeSideBar();
        }
      },
      child: AnimatedContainer(
        duration: Constants.aniamionDuration,
        width: _isOpen
            ? _bigWidth == 300
                ? 312
                : MediaQuery.of(context).size.width
            : _smallWidth + 12,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Constants.aniamionDuration,
              width: _isOpen ? _bigWidth : _smallWidth,
              padding: const EdgeInsets.only(
                top: Constants.bigPadding,
                bottom: Constants.bigPadding,
                right: 26,
                left: 26,
              ),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SidebarItem(
                    text: "Ivan Kolchev",
                    color: Theme.of(context).scaffoldBackgroundColor,
                    iconData: Icons.person,
                    isFull: _isOpen,
                  ),
                  const SizedBox(
                    height: Constants.bigPadding,
                  ),
                  Expanded(
                    child: _Pages(
                      isOpened: _isOpen,
                    ),
                  ),
                  const SizedBox(
                    height: Constants.bigPadding,
                  ),
                  _Bottom(
                    isOpen: _isOpen,
                  ),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: Constants.aniamionDuration,
              left: _isOpen
                  ? (_bigWidth == 300
                      ? 288
                      : MediaQuery.of(context).size.width - 12)
                  : 88,
              top: MediaQuery.of(context).size.height / 2 - 12,
              child: RotationTransition(
                turns: Tween(
                  begin: 0.0,
                  end: 0.5,
                ).animate(_openButtonAnimationController),
                child: _OpenButton(
                  tapCallback: _changeSideBar,
                ),
              ),
            ),
          ],
        ),
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
  const _Pages({
    required this.isOpened,
    Key? key,
  }) : super(key: key);

  final bool isOpened;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SidebarItem(
          iconData: Icons.add,
          text: AppLocalizations.of(context)!.create_new,
          color: Theme.of(context).scaffoldBackgroundColor,
          isFull: isOpened,
        ),
        const SizedBox(
          height: Constants.mediumPadding,
        ),
        Flexible(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Container(
              alignment: Alignment.centerLeft,
              child: _SidebarItem(
                isFull: isOpened,
                emoji: "🧐",
                text: "Page",
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: Constants.mediumPadding,
            ),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({
    required this.isOpen,
    Key? key,
  }) : super(key: key);

  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SidebarItem(
          iconData: Icons.search,
          isFull: isOpen,
          text: AppLocalizations.of(context)!.search,
          color: Theme.of(context).backgroundColor,
        ),
        const SizedBox(
          height: Constants.mediumPadding,
        ),
        _SidebarItem(
          isFull: isOpen,
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
    this.isFull = false,
    Key? key,
  }) : super(key: key);

  final IconData? iconData;
  final String? emoji;
  final String text;
  final Color color;
  final bool isFull;

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
      child: LayoutBuilder(
        builder: (context, constrains) {
          return AnimatedContainer(
            duration: Constants.aniamionDuration,
            width: constrains.maxWidth,
            height: 48,
            decoration: BoxDecoration(
              color: widget.color,
              boxShadow: [
                if (_isHover) Constants.shadow,
              ],
              borderRadius: BorderRadius.circular(24),
              border: _isHover
                  ? Border.all(
                      color: Theme.of(context).primaryColor,
                    )
                  : null,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 13,
                ),
                if (widget.iconData != null)
                  Icon(
                    widget.iconData,
                    size: 24,
                  )
                else
                  Center(
                    child: Text(
                      widget.emoji!,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                if (constrains.maxWidth > 247)
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, c) {
                        if (c.maxWidth >= constrains.maxWidth - 50) {
                          return Row(
                            children: [
                              const SizedBox(
                                width: Constants.mediumPadding,
                              ),
                              Text(
                                widget.text,
                              ),
                            ],
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

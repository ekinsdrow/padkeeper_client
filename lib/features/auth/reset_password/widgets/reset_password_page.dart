import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:padkeeper/common/assets/constants.dart';
import 'package:padkeeper/common/assets/images/resources.dart';
import 'package:padkeeper/features/app/router/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final usernameEmailController = TextEditingController();
  final codeController = TextEditingController();

  var _codeSending = false;
  late Timer _timer;

  void _sendCode() {
    //TODO: send code

    _timer = Timer.periodic(
      const Duration(
        seconds: 1,
      ),
      (timer) {
        if (timer.tick == 30) {
          timer.cancel();
        }

        setState(() {});
      },
    );
    setState(() {
      _codeSending = true;
    });
  }

  void _resetPassword() {
    //TODO: reset pass and create new
    context.router.replace(
      const MainRoute(),
    );
  }

  @override
  void dispose() {
    usernameEmailController.dispose();
    codeController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.mediumPadding,
            ),
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        PngPath.logoText,
                        width: 200,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 48,
                        child: TextField(
                          controller: usernameEmailController,
                          decoration: InputDecoration(
                            hintText:
                                AppLocalizations.of(context)!.email_or_username,
                          ),
                        ),
                      ),
                      if (_codeSending)
                        Column(
                          children: [
                            const SizedBox(
                              height: Constants.mediumPadding,
                            ),
                            SizedBox(
                              height: 48,
                              child: TextField(
                                autofocus: true,
                                controller: codeController,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.code,
                                  suffix: GestureDetector(
                                    onTap: _timer.isActive ? null : _sendCode,
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 30,
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Text(
                                        _timer.isActive
                                            // ignore: lines_longer_than_80_chars
                                            ? "00:${_timer.tick > 20 ? "0" : ""}${30 - _timer.tick}"
                                            : AppLocalizations.of(context)!
                                                .repeat_code,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: _codeSending ? _resetPassword : _sendCode,
                          child: Text(
                            _codeSending
                                ? AppLocalizations.of(context)!.reset_password
                                : AppLocalizations.of(context)!.send_code,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Constants.mediumPadding,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).backgroundColor,
                            ),
                          ),
                          onPressed: () {
                            context.router.pop();
                          },
                          child: Text(
                            AppLocalizations.of(context)!.login,
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .color!
                                  .withAlpha(125),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

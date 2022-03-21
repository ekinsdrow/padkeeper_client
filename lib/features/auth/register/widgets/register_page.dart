import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:padkeeper/common/assets/constants.dart';
import 'package:padkeeper/common/assets/images/resources.dart';
import 'package:padkeeper/features/app/router/router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();

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
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.email,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Constants.mediumPadding,
                      ),
                      SizedBox(
                        height: 48,
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.username,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Constants.mediumPadding,
                      ),
                      SizedBox(
                        height: 48,
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.password,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Constants.mediumPadding,
                      ),
                      SizedBox(
                        height: 48,
                        child: TextField(
                          controller: repeatPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText:
                                AppLocalizations.of(context)!.repeat_password,
                          ),
                        ),
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
                          onPressed: () {
                            //TODO: register
                            context.router.replace(
                              const MainRoute(),
                            );
                          },
                          child: Text(AppLocalizations.of(context)!.register),
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

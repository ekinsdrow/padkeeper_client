import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:padkeeper/common/assets/constants.dart';
import 'package:padkeeper/common/assets/images/resources.dart';
import 'package:padkeeper/features/app/router/router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameEmailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameEmailController.dispose();
    passwordController.dispose();

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
                      GestureDetector(
                        onTap: () {
                          context.router.push(
                            const ResetPasswordRoute(),
                          );
                        },
                        child: Container(
                          color: Colors.transparent,
                          width: 200,
                          height: 30,
                          child: Text(
                            AppLocalizations.of(context)!.forgot_password,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
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
                            //TODO: login
                            context.router.replace(
                              const MainRoute(),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(context)!.login,
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
                            context.router.push(
                              const RegisterRoute(),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(context)!.register,
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

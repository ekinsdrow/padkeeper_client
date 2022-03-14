import 'dart:io';

class PlatformUtil {
  PlatformUtil._();

  static get isMobile => Platform.isAndroid || Platform.isIOS;
}

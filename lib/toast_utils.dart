library toast_utils;
import 'package:fluttertoast/fluttertoast.dart';

typedef ShowToastFunction = Function(
  String msg, {
  Toast toastLength,
  ToastGravity gravity,
});

class ToastUtil {
  static ShowToastFunction? showToastFunction;

  static void show(
    String msg, {
    Toast toastLength = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.BOTTOM,
  }) {
    if (showToastFunction != null) {
      showToastFunction?.call(msg, toastLength: toastLength, gravity: gravity);
      return;
    }

    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: toastLength,
      gravity: gravity,
    );
  }
}

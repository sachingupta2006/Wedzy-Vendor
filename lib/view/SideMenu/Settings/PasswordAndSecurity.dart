import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomDesignButton.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/resources/routes/route_name.dart';

class PasswordAndSecurity extends StatefulWidget {
  const PasswordAndSecurity({super.key});

  @override
  State<PasswordAndSecurity> createState() => _PasswordAndSecurityState();
}

class _PasswordAndSecurityState extends State<PasswordAndSecurity> {
  LocalAuthentication authentication = LocalAuthentication();
  bool? _hasBioSensor;
  Future<void> _checkBio() async {
    try {
      _hasBioSensor = await authentication.canCheckBiometrics;
      List<BiometricType> availableBiometrics =
          await authentication.getAvailableBiometrics();
      final isDeviceSupported = await authentication.isDeviceSupported();
      print(_hasBioSensor);
      print(availableBiometrics);
      print("device support $isDeviceSupported");
      if (_hasBioSensor!) {
        _getAuthwithfinger();
      } else {
        _getAuth();
        print("fingerprint not available");
      }

      // ignore: empty_catches
    } on PlatformException {}
  }

  Future<void> _getAuthwithfinger() async {
    print("getauth called");
    bool isAuth = false;
    try {
      isAuth = await authentication.authenticate(
        localizedReason: 'Scan your fingerprint to access the app',
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      if (isAuth) {
        // buildGuidedTour();

        return;
      }

      // ignore: empty_catches
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
  }

  Future<void> _getAuth() async {
    bool isAuth = false;
    try {
      isAuth = await authentication.authenticate(
        localizedReason: 'Enter your Pattern or Pin to unlock',
        options: const AuthenticationOptions(
          biometricOnly: false,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      if (isAuth) {
        return;
      }

      // ignore: empty_catches
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Password & Security",
        preferredSize: Size.fromHeight(50),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: double.infinity,
                height: 284.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 19.h,
                    ),
                    Text(
                      "Add Touch ID",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF373434),
                              ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    SvgPicture.asset(
                        "assets/images/material-symbols_fingerprint.svg"),
                    SizedBox(
                      height: 39.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: CustomDesignButton(
                        text: 'Add Fingerprint',
                        onPressed: () {
                          // _checkBio();
                          Get.toNamed('/fingerprintmain');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 39.h,
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: double.infinity,
                height: 284.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 19.h,
                    ),
                    Text(
                      "4 Digit pin",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF373434),
                              ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    SvgPicture.asset("assets/images/Pins.svg"),
                    SizedBox(
                      height: 39.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: CustomDesignButton(
                        text: 'Add Pin',
                        onPressed: () {
                          Get.toNamed(RouteName.setpin);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

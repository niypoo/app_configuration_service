import 'package:app_configuration_service/models/space.model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppConfigService extends GetxService {
  static AppConfigService get to => Get.find();

  // APP INFO
  final String appName;
  final String appWebsite;
  final String localStorageContainer;
  final String appIcon;
  final String appIconPhotoUrl;
  final String deeplinkURL;
  final String deeplinkSchema;

  // Support Info
  final String supportEmail;
  final String? firebaseFunctionsUrl;
  final String termsUrl;
  final String privacyUrl;
  // final String dynamicLink;
  // final String? supportWhatsappNumber;
  // final String? tutorialLink;
  // final String invitationImage;

  // Bundle Info
  final String googlePlayIdentifier;
  final String bundleId;
  final int appStoreIdentifier;

  // Animation
  final Duration duration;
  final Cubic curve;

  // Spacing
  final Space? space;

  // radius
  final double radius;

  // Authentication Provider
  final bool authenticationWithGoogle;
  final bool authenticationWithApple;
  final bool authenticationWithFacebook;
  final bool authenticationWithTwitter;
  final bool authenticationWithLinkedin;
  final bool authenticationWithGithub;
  final bool authenticationAsAnonymously;

  AppConfigService({
    this.appName = 'Un-named App',
    this.appIcon = 'assets/icon/icon.jpeg',
    this.localStorageContainer = 'app.storage',
    required this.termsUrl,
    required this.privacyUrl,
    required this.appWebsite,
    required this.appIconPhotoUrl,
    required this.deeplinkSchema,
    required this.deeplinkURL,

    // Bundle Info
    required this.googlePlayIdentifier,
    required this.bundleId,
    required this.appStoreIdentifier,

    // Support Info
    // required this.dynamicLink,
    required this.supportEmail,
    this.firebaseFunctionsUrl,
    // this.supportWhatsappNumber,
    // this.tutorialLink,
    // required this.invitationImage,

    // Animation
    this.curve = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 300),
    this.radius = 15,

    // Space
    this.space,

    // Authentication Provider
    this.authenticationWithGoogle = true,
    this.authenticationWithApple = true,
    this.authenticationWithFacebook = false,
    this.authenticationWithTwitter = false,
    this.authenticationWithLinkedin = false,
    this.authenticationWithGithub = false,
    this.authenticationAsAnonymously = true,
  });

  Future<AppConfigService> init() async {
    return this;
  }
}

import 'package:app_configuration_service/models/space.model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppConfigService extends GetxService {
  static AppConfigService get to => Get.find();

  // APP INFO
  final String appName;
  final String? appWebsite;
  final String localStorageContainer;
  final String appIcon;
  final String? appIconPhotoUrl;

  // Support Info
  final String? dynamicLink;
  final String supportEmail;
  final String? firebaseFunctionsUrl;
  final String? supportWhatsappNumber;
  final String termsUrl;
  final String privacyUrl;
  final String? tutorialLink;
  final String? invitationImage;

  // Bundle Info
  final String? googlePlayIdentifier;
  final String? bundleId;
  final int? appStoreIdentifier;

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
    this.appWebsite,
    this.localStorageContainer = 'app.storage',
    this.appIconPhotoUrl,
    // Support Info
    this.dynamicLink,
    required this.supportEmail,
    this.firebaseFunctionsUrl,
    this.supportWhatsappNumber,
    required this.termsUrl,
    required this.privacyUrl,
    this.tutorialLink,
    this.invitationImage,

    // Bundle Info
    this.googlePlayIdentifier,
    this.bundleId,
    this.appStoreIdentifier,

    // Animation
    this.curve = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 300),
    this.radius = 22,

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

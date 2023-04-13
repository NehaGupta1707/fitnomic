import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? MenuWidget() : SplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? MenuWidget() : SplashWidget(),
          routes: [
            FFRoute(
              name: 'splash',
              path: 'homepage',
              builder: (context, params) => SplashWidget(),
            ),
            FFRoute(
              name: 'AuthPage',
              path: 'authPage',
              builder: (context, params) => AuthPageWidget(),
            ),
            FFRoute(
              name: 'onboarding',
              path: 'onboarding',
              builder: (context, params) => OnboardingWidget(),
            ),
            FFRoute(
              name: 'PhoneAuth',
              path: 'phoneAuth',
              builder: (context, params) => PhoneAuthWidget(),
            ),
            FFRoute(
              name: 'Code',
              path: 'code',
              builder: (context, params) => CodeWidget(),
            ),
            FFRoute(
              name: 'menu',
              path: 'menu',
              builder: (context, params) => MenuWidget(),
            ),
            FFRoute(
              name: 'AgeOption-gym',
              path: 'ageOptiongym',
              builder: (context, params) => AgeOptionGymWidget(),
            ),
            FFRoute(
              name: 'gain-loss',
              path: 'gainloss',
              builder: (context, params) => GainLossWidget(),
            ),
            FFRoute(
              name: 'AgeOption-zumba',
              path: 'ageOptionzumba',
              builder: (context, params) => AgeOptionZumbaWidget(),
            ),
            FFRoute(
              name: 'AgeOption-cardio',
              path: 'ageOptioncardio',
              builder: (context, params) => AgeOptionCardioWidget(),
            ),
            FFRoute(
              name: 'steps',
              path: 'steps',
              builder: (context, params) => StepsWidget(),
            ),
            FFRoute(
              name: 'Ecommerce',
              path: 'ecommerce',
              builder: (context, params) => EcommerceWidget(),
            ),
            FFRoute(
              name: 'ProductDetails',
              path: 'productDetails',
              builder: (context, params) => ProductDetailsWidget(
                productImage: params.getParam<String>(
                    'productImage', ParamType.String, true),
                productName: params.getParam('productName', ParamType.String),
                productRatings:
                    params.getParam('productRatings', ParamType.int),
                productReviews:
                    params.getParam('productReviews', ParamType.int),
                productDescription:
                    params.getParam('productDescription', ParamType.String),
                productReferences: params.getParam('productReferences',
                    ParamType.DocumentReference, false, ['products']),
                productBrand: params.getParam('productBrand', ParamType.String),
                productPrice: params.getParam('productPrice', ParamType.double),
              ),
            ),
            FFRoute(
              name: 'pcod',
              path: 'pcod',
              builder: (context, params) => PcodWidget(),
            ),
            FFRoute(
              name: 'pregnantinitial',
              path: 'pregnantinitial',
              builder: (context, params) => PregnantinitialWidget(),
            ),
            FFRoute(
              name: 'nutrition',
              path: 'nutrition',
              builder: (context, params) => NutritionWidget(),
            ),
            FFRoute(
              name: 'getmotivation',
              path: 'getmotivation',
              builder: (context, params) => GetmotivationWidget(),
            ),
            FFRoute(
              name: 'profile',
              path: 'profile',
              builder: (context, params) => ProfileWidget(),
            ),
            FFRoute(
              name: 'AgeOption-yoga',
              path: 'ageOption',
              builder: (context, params) => AgeOptionYogaWidget(),
            ),
            FFRoute(
              name: 'yogaBEGINNER',
              path: 'yogaBEGINNER',
              builder: (context, params) => YogaBEGINNERWidget(),
            ),
            FFRoute(
              name: 'Terms',
              path: 'terms',
              builder: (context, params) => TermsWidget(),
            ),
            FFRoute(
              name: 'caloriechart',
              path: 'caloriechart',
              builder: (context, params) => CaloriechartWidget(),
            ),
            FFRoute(
              name: 'yogaADVANCED',
              path: 'yogaADVANCED',
              builder: (context, params) => YogaADVANCEDWidget(),
            ),
            FFRoute(
              name: 'Privacypolicy',
              path: 'privacypolicy',
              builder: (context, params) => PrivacypolicyWidget(),
            ),
            FFRoute(
              name: 'Yogamat',
              path: 'yogamat',
              builder: (context, params) => YogamatWidget(),
            ),
            FFRoute(
              name: 'stepstracker',
              path: 'stepstracker',
              builder: (context, params) => StepstrackerWidget(),
            ),
            FFRoute(
              name: 'kidsyogastanding',
              path: 'kidsyogastanding',
              builder: (context, params) => KidsyogastandingWidget(),
            ),
            FFRoute(
              name: 'kidsyogasitting',
              path: 'kidsyogasitting',
              builder: (context, params) => KidsyogasittingWidget(),
            ),
            FFRoute(
              name: 'yoga-1',
              path: 'yoga-1',
              builder: (context, params) => Yoga1Widget(),
            ),
            FFRoute(
              name: 'settings',
              path: 'settings',
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: 'yoga-2',
              path: 'yoga-2',
              builder: (context, params) => Yoga2Widget(),
            ),
            FFRoute(
              name: 'yoga-3',
              path: 'yoga-3',
              builder: (context, params) => Yoga3Widget(),
            ),
            FFRoute(
              name: 'CalorieTracker',
              path: 'calorieTracker',
              builder: (context, params) => CalorieTrackerWidget(),
            ),
            FFRoute(
              name: 'yoga-4',
              path: 'yoga-4',
              builder: (context, params) => Yoga4Widget(),
            ),
            FFRoute(
              name: 'WeightTracker',
              path: 'weightTracker',
              builder: (context, params) => WeightTrackerWidget(),
            ),
            FFRoute(
              name: 'WaterTracker',
              path: 'waterTracker',
              builder: (context, params) => WaterTrackerWidget(),
            ),
            FFRoute(
              name: 'sports',
              path: 'sports',
              builder: (context, params) => SportsWidget(),
            ),
            FFRoute(
              name: 'yoga-5',
              path: 'yoga-5',
              builder: (context, params) => Yoga5Widget(),
            ),
            FFRoute(
              name: 'yoga-6',
              path: 'yoga-6',
              builder: (context, params) => Yoga6Widget(),
            ),
            FFRoute(
              name: 'yoga-7',
              path: 'yoga-7',
              builder: (context, params) => Yoga7Widget(),
            ),
            FFRoute(
              name: 'yoga-8',
              path: 'yoga-8',
              builder: (context, params) => Yoga8Widget(),
            ),
            FFRoute(
              name: 'yoga-9',
              path: 'yoga-9',
              builder: (context, params) => Yoga9Widget(),
            ),
            FFRoute(
              name: 'yoga-10',
              path: 'yoga-10',
              builder: (context, params) => Yoga10Widget(),
            ),
            FFRoute(
              name: 'yoga-11',
              path: 'yoga-11',
              builder: (context, params) => Yoga11Widget(),
            ),
            FFRoute(
              name: 'yoga-12',
              path: 'yoga-12',
              builder: (context, params) => Yoga12Widget(),
            ),
            FFRoute(
              name: 'yoga-13',
              path: 'yoga-13',
              builder: (context, params) => Yoga13Widget(),
            ),
            FFRoute(
              name: 'yoga-14',
              path: 'yoga-14',
              builder: (context, params) => Yoga14Widget(),
            ),
            FFRoute(
              name: 'yoga-15',
              path: 'yoga-15',
              builder: (context, params) => Yoga15Widget(),
            ),
            FFRoute(
              name: 'yoga-16',
              path: 'yoga-16',
              builder: (context, params) => Yoga16Widget(),
            ),
            FFRoute(
              name: 'yoga-17',
              path: 'yoga-17',
              builder: (context, params) => Yoga17Widget(),
            ),
            FFRoute(
              name: 'yoga-18',
              path: 'yoga-18',
              builder: (context, params) => Yoga18Widget(),
            ),
            FFRoute(
              name: 'Orders',
              path: 'orders',
              builder: (context, params) => OrdersWidget(),
            ),
            FFRoute(
              name: 'Running',
              path: 'running',
              builder: (context, params) => RunningWidget(),
            ),
            FFRoute(
              name: 'Cycling',
              path: 'cycling',
              builder: (context, params) => CyclingWidget(),
            ),
            FFRoute(
              name: 'Indoor',
              path: 'indoor',
              builder: (context, params) => IndoorWidget(),
            ),
            FFRoute(
              name: 'Outdoor',
              path: 'outdoor',
              builder: (context, params) => OutdoorWidget(),
            ),
            FFRoute(
              name: 'gymABOVE40',
              path: 'gymABOVE40',
              builder: (context, params) => GymABOVE40Widget(),
            ),
            FFRoute(
              name: 'gymBELOW40',
              path: 'gymBELOW40',
              builder: (context, params) => GymBELOW40Widget(),
            ),
            FFRoute(
              name: 'gym-1',
              path: 'gym-1',
              builder: (context, params) => Gym1Widget(),
            ),
            FFRoute(
              name: 'gym-2',
              path: 'gym-2',
              builder: (context, params) => Gym2Widget(),
            ),
            FFRoute(
              name: 'gym-3',
              path: 'gym-3',
              builder: (context, params) => Gym3Widget(),
            ),
            FFRoute(
              name: 'gym-4',
              path: 'gym-4',
              builder: (context, params) => Gym4Widget(),
            ),
            FFRoute(
              name: 'gym-5',
              path: 'gym-5',
              builder: (context, params) => Gym5Widget(),
            ),
            FFRoute(
              name: 'gym-6',
              path: 'gym-6',
              builder: (context, params) => Gym6Widget(),
            ),
            FFRoute(
              name: 'gym-7',
              path: 'gym-7',
              builder: (context, params) => Gym7Widget(),
            ),
            FFRoute(
              name: 'gym-8',
              path: 'gym-8',
              builder: (context, params) => Gym8Widget(),
            ),
            FFRoute(
              name: 'gym-9',
              path: 'gym-9',
              builder: (context, params) => Gym9Widget(),
            ),
            FFRoute(
              name: 'gym-10',
              path: 'gym-10',
              builder: (context, params) => Gym10Widget(),
            ),
            FFRoute(
              name: 'OrderDetails',
              path: 'orderDetails',
              builder: (context, params) => OrderDetailsWidget(),
            ),
            FFRoute(
              name: 'Payments',
              path: 'payments',
              builder: (context, params) => PaymentsWidget(
                products: params.getParam('products', ParamType.String),
                amount: params.getParam('amount', ParamType.double),
                expectedDelivery:
                    params.getParam('expectedDelivery', ParamType.String),
                address: params.getParam(
                    'address', ParamType.DocumentReference, false, ['address']),
                productImage: params.getParam('productImage', ParamType.String),
                cartReference: params.getParam('cartReference',
                    ParamType.DocumentReference, false, ['cart']),
              ),
            ),
            FFRoute(
              name: 'stepsmenu',
              path: 'stepsmenu',
              builder: (context, params) => StepsmenuWidget(),
            ),
            FFRoute(
              name: 'runningtimer',
              path: 'runningtimer',
              builder: (context, params) => RunningtimerWidget(),
            ),
            FFRoute(
              name: 'gym-11',
              path: 'gym-11',
              builder: (context, params) => Gym11Widget(),
            ),
            FFRoute(
              name: 'gym-12',
              path: 'gym-12',
              builder: (context, params) => Gym12Widget(),
            ),
            FFRoute(
              name: 'gym-13',
              path: 'gym-13',
              builder: (context, params) => Gym13Widget(),
            ),
            FFRoute(
              name: 'gym-14',
              path: 'gym-14',
              builder: (context, params) => Gym14Widget(),
            ),
            FFRoute(
              name: 'gym-15',
              path: 'gym-15',
              builder: (context, params) => Gym15Widget(),
            ),
            FFRoute(
              name: 'gym-16',
              path: 'gym-16',
              builder: (context, params) => Gym16Widget(),
            ),
            FFRoute(
              name: 'gym-17',
              path: 'gym-17',
              builder: (context, params) => Gym17Widget(),
            ),
            FFRoute(
              name: 'gym-18',
              path: 'gym-18',
              builder: (context, params) => Gym18Widget(),
            ),
            FFRoute(
              name: 'gym-19',
              path: 'gym-19',
              builder: (context, params) => Gym19Widget(),
            ),
            FFRoute(
              name: 'gym-20',
              path: 'gym-20',
              builder: (context, params) => Gym20Widget(),
            ),
            FFRoute(
              name: 'cardioBELOW40',
              path: 'cardioBELOW40',
              builder: (context, params) => CardioBELOW40Widget(),
            ),
            FFRoute(
              name: 'cardioABOVE40',
              path: 'cardioABOVE40',
              builder: (context, params) => CardioABOVE40Widget(),
            ),
            FFRoute(
              name: 'cardio-1',
              path: 'cardio-1',
              builder: (context, params) => Cardio1Widget(),
            ),
            FFRoute(
              name: 'cardio-2',
              path: 'cardio-2',
              builder: (context, params) => Cardio2Widget(),
            ),
            FFRoute(
              name: 'OrderSuccessful',
              path: 'orderSuccessful',
              builder: (context, params) => OrderSuccessfulWidget(),
            ),
            FFRoute(
              name: 'cardio-7',
              path: 'cardio-7',
              builder: (context, params) => Cardio7Widget(),
            ),
            FFRoute(
              name: 'cardio-5',
              path: 'cardio-5',
              builder: (context, params) => Cardio5Widget(),
            ),
            FFRoute(
              name: 'cardio-8',
              path: 'cardio-8',
              builder: (context, params) => Cardio8Widget(),
            ),
            FFRoute(
              name: 'cardio-4',
              path: 'cardio-4',
              builder: (context, params) => Cardio4Widget(),
            ),
            FFRoute(
              name: 'cardio-3',
              path: 'cardio-3',
              builder: (context, params) => Cardio3Widget(),
            ),
            FFRoute(
              name: 'cardio-6',
              path: 'cardio-6',
              builder: (context, params) => Cardio6Widget(),
            ),
            FFRoute(
              name: 'cardio-9',
              path: 'cardio-9',
              builder: (context, params) => Cardio9Widget(),
            ),
            FFRoute(
              name: 'cardio-10',
              path: 'cardio-10',
              builder: (context, params) => Cardio10Widget(),
            ),
            FFRoute(
              name: 'cardio-11',
              path: 'cardio-11',
              builder: (context, params) => Cardio11Widget(),
            ),
            FFRoute(
              name: 'joggingtimer',
              path: 'joggingtimer',
              builder: (context, params) => JoggingtimerWidget(),
            ),
            FFRoute(
              name: 'treadmilltimer',
              path: 'treadmilltimer',
              builder: (context, params) => TreadmilltimerWidget(),
            ),
            FFRoute(
              name: 'indoorcycling',
              path: 'indoorcycling',
              builder: (context, params) => IndoorcyclingWidget(),
            ),
            FFRoute(
              name: 'outdoorcycling',
              path: 'outdoorcycling',
              builder: (context, params) => OutdoorcyclingWidget(),
            ),
            FFRoute(
              name: 'aerobicstimer',
              path: 'aerobicstimer',
              builder: (context, params) => AerobicstimerWidget(),
            ),
            FFRoute(
              name: 'yogatimer',
              path: 'yogatimer',
              builder: (context, params) => YogatimerWidget(),
            ),
            FFRoute(
              name: 'gymnasticstimer',
              path: 'gymnasticstimer',
              builder: (context, params) => GymnasticstimerWidget(),
            ),
            FFRoute(
              name: 'skippingtimer',
              path: 'skippingtimer',
              builder: (context, params) => SkippingtimerWidget(),
            ),
            FFRoute(
              name: 'trainingtimer',
              path: 'trainingtimer',
              builder: (context, params) => TrainingtimerWidget(),
            ),
            FFRoute(
              name: 'badmintontimer',
              path: 'badmintontimer',
              builder: (context, params) => BadmintontimerWidget(),
            ),
            FFRoute(
              name: 'basketball',
              path: 'basketball',
              builder: (context, params) => BasketballWidget(),
            ),
            FFRoute(
              name: 'volleyball',
              path: 'volleyball',
              builder: (context, params) => VolleyballWidget(),
            ),
            FFRoute(
              name: 'hiking',
              path: 'hiking',
              builder: (context, params) => HikingWidget(),
            ),
            FFRoute(
              name: 'baseball',
              path: 'baseball',
              builder: (context, params) => BaseballWidget(),
            ),
            FFRoute(
              name: 'cardio-12',
              path: 'cardio-12',
              builder: (context, params) => Cardio12Widget(),
            ),
            FFRoute(
              name: 'cardio-13',
              path: 'cardio-13',
              builder: (context, params) => Cardio13Widget(),
            ),
            FFRoute(
              name: 'cardio-14',
              path: 'cardio-14',
              builder: (context, params) => Cardio14Widget(),
            ),
            FFRoute(
              name: 'cardio-15',
              path: 'cardio-15',
              builder: (context, params) => Cardio15Widget(),
            ),
            FFRoute(
              name: 'cardio-16',
              path: 'cardio-16',
              builder: (context, params) => Cardio16Widget(),
            ),
            FFRoute(
              name: 'cardio-17',
              path: 'cardio-17',
              builder: (context, params) => Cardio17Widget(),
            ),
            FFRoute(
              name: 'cardio-18',
              path: 'cardio-18',
              builder: (context, params) => Cardio18Widget(),
            ),
            FFRoute(
              name: 'cardio-19',
              path: 'cardio-19',
              builder: (context, params) => Cardio19Widget(),
            ),
            FFRoute(
              name: 'cardio-20',
              path: 'cardio-20',
              builder: (context, params) => Cardio20Widget(),
            ),
            FFRoute(
              name: 'KnowAboutPCOS',
              path: 'knowAboutPCOS',
              builder: (context, params) => KnowAboutPCOSWidget(),
            ),
            FFRoute(
              name: 'zumbaBELOW40',
              path: 'zumbaBELOW40',
              builder: (context, params) => ZumbaBELOW40Widget(),
            ),
            FFRoute(
              name: 'zumbaABOVE40',
              path: 'zumbaABOVE40',
              builder: (context, params) => ZumbaABOVE40Widget(),
            ),
            FFRoute(
              name: 'zumba-1',
              path: 'zumba-1',
              builder: (context, params) => Zumba1Widget(),
            ),
            FFRoute(
              name: 'zumba-2',
              path: 'zumba-2',
              builder: (context, params) => Zumba2Widget(),
            ),
            FFRoute(
              name: 'zumba-3',
              path: 'zumba-3',
              builder: (context, params) => Zumba3Widget(),
            ),
            FFRoute(
              name: 'zumba-4',
              path: 'zumba-4',
              builder: (context, params) => Zumba4Widget(),
            ),
            FFRoute(
              name: 'zumba-5',
              path: 'zumba-5',
              builder: (context, params) => Zumba5Widget(),
            ),
            FFRoute(
              name: 'zumba-6',
              path: 'zumba-6',
              builder: (context, params) => Zumba6Widget(),
            ),
            FFRoute(
              name: 'zumba-7',
              path: 'zumba-7',
              builder: (context, params) => Zumba7Widget(),
            ),
            FFRoute(
              name: 'zumba-8',
              path: 'zumba-8',
              builder: (context, params) => Zumba8Widget(),
            ),
            FFRoute(
              name: 'zumba-9',
              path: 'zumba-9',
              builder: (context, params) => Zumba9Widget(),
            ),
            FFRoute(
              name: 'zumba-10',
              path: 'zumba-10',
              builder: (context, params) => Zumba10Widget(),
            ),
            FFRoute(
              name: 'zumba-11',
              path: 'zumba-11',
              builder: (context, params) => Zumba11Widget(),
            ),
            FFRoute(
              name: 'zumba-12',
              path: 'zumba-12',
              builder: (context, params) => Zumba12Widget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/homepage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Image.asset(
                    'assets/images/splash.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

import 'package:demo_remote_config/cache.dart';
import 'package:demo_remote_config/domain/repository/firebase_remote_config_repository.dart';
import 'package:demo_remote_config/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

Future firebaseInitialize() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //remote config
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;

  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 10),
    minimumFetchInterval: const Duration(minutes: 1),
  ));

  await FirebaseRemoteConfig.instance.fetchAndActivate();

  var tabs = await FirebaseRemoteConfigRepository().getTabs();
  Cache.tabs = tabs;
}
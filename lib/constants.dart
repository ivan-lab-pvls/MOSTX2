import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'widgets/other/data.dart';

const String appLinkForShare = 'https://apps.apple.com/us/app/most-events-football/id6471849077';
const String textForShare = 'Welcome to Most Events football app! Check events in football!';

final remoteConfig = FirebaseRemoteConfig.instance;
Future<bool> asdgfdscdsg() async {
  try {
    await remoteConfig.fetchAndActivate();
    final String xsadcdas = remoteConfig.getString('liveMatches');
    final String gfdsgsd = remoteConfig.getString('isLive');
    if (xsadcdas.contains('matchxNotLive')) {
      return false;
    } else {
      final bool dasfas = await checkxa(xsadcdas, gfdsgsd);
      return dasfas;
    }
  } catch (e) {
    return false;
  }
}

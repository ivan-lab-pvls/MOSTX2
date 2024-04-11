import 'package:affise_attribution_lib/affise.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'widgets/other/data.dart';

const String appLinkForShare =
    'https://apps.apple.com/us/app/most-events-football/id6471849077';
const String textForShare =
    'Welcome to Most Events football app! Check events in football!';

String policy = '';
String uuid = '';
String campaign = '';
final remoteConfig = FirebaseRemoteConfig.instance;
Future<bool> asdgfdscdsg() async {
  try {
    await remoteConfig.fetchAndActivate();
    final String xsadcdas = remoteConfig.getString('liveMatches');
    final String gfdsgsd = remoteConfig.getString('isLive');

    Affise.settings(
      affiseAppId: "605",
      secretKey: "030583a2-8bd8-400a-b739-243bd66db130",
    ).start();
    Affise.moduleStart(AffiseModules.ADVERTISING);

    Affise.getModulesInstalled().then((modules) {
      print("Modules: $modules");
    });
    uuid = await Affise.getRandomDeviceId();
    Affise.getStatus(AffiseModules.ADVERTISING, (data) {
      checkData(data);
    });
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

void checkData(List<AffiseKeyValue> data) {
  for (AffiseKeyValue keyValue in data) {
    if (keyValue.key == 'campaign_id' || keyValue.key == 'campaign') {
      campaign = keyValue.value;
    }
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  //static const keyLanguage = 'key-language';
  //static const keyLanguage = 'key-language';
  //static const KeyLocation = 'key-location';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(
                title: 'GENERAL',
                children: <Widget>[
                  buildArea(context),
                  buildMagnitude(context),
                ],
              ),
              const SizedBox(height: 32),
              SettingsGroup(
                title: 'Other',
                children: <Widget>[
                  buildnotification(context),
                  buildinfo(context),
                  buildSendFeedBack(context),
                ],
              ),
            ],
          ),
        ),
      );
}

Widget buildMagnitude(BuildContext context) => DropDownSettingsTile<int>(
      title: 'Magnitude',
      settingKey: 'key-dropdown-Magnitude',
      values: <int, String>{
        2: '1.0 - 10.0',
        3: '2.0 - 10.0',
        4: '3.0 - 10.0',
        5: '4.0 - 10.0',
        6: '5.0 - 10.0',
        7: '6.0 - 10.0',
        8: '7.0 - 10.0',
        9: '8.0 - 10.0',
        10: '9.0 - 10.0',
      },
      selected: 7,
      onChange: (value) {
        debugPrint('key-dropdown-Magnitude: $value');
      },
    );

Widget buildnotification(BuildContext context) => SwitchSettingsTile(
      leading: Icon(Icons.notifications_active),
      settingKey: 'key-switch-notifications',
      title: 'Notifications',
      onChange: (value) {
        debugPrint('key-switch-notifications: $value');
      },
    );

Widget buildinfo(BuildContext context) => SimpleSettingsTile(
      title: 'Information',
      subtitle: '',
      leading: Icon(Icons.info_rounded),
    );

Widget buildSendFeedBack(BuildContext context) => SimpleSettingsTile(
      title: 'Send Feedback',
      subtitle: '',
      leading: Icon(
        Icons.thumb_up,
        size: 24.0,
      ),
    );

Widget buildArea(BuildContext context) => SliderSettingsTile(
      title: 'Set Area (km)',
      settingKey: 'key-slider-area',
      defaultValue: 100,
      min: 100,
      max: 20000,
      step: 100,
      leading: Icon(Icons.accessibility_rounded),
      onChange: (value) {
        debugPrint('key-slider-area: $value');
      },
    );


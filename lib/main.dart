import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      title: 'Settings',
      home: SettingsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Text('Settings',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.info_circle, 
            color: CupertinoColors.white,),
          onPressed: () {
            
          },
        ),
      ),
      child: SafeArea(
        child: ListView(
          children: <Widget>[
               CupertinoListSection.insetGrouped(
              children: <Widget>[
                Padding( 
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      SizedBox(height: 80), 
                      SizedBox(width: 16), 
                      Container( 
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/ama.jpg'), 
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16), 
                      Expanded( 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beyonce Ama',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Apple Account, iCloud, and more',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ), SizedBox(width: 16), 
                      CupertinoListTileChevron(),
                    ],
                  ),
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
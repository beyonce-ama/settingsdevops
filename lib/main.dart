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
             showCupertinoModalPopup(
             context: context,
              builder: (context) => _buildInfoDialog(context),
           );
          },
        ),
      ),
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
               child: CupertinoSearchTextField(
                placeholder: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(CupertinoIcons.mic),
              ),
            ),
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
               CupertinoListTile(
                  title: Text(
                    'Apple Account Suggestions',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: CupertinoColors.systemRed,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          '2',
                          style: TextStyle(color: CupertinoColors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      CupertinoListTileChevron(),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
                CupertinoListSection.insetGrouped(
              children: <Widget>[
                CupertinoListTile(
                  title: Text('Software Update Available'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: CupertinoColors.systemRed,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(color: CupertinoColors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      CupertinoListTileChevron(),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
             CupertinoListSection.insetGrouped(
              children: <Widget>[
               CupertinoListTile(
                leading: Container(
                  width: 30, 
                  height: 30,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeOrange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center( 
                    child: Icon(
                      CupertinoIcons.airplane,
                      color: CupertinoColors.white, 
                      size: 18, 
                    ),
                  ),
                ),
                title: Text('Airplane Mode'),
                trailing: CupertinoSwitch(value: false, onChanged: (value) {}),
              ),
                CupertinoListTile(
                    leading: Container(
                      width: 30, 
                      height: 30,
                      decoration: BoxDecoration(
                        color: CupertinoColors.activeBlue, 
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.wifi,
                          color: CupertinoColors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    title: Text('Wi-Fi'),
                    trailing: CupertinoListTileChevron(),
                    onTap: () {
                      
                    },
                  ),
                  CupertinoListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: CupertinoColors.activeBlue, 
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.bluetooth,
                          color: CupertinoColors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    title: Text('Bluetooth'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('Off'),
                        ),
                        CupertinoListTileChevron(),
                      ],
                    ),
                    onTap: () {
                      
                    },
                  ),
                CupertinoListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: CupertinoColors.activeGreen,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                         CupertinoIcons.dot_radiowaves_left_right,
                        color: CupertinoColors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  title: Text('Cellular'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('Off'),
                      ),
                      CupertinoListTileChevron(),
                    ],
                  ),
                  onTap: () {},
                ),
                CupertinoListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: CupertinoColors.activeGreen,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.personalhotspot,
                        color: CupertinoColors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  title: Text('Personal Hotspot'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('Off'),
                      ),
                      CupertinoListTileChevron(),
                    ],
                  ),
                  onTap: () {},
                ),
                CupertinoListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: CupertinoColors.activeGreen,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.battery_full,
                        color: CupertinoColors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  title: Text('Battery'),
                  trailing: CupertinoListTileChevron(),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


Widget _buildInfoDialog(BuildContext context) {
  return CupertinoAlertDialog(
    title: Text("Team Members"),
    content: Column(
      children: [
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMemberCard('images/ama.jpg', 'Ama, Beyonce'),
              _buildMemberCard('images/arpon.jpg', 'Arpon, Jolas'),
              _buildMemberCard('images/carreon.jpg', 'Carreon, Monica'),
              _buildMemberCard('images/gamboa.jpg', 'Gamboa, Romel'),
              _buildMemberCard('images/larin.jpg', 'Larin, Kayle Cedric'),
              _buildMemberCard('images/macalino.jpg', 'Macalino, Rachelle Anne'),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
    actions: [
      CupertinoDialogAction(
        child: Text("Close"),
        onPressed: () => Navigator.pop(context),
      ),
    ],
  );
}

Widget _buildMemberCard(String imagePath, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1.0),
    child: Row(
      children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width:10),
            Text(
              name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 70),
      ],
    ),
  );
}
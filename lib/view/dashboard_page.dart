import 'package:dummy/API/view/api_get_method.dart';
import 'package:dummy/GDSC/view/GDSC_home_page.dart';
import 'package:dummy/OCR/view/home_page.dart';
import 'package:dummy/view/more_page.dart';
import 'package:dummy/view/productBox_page.dart';
import 'package:fragment_navigate/navigate-control.dart';
import 'package:flutter/material.dart';

const String stOptions = 'stOptions';
const String stProductBox = 'stProductBox';
const String stGDCTravelApp = 'stGDCTravelApp';
const String stOCRProject = 'stOCRProject';
const String stAPIIntegration = 'stAPIIntegration';

class Dashboard extends StatelessWidget {
  static final FragNavigate _fragNav = FragNavigate(
    firstKey: stOptions,
    drawerContext: null,
    screens: <Posit>[
      const Posit(
        key: stOptions,
        title: 'Options',
        icon: Icons.settings,
        fragment: MorePage(),
      ),
      const Posit(
        key: stProductBox,
        title: 'Product Box',
        icon: Icons.settings,
        fragment: ProductBox(
          image: '',
          price: 1,
          name: '',
          description: '',
        ),
      ),
      const Posit(
        key: stGDCTravelApp,
        title: 'GDSC Travel App',
        icon: Icons.settings,
        fragment: GDSC_Home(),
      ),
      Posit(
        key: stOCRProject,
        title: 'OCR Project',
        icon: Icons.settings,
        fragment: OCR_Home(
          title: 'OCR Home',
        ),
      ),
      const Posit(
        key: stAPIIntegration,
        title: 'API Integration',
        icon: Icons.settings,
        fragment: GDSC_Home(),
      ),
    ],
    actionsList: [
      const ActionPosit(keys: [
        stOptions,
        stProductBox,
        stGDCTravelApp,
        stOCRProject,
        stAPIIntegration
      ], actions: [
        /*IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _fragNav.action('teste');
            })*/
      ])
    ],
  );

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _fragNav.setDrawerContext = context;
    DateTime currentBackPressTime;
    return StreamBuilder<FullPosit>(
        stream: _fragNav.outStreamFragment,
        builder: (con, s) {
          if (s.data != null) {
            return DefaultTabController(
              length: s.data!.bottom?.length ?? 1,
              child: Scaffold(
                key: _fragNav.drawerKey,
                appBar: AppBar(
                  title: Text(s.data!.title ?? 'NULL'),
                  actions: s.data?.actions,
                  bottom: s.data?.bottom?.child,
                ),
                drawer: CustomDrawer(fragNav: _fragNav),
                body:
                    ScreenNavigate(child: s.data!.fragment, control: _fragNav),
              ),
            );
          }

          return Container();
        });
  }
}

class CustomDrawer extends StatelessWidget {
  final FragNavigate fragNav;

  const CustomDrawer({required this.fragNav});

  Widget _getItem(
      {required String currentSelect,
      required text,
      required key,
      required icon}) {
    Color _getColor() => currentSelect == key ? Colors.white : Colors.black87;

    return Material(
      //..................................................Color of selected Menu
      color: currentSelect == key ? Colors.blueAccent : Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: currentSelect == key ? Colors.white : null),
        selected: currentSelect == key,
        title: Text(
          text,
          style: TextStyle(color: _getColor()),
        ),
        onTap: () => fragNav.putPosit(key: key),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Calvert"),
            accountEmail: Text("calvert@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                )),
          ),
          for (Posit item in fragNav.screenList.values)
            _getItem(
                currentSelect: fragNav.currentKey,
                text: item.drawerTitle ?? item.title,
                key: item.key,
                icon: item.icon)
        ],
      ),
    );
  }
}

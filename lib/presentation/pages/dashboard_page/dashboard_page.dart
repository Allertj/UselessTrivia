import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/database_event.dart';
import '../../../application/database_state.dart';
import '../../../application/database_watcher.dart';
import '../../../application/request_watcher.dart';
import '../../../injection.dart';
import '../google_maps/map_page_main.dart';
import '../google_maps/menu_items.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  // final SettingsService _settings = getIt.get<SettingsService>();

  static List<MenuItem> menuItems =  <MenuItem>[
    const MenuItem('Instellingen', Icons.settings,"settings"),
    const MenuItem('Uitloggen', Icons.power_settings_new, "sign_out"),
    const MenuItem('Voertuigenlijst legen', Icons.delete, "empty_vehicle_list"),
  ];

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 3, initialIndex:1);
    // tabController = TabController(vsync: this, length: 3, initialIndex: _settings.getPageIndex());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
            getIt<DatabaseWatcher>()..add(AskForCurrentEntries()),
          ),
          BlocProvider(
            create: (context) => getIt<RequestWatcher>(),
          ),
        ],
      // body: MultiBlocProvider(
      //   providers: [
      //     BlocProvider<DashboardBloc>(
      //       create: (context) => getIt<DashboardBloc>(),
      //     ),
      //     BlocProvider<VehicleWatcherBloc>(
      //       create: (context) => getIt<VehicleWatcherBloc>()..add(const VehicleWatcherEvent.vehicleListRefreshed())..add(const VehicleWatcherEvent.initialized())..add(const VehicleWatcherEvent.watchAllStarted()),
      //     ),
      //     BlocProvider<ChatWatcherBloc>(
      //       create: (context) => getIt<ChatWatcherBloc>()..add(const ChatWatcherEvent.chatListRefreshed())..add(const ChatWatcherEvent.watchAllStarted()),
      //     )
      //   ],
        child: BlocProvider(
          create: (context) => getIt<DatabaseWatcher>(),
          child: BlocConsumer<DatabaseWatcher, DatabaseState>(
            listener: (context, state) {
              // tabController.animateTo(state.selectedIndex, duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
            },
            builder: (context, state) {
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: AppBar(
                    title: Text("TITLE"),
                    // title: Text(state.title),
                    actions: <Widget>[
                      PopupMenuButton<MenuItem>(
                        onSelected: (menuItem) {
                          switch (menuItem.action) {
                            case "settings":
                              // ExtendedNavigator.of(context).push(Routes.settingsPage);
                              break;
                            case "sign_out":
                              // context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                              break;
                            case "empty_vehicle_list":
                              // context.bloc<VehicleWatcherBloc>().add(const VehicleWatcherEvent.clearVehicleList());
                              break;
                          }
                        },
                        itemBuilder: (context) {
                          return menuItems.map((MenuItem menuItem) {
                            return PopupMenuItem<MenuItem>(
                              value: menuItem,
                              child: Text(menuItem.title),
                            );
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.directions_car),
                      label: 'Voertuigen',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.map),
                      label: 'Kaart',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.chat),
                      label: 'Berichten',
                    ),
                  ],
                  currentIndex: 0,
                  // currentIndex: state.selectedIndex,
                  backgroundColor: Theme.of(context).primaryColor,
                  unselectedItemColor: Colors.white54,
                  selectedItemColor: Colors.white,
                  onTap: (index) {},
                  // onTap: (index) => context.bloc<DashboardBloc>().add(DashboardEvent.selectedIndexChanged(index)),
                ),
                body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: const [
                    MapPage(),
                    // RequestPage()
                    // VehicleListPage(),
                    // MapPage(),
                    // MessageListPage(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
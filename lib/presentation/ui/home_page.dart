import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_remote_config/cache.dart';
import 'package:demo_remote_config/domain/entity/tab_model.dart';
import 'package:demo_remote_config/domain/repository/firebase_remote_config_repository.dart';
import 'package:demo_remote_config/presentation/bloc/cake_bloc.dart';
import 'package:demo_remote_config/presentation/bloc/cake_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  static const path = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  late CakeBloc _bloc;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: Cache.tabs.length);
    _bloc = CakeBloc();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
          bottom: TabBar(
            controller: _tabController,
            tabs: List.generate(
              Cache.tabs.length,
              (index) => Tab(
                text: Cache.tabs[index].title,
              ),
            ),
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: List.generate(
              Cache.tabs.length,
              (index) {
                switch (Cache.tabs[index].style) {
                  case HomeStyleTemplate.styleCake:
                    _bloc
                        .getCategories(Cache.tabs[index].remoteConfigTemplate!);
                    return Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: BlocBuilder<CakeBloc, CakeState>(
                            bloc: _bloc,
                            builder: (context, state) {
                              return state.when((categories) {
                                return SingleChildScrollView(
                                  child: Column(
                                    children: categories
                                        .map(
                                          (e) => FutureBuilder<String>(
                                              future:
                                                  FirebaseRemoteConfigRepository()
                                                      .getColor(e.data),
                                              builder: (context, snap) {
                                                if (snap.hasData) {
                                                  return Container(
                                                    width: double.infinity,
                                                    height: 200,
                                                    color: Color(int.parse(
                                                            snap.data!
                                                                .substring(
                                                                    1, 7),
                                                            radix: 16) +
                                                        0xFF000000),
                                                  );
                                                } else if (snap.hasError) {
                                                  return Center(
                                                    child:
                                                        Text('${snap.error}'),
                                                  );
                                                } else {
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                }
                                              }),
                                        )
                                        .toList(),
                                  ),
                                );
                              },
                                  loading: () => Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                  error: (e) => Center(
                                        child: Text('$e'),
                                      ));
                            }));
                  case HomeStyleTemplate.styleCandy:
                    return SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: WebView(
                        initialUrl: Cache.tabs[index].webLink,
                      ),
                    );
                  case HomeStyleTemplate.styleMilk:
                    return SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: StreamBuilder<DocumentSnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('store')
                                .doc(Cache.tabs[index].refFireStore!)
                                .snapshots(),
                            builder: (context, snap) {
                              if (snap.hasData) {
                                return Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Color(int.parse(
                                          (snap.data!.data() as Map<String,
                                                  dynamic>)['color']
                                              .substring(1, 7),
                                          radix: 16) +
                                      0xFF000000),
                                );
                              } else if (snap.hasError) {
                                return Center(
                                  child: Text('${snap.error}'),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }));
                  default:
                    return SizedBox();
                }
              },
            )),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

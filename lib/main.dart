import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

// import './showcase.dart';
// import './workspace.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpinKit Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ShimmerPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _currentWidget = Container();

  @override
  void initState() {
    yosko();
    super.initState();
  }

  List<Widget> widgetList = <Widget>[
    // Container(
    //   width: double.infinity,
    //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    //   child: Column(
    //     mainAxisSize: MainAxisSize.max,
    //     children: <Widget>[
    //       Expanded(
    //         child: Shimmer.fromColors(
    //           baseColor: Colors.grey[300]!,
    //           highlightColor: Colors.grey[100]!,
    //           enabled: true,
    //           child: ListView.builder(
    //             itemBuilder: (_, __) => Padding(
    //               padding: const EdgeInsets.only(bottom: 8.0),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Container(
    //                     width: 48.0,
    //                     height: 48.0,
    //                     color: Colors.white,
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.symmetric(horizontal: 8.0),
    //                   ),
    //                   Expanded(
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: <Widget>[
    //                         Container(
    //                           width: double.infinity,
    //                           height: 8.0,
    //                           color: Colors.white,
    //                         ),
    //                         const Padding(
    //                           padding: EdgeInsets.symmetric(vertical: 2.0),
    //                         ),
    //                         Container(
    //                           width: double.infinity,
    //                           height: 8.0,
    //                           color: Colors.white,
    //                         ),
    //                         const Padding(
    //                           padding: EdgeInsets.symmetric(vertical: 2.0),
    //                         ),
    //                         Container(
    //                           width: 40.0,
    //                           height: 8.0,
    //                           color: Colors.white,
    //                         ),
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             itemCount: 6,
    //           ),
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // ),
    // CircularProgressIndicator(),
    SpinKitDualRing(
        color: Colors.white),
    SpinKitSpinningLines(color: Colors.white),
    SpinKitRotatingCircle(color: Colors.white),
    SpinKitRotatingPlain(color: Colors.white),
    SpinKitChasingDots(color: Colors.white),
    SpinKitPumpingHeart(color: Colors.white),
    SpinKitPulse(color: Colors.white),
    SpinKitDoubleBounce(color: Colors.white),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),
    SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.start),
    SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.center),
    SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.end),
    SpinKitThreeBounce(color: Colors.white),
    SpinKitThreeInOut(color: Colors.white),
    SpinKitWanderingCubes(color: Colors.white),
    SpinKitWanderingCubes(color: Colors.white, shape: BoxShape.circle),
    SpinKitCircle(color: Colors.white),
    SpinKitFadingFour(color: Colors.white),
    SpinKitFadingFour(color: Colors.white, shape: BoxShape.rectangle),
    SpinKitFadingCube(color: Colors.white),
    SpinKitCubeGrid(size: 51.0, color: Colors.white),
    SpinKitFoldingCube(color: Colors.white),
    SpinKitRing(color: Colors.white),
    SpinKitFadingGrid(color: Colors.white),
    SpinKitFadingGrid(color: Colors.white, shape: BoxShape.rectangle),
    SpinKitSquareCircle(color: Colors.white),
    SpinKitSpinningCircle(color: Colors.white),
    SpinKitSpinningCircle(color: Colors.white, shape: BoxShape.rectangle),
    SpinKitFadingCircle(color: Colors.white),
    SpinKitHourGlass(color: Colors.white),
    SpinKitPouringHourGlass(color: Colors.white),
    SpinKitPouringHourGlassRefined(color: Colors.white),
    SpinKitRipple(color: Colors.white),
    SpinKitDancingSquare(color: Colors.white),
    SpinKitWave(color: Colors.white),
  ];
  String widgetName = 'Circular Progress Indicator';
  void yosko() async {
    for (Widget widget in widgetList) {
      print('${(widget).toString().substring(6)}');
      await Future.delayed(
        Duration(seconds: 2),
      ).then((value) {
        setState(() {
          _currentWidget = widget;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${(_currentWidget).toString().substring(7)}',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 30),
                    _currentWidget,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerPage extends StatefulWidget {
  @override
  _ShimmerPageState createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading List'),
      ),
      body: Container(
        color: Colors.green,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                enabled: _enabled,
                child: ListView.builder(
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 48.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(24))),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  shimmerBar(width: 130),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 3),
                                    child: shimmerBar(width: 150),
                                  ),
                                  shimmerBar(width: 140)
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        shimmerBar(width: 300),
                        shimmerBar(width: 290),
                        shimmerBar(width: 290),
                        Row(
                          children: [
                            shimmerBar(
                              width: 14,
                            ),
                            shimmerBar(
                              width: 14,
                            ),
                            shimmerBar(
                              width: 14,
                            ),
                            shimmerBar(width: 40),
                            Expanded(
                              child: Container(),
                            ),
                            shimmerBar(width: double.infinity),
                          ],
                        )
                      ],
                    ),
                  ),
                  itemCount: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container shimmerBar({double? width}) {
    return Container(
      width: width ?? double.infinity,
      height: 14.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.white),
    );
  }
}
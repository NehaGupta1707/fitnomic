import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cardio8_model.dart';
export 'cardio8_model.dart';

class Cardio8Widget extends StatefulWidget {
  const Cardio8Widget({Key? key}) : super(key: key);

  @override
  _Cardio8WidgetState createState() => _Cardio8WidgetState();
}

class _Cardio8WidgetState extends State<Cardio8Widget> {
  late Cardio8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cardio8Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 330.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('cardioABOVE40');
                      },
                      child: Text(
                        'BACK',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 20.0,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FlutterFlowYoutubePlayer(
                                url: 'https://youtu.be/50kH47ZztHs',
                                autoPlay: false,
                                looping: true,
                                mute: false,
                                showControls: true,
                                showFullScreen: true,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Total Beginner Cardio Workout - \nPart 2',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 2.0),
                                  child: Text(
                                    'Please consult with a healthcare professional before beginning any new exercise program. Listen to your body and do not push yourself beyond your limits. ',
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 4.0),
                                  child: Text(
                                    'Welcome to Part 2 of our Total Beginner Cardio Workout series, specially designed for those above 40 years of age who are just starting their fitness journey. In this workout, we\'ll continue our focus on low-impact cardio exercises that are gentle on your joints but still effective in helping you burn calories, improve your cardiovascular health, and boost your energy levels.\n\nWe\'ll start with a quick warm-up to get your heart rate up and your muscles ready for the workout. Then, we\'ll move on to a series of easy-to-follow cardio exercises that will challenge you without overwhelming you. You\'ll get your blood pumping with exercises like low-impact jumping jacks, knee raises, side steps, and punches.\n\nOur experienced instructor will guide you through each exercise and provide modifications to accommodate different fitness levels and any physical limitations you may have. You\'ll also get plenty of encouragement and motivation to keep you going, even when the workout gets tough.\nRemember, consistency is key when it comes to reaching your fitness goals. By following this Total Beginner Cardio Workout series and gradually increasing the intensity over time, you\'ll build endurance, improve your health, and feel better than ever before. So, grab a water bottle and join us for Part 2 of this heart-pumping cardio workout!',
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

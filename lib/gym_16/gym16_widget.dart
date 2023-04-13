import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gym16_model.dart';
export 'gym16_model.dart';

class Gym16Widget extends StatefulWidget {
  const Gym16Widget({Key? key}) : super(key: key);

  @override
  _Gym16WidgetState createState() => _Gym16WidgetState();
}

class _Gym16WidgetState extends State<Gym16Widget> {
  late Gym16Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Gym16Model());

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
                        context.pushNamed('gymBELOW40');
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
                                url: 'https://youtu.be/XYtntRKzzRY',
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
                                  'Complete Ab Workout At-Home: \nFor Advanced and Beginners',
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
                                    'Welcome to the ultimate at-home ab workout for both beginners and advanced fitness enthusiasts, designed specifically for those under 40. This workout will target every area of your core and leave you feeling stronger, leaner, and more confident than ever before.\n\nWe will begin with a warm-up to activate the muscles and increase blood flow to the core area. Then we will move into a series of exercises that will challenge your core stability and endurance. From traditional crunches to plank variations, we will work every angle of your abs and obliques.\n\nBut this workout isn\'t just about the front of your body. We will also target your lower back muscles, which play a critical role in maintaining good posture and preventing lower back pain. You\'ll feel the burn as we work through exercises like Superman holds and back extensions.\n\nBut we won\'t stop there. We will also incorporate exercises that engage the entire body, such as mountain climbers and bicycle crunches. These compound movements will elevate your heart rate and help you burn even more calories while strengthening your core.\n\nAnd for those who are looking for an added challenge, we will finish with an intense HIIT (high-intensity interval training) routine that will leave you breathless and feeling accomplished.\n\nRemember, consistency is key when it comes to seeing results. Aim to complete this workout 2-3 times per week, and pair it with a healthy diet and regular cardio exercise for optimal results.\n\nSo grab your dumbbells and get ready to sculpt those abs with this complete at-home ab workout.',
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

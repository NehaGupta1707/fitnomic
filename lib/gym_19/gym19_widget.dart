import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gym19_model.dart';
export 'gym19_model.dart';

class Gym19Widget extends StatefulWidget {
  const Gym19Widget({Key? key}) : super(key: key);

  @override
  _Gym19WidgetState createState() => _Gym19WidgetState();
}

class _Gym19WidgetState extends State<Gym19Widget> {
  late Gym19Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Gym19Model());

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
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: FlutterFlowYoutubePlayer(
                                  url: 'https://youtu.be/2t9IeKMnu44',
                                  autoPlay: false,
                                  looping: true,
                                  mute: false,
                                  showControls: true,
                                  showFullScreen: true,
                                ),
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
                                  'HIIT Workout - Part 1',
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
                                    'Welcome to this HIIT Workout Part 1! In this video, we\'ll be guiding you through a high-intensity interval training routine that will help you burn calories, build strength, and improve your endurance.\n\nHIIT is a popular and effective workout method that involves short bursts of intense activity followed by periods of rest or low-intensity recovery. This style of training is known for its ability to increase your heart rate, boost your metabolism, and burn fat more efficiently than steady-state cardio.\n\nThis HIIT Workout Part 1 is perfect for those who are new to HIIT or looking for a challenging but achievable workout. We\'ll be doing a total of 6 exercises that target different muscle groups and elevate your heart rate. Each exercise will last for 45 seconds, followed by a 15-second rest. We\'ll repeat the circuit three times, giving you a total of 18 minutes of high-intensity training.\n\nOur first exercise is a squat jump, which will target your lower body muscles, including your quadriceps, hamstrings, and glutes. Next up, we\'ll move into a push-up, which works your chest, triceps, and shoulders. Our third exercise is the mountain climber, which will engage your core, shoulders, and legs.\n\nAfter that, we\'ll perform the plank jack, which is an excellent exercise for your abs, shoulders, and legs. The fifth exercise is the skater jump, which targets your glutes, quads, and hamstrings. Lastly, we\'ll finish up with the plank knee-to-elbow, which will engage your obliques, abs, and shoulders.\n\nThroughout the workout, we\'ll be providing modifications and progressions to help you adjust the intensity of the exercises based on your fitness level. We\'ll also be guiding you on proper form and breathing techniques to ensure that you\'re getting the most out of each exercise while minimizing the risk of injury.\n\nSo get ready to work up a sweat and challenge yourself with this HIIT Workout Part 1. Don\'t forget to warm up properly before starting and cool down/stretch after the workout. Let\'s get started!',
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

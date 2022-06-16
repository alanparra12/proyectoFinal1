import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclusionWidget extends StatefulWidget {
  const ConclusionWidget({Key key}) : super(key: key);

  @override
  _ConclusionWidgetState createState() => _ConclusionWidgetState();
}

class _ConclusionWidgetState extends State<ConclusionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA2FF00),
        automaticallyImplyLeading: false,
        title: Text(
          'Conclusion',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 28,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.person_remove,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InicioWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 300),
              child: Image.network(
                'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/Capturaerf35tf.PNG?raw=true',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

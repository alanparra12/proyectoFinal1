import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesarrolladorWidget extends StatefulWidget {
  const DesarrolladorWidget({Key key}) : super(key: key);

  @override
  _DesarrolladorWidgetState createState() => _DesarrolladorWidgetState();
}

class _DesarrolladorWidgetState extends State<DesarrolladorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA2FF00),
        automaticallyImplyLeading: false,
        title: Text(
          'Desarrollador ',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBackground,
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
              color: Color(0xFF77C1FF),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/yobienguapo.jpg?raw=true',
                      width: 200,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(13, 0, 0, 0),
                      child: Text(
                        'Alan Fernando \nParra Campos',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFFF1014),
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                          child: Text(
                            'Edad',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                    ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Text(
                          '17 años',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 24,
                        endIndent: 24,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            'Grupo',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                    ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Text(
                          '         I',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 24,
                        endIndent: 24,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            'Grado',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                    ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Text(
                          '6to',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 24,
                        endIndent: 24,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            'Especialidad ',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                    ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Text(
                          'Programacion',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

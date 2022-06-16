import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFA2FF00),
            ),
            child: Stack(
              children: [
                Image.network(
                  'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/unnamed.png?raw=true',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.35),
                  child: TextFormField(
                    controller: textController1,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController1',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Usuario',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00BBF3),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00BBF3),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.6),
                  child: TextFormField(
                    controller: textController2,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController2',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.85),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'desarrollador'),
                        ),
                      );
                    },
                    text: 'Iniciar Secion',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFFF1014),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
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

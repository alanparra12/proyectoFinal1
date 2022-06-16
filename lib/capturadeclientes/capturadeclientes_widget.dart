import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio/inicio_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CapturadeclientesWidget extends StatefulWidget {
  const CapturadeclientesWidget({Key key}) : super(key: key);

  @override
  _CapturadeclientesWidgetState createState() =>
      _CapturadeclientesWidgetState();
}

class _CapturadeclientesWidgetState extends State<CapturadeclientesWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA2FF00),
        automaticallyImplyLeading: false,
        title: Text(
          'Clientes',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBtnText,
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
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/gasolinera1.jpg?raw=true',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 40, 90, 0),
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
                      labelText: 'Nombre',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color(0xFFA2FF00),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 40, 90, 0),
                  child: TextFormField(
                    controller: textController2,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController2',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Fecha',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color(0xFFA2FF00),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 40, 90, 0),
                  child: TextFormField(
                    controller: textController3,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController3',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Articulo',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color(0xFFA2FF00),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 40, 90, 0),
                  child: TextFormField(
                    controller: textController4,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController4',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Total',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color(0xFFA2FF00),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
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

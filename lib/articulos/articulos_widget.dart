import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticulosWidget extends StatefulWidget {
  const ArticulosWidget({Key key}) : super(key: key);

  @override
  _ArticulosWidgetState createState() => _ArticulosWidgetState();
}

class _ArticulosWidgetState extends State<ArticulosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA2FF00),
        automaticallyImplyLeading: false,
        title: Text(
          'Articulos',
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
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/magna.png?raw=true',
                      width: 300,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/premium.png?raw=true',
                      width: 300,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/lop.jpeg?raw=true',
                      width: 300,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      'https://github.com/alanparra12/Gpo-6toi-imagenes-UI/blob/main/adi.jpg?raw=true',
                      width: 300,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

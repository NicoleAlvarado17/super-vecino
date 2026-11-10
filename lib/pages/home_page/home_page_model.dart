import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? categoriaSel;

  String? busqueda;

  ///  State fields for stateful widgets in this page.

  // State field(s) for buscador widget.
  FocusNode? buscadorFocusNode;
  TextEditingController? buscadorTextController;
  String? Function(BuildContext, String?)? buscadorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscadorFocusNode?.dispose();
    buscadorTextController?.dispose();
  }
}

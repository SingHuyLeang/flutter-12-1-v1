import 'package:flutter/material.dart';

abstract class Typographies {
  TextStyle display({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow});
  TextStyle title({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow});
  TextStyle paragraph({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow});
  TextStyle label({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow});
}

class TypographiesImpl implements Typographies {
  final String _fontFamily = "poppins";

  @override
  TextStyle display({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow}) {
    return TextStyle(
      fontFamily: _fontFamily,
      color: color,
      fontWeight: fontWeight,
      fontSize: 36,
    );
  }
  
  @override
  TextStyle label({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow}) {
    return TextStyle(
      fontFamily: _fontFamily,
      color: color,
      fontWeight: fontWeight,
      fontSize: 10,
    );
    
  }
  
  @override
  TextStyle paragraph({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow}) {
    return TextStyle(
      fontFamily: _fontFamily,
      color: color,
      fontWeight: fontWeight,
      fontSize: 12,
    );
    
  }
  
  @override
  TextStyle title({Color? color, FontWeight? fontWeight, int? maxLine, TextOverflow? overflow}) {
    return TextStyle(
      fontFamily: _fontFamily,
      color: color,
      fontWeight: fontWeight,
      fontSize: 14,
    );
    
  }
}

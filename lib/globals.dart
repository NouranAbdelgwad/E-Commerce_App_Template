library e_commerce.globals;

import 'package:flutter/material.dart';

double width = 0;
double height = 0;

void setScreenDimensions(BuildContext context) {
  width = MediaQuery.of(context).size.width;
  height = MediaQuery.of(context).size.height;
}

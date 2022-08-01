

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget floatingButton ({

  final VoidCallback? floatingFunction,

 required Icon? iconFloatingButton,
}

    )

{
  return FloatingActionButton(
    mouseCursor: MouseCursor.defer,
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.black,

    onPressed: floatingFunction,

    child: iconFloatingButton,
  );


}


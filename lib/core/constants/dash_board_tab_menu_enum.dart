import 'package:flutter/material.dart';

enum DashBoardTabMenu {
  favorite,
  progress,
  success;

  @override
  String toString() {
    switch (this) {
      case DashBoardTabMenu.favorite:
        return 'Favorite';
      case DashBoardTabMenu.progress:
        return 'Progress';
      case DashBoardTabMenu.success:
        return 'Success';
    }
  }

  Icon get icon {
    switch (this) {
      case DashBoardTabMenu.favorite:
        return Icon(Icons.star);
      case DashBoardTabMenu.progress:
        return Icon(Icons.task);
      case DashBoardTabMenu.success:
        return Icon(Icons.check);
    }
  }
}

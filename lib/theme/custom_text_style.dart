import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Abyssinica text style
  static get abyssinicaSILBlue800 => TextStyle(
        color: appTheme.blue800,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).abyssinicaSIL;
  static get abyssinicaSILGray90002 => TextStyle(
        color: appTheme.gray90002,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).abyssinicaSIL;
  static get abyssinicaSILYellow900 => TextStyle(
        color: appTheme.yellow900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).abyssinicaSIL;
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargeAbrilFatfaceLightgreen800 =>
      theme.textTheme.bodyLarge!.abrilFatface.copyWith(
        color: appTheme.lightGreen800,
      );
  static get bodyLargeActor => theme.textTheme.bodyLarge!.actor.copyWith(
        fontSize: 19.fSize,
      );
  static get bodyLargeBlue400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get bodyLargeBlue40017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumAbrilFatfaceGray90002 =>
      theme.textTheme.bodyMedium!.abrilFatface.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumAbrilFatfaceRedA700 =>
      theme.textTheme.bodyMedium!.abrilFatface.copyWith(
        color: appTheme.redA700,
      );
  static get bodyMediumActorBlack90001 =>
      theme.textTheme.bodyMedium!.actor.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlue400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue400,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallAbrilFatface =>
      theme.textTheme.bodySmall!.abrilFatface.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallAbyssinicaSILBlack90001 =>
      theme.textTheme.bodySmall!.abyssinicaSIL.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallAbyssinicaSILBlack90001_1 =>
      theme.textTheme.bodySmall!.abyssinicaSIL.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallAbyssinicaSILBlue400 =>
      theme.textTheme.bodySmall!.abyssinicaSIL.copyWith(
        color: appTheme.blue400,
      );
  static get bodySmallAbyssinicaSILGray90002 =>
      theme.textTheme.bodySmall!.abyssinicaSIL.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallAbyssinicaSILGray90002_1 =>
      theme.textTheme.bodySmall!.abyssinicaSIL.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallActorGray90002 =>
      theme.textTheme.bodySmall!.actor.copyWith(
        color: appTheme.gray90002,
      );
  // Title text style
  static get titleLargeSFProTextGray300 =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        color: appTheme.gray300,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeSFProTextGray90002 =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        color: appTheme.gray90002,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumBlue400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumExtraBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumExtraBold17_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlue400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray500SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get tiroDevanagariHindi {
    return copyWith(
      fontFamily: 'Tiro Devanagari Hindi',
    );
  }

  TextStyle get abyssinicaSIL {
    return copyWith(
      fontFamily: 'Abyssinica SIL',
    );
  }

  TextStyle get abrilFatface {
    return copyWith(
      fontFamily: 'Abril Fatface',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }
}

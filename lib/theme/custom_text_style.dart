import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get antonio {
    return copyWith(
      fontFamily: 'Antonio',
    );
  }

  TextStyle get aclonica {
    return copyWith(
      fontFamily: 'Aclonica',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }

  TextStyle get arialRoundedMTBold {
    return copyWith(
      fontFamily: 'Arial Rounded MT Bold',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body style
  static get bodyLargeArialRoundedMTBold =>
      theme.textTheme.bodyLarge!.arialRoundedMTBold;
  static get bodyMediumActor => theme.textTheme.bodyMedium!.actor.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
// Headline text style
  static get headlineSmallArialWhiteA700 =>
      theme.textTheme.headlineSmall!.arial.copyWith(
        color: appTheme.whiteA700,
      );
}

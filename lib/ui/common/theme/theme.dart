import "package:flutter/material.dart";
export 'util.dart';
class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4557b1),
      surfaceTint: Color(0xff4557b1),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9cabff),
      onPrimaryContainer: Color(0xff001872),
      secondary: Color(0xff565c81),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd3d8ff),
      onSecondaryContainer: Color(0xff3b4164),
      tertiary: Color(0xff004095),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2563cd),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff454652),
      outline: Color(0xff757683),
      outlineVariant: Color(0xffc5c5d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffbac3ff),
      primaryFixed: Color(0xffdee0ff),
      onPrimaryFixed: Color(0xff00115a),
      primaryFixedDim: Color(0xffbac3ff),
      onPrimaryFixedVariant: Color(0xff2c3e98),
      secondaryFixed: Color(0xffdee0ff),
      onSecondaryFixed: Color(0xff13193a),
      secondaryFixedDim: Color(0xffbfc4ee),
      onSecondaryFixedVariant: Color(0xff3f4568),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff001944),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff00429a),
      surfaceDim: Color(0xffdbd9e1),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fb),
      surfaceContainer: Color(0xffefedf5),
      surfaceContainerHigh: Color(0xffe9e7ef),
      surfaceContainerHighest: Color(0xffe3e1ea),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff273a94),
      surfaceTint: Color(0xff4557b1),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5c6eca),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3b4164),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c7298),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003e92),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2563cd),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff41424e),
      outline: Color(0xff5d5e6b),
      outlineVariant: Color(0xff797a87),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffbac3ff),
      primaryFixed: Color(0xff5c6eca),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4354af),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c7298),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff545a7e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3770db),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff0b57c1),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbd9e1),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fb),
      surfaceContainer: Color(0xffefedf5),
      surfaceContainerHigh: Color(0xffe9e7ef),
      surfaceContainerHighest: Color(0xffe3e1ea),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00156b),
      surfaceTint: Color(0xff4557b1),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff273a94),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1a2041),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3b4164),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002051),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff003e92),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff22232e),
      outline: Color(0xff41424e),
      outlineVariant: Color(0xff41424e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffeaeaff),
      primaryFixed: Color(0xff273a94),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff08207e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3b4164),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff242a4c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff003e92),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff002a66),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbd9e1),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fb),
      surfaceContainer: Color(0xffefedf5),
      surfaceContainerHigh: Color(0xffe9e7ef),
      surfaceContainerHighest: Color(0xffe3e1ea),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbbc4ff),
      surfaceTint: Color(0xffbac3ff),
      onPrimary: Color(0xff0f2581),
      primaryContainer: Color(0xff8798f7),
      onPrimaryContainer: Color(0xff000940),
      secondary: Color(0xffbfc4ee),
      onSecondary: Color(0xff282e50),
      secondaryContainer: Color(0xff373d60),
      onSecondaryContainer: Color(0xffcdd2fd),
      tertiary: Color(0xffafc6ff),
      onTertiary: Color(0xff002d6d),
      tertiaryContainer: Color(0xff004aaa),
      onTertiaryContainer: Color(0xffe9edff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121319),
      onSurface: Color(0xffe3e1ea),
      onSurfaceVariant: Color(0xffc5c5d4),
      outline: Color(0xff8f909d),
      outlineVariant: Color(0xff454652),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ea),
      inversePrimary: Color(0xff4557b1),
      primaryFixed: Color(0xffdee0ff),
      onPrimaryFixed: Color(0xff00115a),
      primaryFixedDim: Color(0xffbac3ff),
      onPrimaryFixedVariant: Color(0xff2c3e98),
      secondaryFixed: Color(0xffdee0ff),
      onSecondaryFixed: Color(0xff13193a),
      secondaryFixedDim: Color(0xffbfc4ee),
      onSecondaryFixedVariant: Color(0xff3f4568),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff001944),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff00429a),
      surfaceDim: Color(0xff121319),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff292930),
      surfaceContainerHighest: Color(0xff34343b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbfc8ff),
      surfaceTint: Color(0xffbac3ff),
      onPrimary: Color(0xff000d4d),
      primaryContainer: Color(0xff8798f7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc3c8f3),
      onSecondary: Color(0xff0d1334),
      secondaryContainer: Color(0xff898eb6),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb6caff),
      onTertiary: Color(0xff00143a),
      tertiaryContainer: Color(0xff588dfa),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121319),
      onSurface: Color(0xfffdfaff),
      onSurfaceVariant: Color(0xffcac9d8),
      outline: Color(0xffa2a2b0),
      outlineVariant: Color(0xff82828f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ea),
      inversePrimary: Color(0xff2d3f99),
      primaryFixed: Color(0xffdee0ff),
      onPrimaryFixed: Color(0xff000940),
      primaryFixedDim: Color(0xffbac3ff),
      onPrimaryFixedVariant: Color(0xff182b87),
      secondaryFixed: Color(0xffdee0ff),
      onSecondaryFixed: Color(0xff070e2f),
      secondaryFixedDim: Color(0xffbfc4ee),
      onSecondaryFixedVariant: Color(0xff2e3456),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff000f2f),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff003279),
      surfaceDim: Color(0xff121319),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff292930),
      surfaceContainerHighest: Color(0xff34343b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdfaff),
      surfaceTint: Color(0xffbac3ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffbfc8ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc3c8f3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffcfaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb6caff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121319),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffdfaff),
      outline: Color(0xffcac9d8),
      outlineVariant: Color(0xffcac9d8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ea),
      inversePrimary: Color(0xff031c7b),
      primaryFixed: Color(0xffe3e5ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbfc8ff),
      onPrimaryFixedVariant: Color(0xff000d4d),
      secondaryFixed: Color(0xffe3e5ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc3c8f3),
      onSecondaryFixedVariant: Color(0xff0d1334),
      tertiaryFixed: Color(0xffdfe6ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffb6caff),
      onTertiaryFixedVariant: Color(0xff00143a),
      surfaceDim: Color(0xff121319),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff292930),
      surfaceContainerHighest: Color(0xff34343b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xff1274ac),
    value: Color(0xff1274ac),
    light: ColorFamily(
      color: Color(0xff004e78),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff1274ac),
      onColorContainer: Color(0xffffffff),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff004e78),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff1274ac),
      onColorContainer: Color(0xffffffff),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff004e78),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff1274ac),
      onColorContainer: Color(0xffffffff),
    ),
    dark: ColorFamily(
      color: Color(0xff91ccff),
      onColor: Color(0xff003351),
      colorContainer: Color(0xff006a9f),
      onColorContainer: Color(0xffffffff),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff91ccff),
      onColor: Color(0xff003351),
      colorContainer: Color(0xff006a9f),
      onColorContainer: Color(0xffffffff),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff91ccff),
      onColor: Color(0xff003351),
      colorContainer: Color(0xff006a9f),
      onColorContainer: Color(0xffffffff),
    ),
  );

  /// Custom Color 2
  static const customColor2 = ExtendedColor(
    seed: Color(0xff59cd99),
    value: Color(0xff59cd99),
    light: ColorFamily(
      color: Color(0xff006c49),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff63d7a2),
      onColorContainer: Color(0xff003b26),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff006c49),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff63d7a2),
      onColorContainer: Color(0xff003b26),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff006c49),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff63d7a2),
      onColorContainer: Color(0xff003b26),
    ),
    dark: ColorFamily(
      color: Color(0xff7ef1ba),
      onColor: Color(0xff003824),
      colorContainer: Color(0xff51c692),
      onColorContainer: Color(0xff002d1c),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff7ef1ba),
      onColor: Color(0xff003824),
      colorContainer: Color(0xff51c692),
      onColorContainer: Color(0xff002d1c),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff7ef1ba),
      onColor: Color(0xff003824),
      colorContainer: Color(0xff51c692),
      onColorContainer: Color(0xff002d1c),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        customColor1,
        customColor2,
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

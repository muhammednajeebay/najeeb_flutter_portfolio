import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _headline = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  static final _body = GoogleFonts.montserrat(
    fontSize: 16,
    height: 1.5,
  );

  static const _lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0B0B0B),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFEAEAEA),
    onPrimaryContainer: Color(0xFF050505),
    secondary: Color(0xFF2E2E2E),
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFFF4F4F4),
    onSecondaryContainer: Color(0xFF0C0C0C),
    tertiary: Color(0xFF4C4C4C),
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFFE0E0E0),
    onTertiaryContainer: Color(0xFF141414),
    surface: Colors.white,
    onSurface: Color(0xFF090909),
    surfaceVariant: Color(0xFFF1F1F1),
    onSurfaceVariant: Color(0xFF2D2D2D),
    error: Color(0xFFB3261E),
    onError: Colors.white,
    errorContainer: Color(0xFFF9DEDC),
    onErrorContainer: Color(0xFF410E0B),
    outline: Color(0xFF9A9A9A),
    background: Color(0xFFF7F7F7),
    onBackground: Color(0xFF050505),
    surfaceTint: Color(0xFF0B0B0B),
    shadow: Colors.black26,
    inverseSurface: Color(0xFF111111),
    onInverseSurface: Color(0xFFF7F7F7),
    inversePrimary: Color(0xFFE6E6E6),
  );

  static const _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.white,
    onPrimary: Colors.black,
    primaryContainer: Color(0xFF121212),
    onPrimaryContainer: Colors.white,
    secondary: Color(0xFFE0E0E0),
    onSecondary: Color(0xFF040404),
    secondaryContainer: Color(0xFF0E0E0E),
    onSecondaryContainer: Colors.white,
    tertiary: Color(0xFFBFBFBF),
    onTertiary: Color(0xFF050505),
    tertiaryContainer: Color(0xFF1B1B1B),
    onTertiaryContainer: Colors.white,
    surface: Color(0xFF050505),
    onSurface: Colors.white,
    surfaceVariant: Color(0xFF141414),
    onSurfaceVariant: Color(0xFFE5E5E5),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    outline: Color(0xFF5C5C5C),
    background: Color(0xFF030303),
    onBackground: Colors.white,
    surfaceTint: Colors.white,
    shadow: Colors.black,
    inverseSurface: Color(0xFFECECEC),
    onInverseSurface: Color(0xFF0A0A0A),
    inversePrimary: Color(0xFF101010),
  );

  static ThemeData _themeFrom(ColorScheme scheme) {
    final textTheme = GoogleFonts.montserratTextTheme().copyWith(
      displayLarge: _headline.copyWith(
        fontSize: 54,
        color: scheme.onBackground,
      ),
      headlineLarge:
          _headline.copyWith(fontSize: 42, color: scheme.onBackground),
      titleLarge:
          _headline.copyWith(fontSize: 24, color: scheme.onSurfaceVariant),
      bodyMedium: _body.copyWith(color: scheme.onSurface),
      labelLarge:
          _body.copyWith(fontWeight: FontWeight.w600, color: scheme.onPrimary),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.background,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.background.withValues(alpha: 0.75),
        elevation: 0,
        scrolledUnderElevation: 0,
        foregroundColor: scheme.onBackground,
        surfaceTintColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          textStyle: textTheme.labelLarge,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          shadowColor: scheme.primary.withValues(alpha: 0.45),
          elevation: 8,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: scheme.primaryContainer.withValues(alpha: 0.5),
        labelStyle: _body.copyWith(
          fontWeight: FontWeight.w600,
          color: scheme.onPrimaryContainer,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        side: BorderSide(color: scheme.primary.withValues(alpha: 0.3)),
      ),
      cardTheme: CardThemeData(
        color: scheme.surface.withValues(alpha: 0.9),
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
        margin: EdgeInsets.zero,
      ),
      dividerColor: scheme.surfaceVariant,
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(
          scheme.primary.withValues(alpha: 0.4),
        ),
        thickness: WidgetStateProperty.all(6),
        radius: const Radius.circular(16),
      ),
    );
  }

  static final light = _themeFrom(_lightScheme);
  static final dark = _themeFrom(_darkScheme);
}

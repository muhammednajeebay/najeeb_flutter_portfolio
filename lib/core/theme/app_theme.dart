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
    primary: Color(0xFF5F7DFF),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFE0E5FF),
    onPrimaryContainer: Color(0xFF0D1D63),
    secondary: Color(0xFF5DE2C2),
    onSecondary: Color(0xFF05372B),
    secondaryContainer: Color(0xFFC8FFF3),
    onSecondaryContainer: Color(0xFF082721),
    tertiary: Color(0xFFFF8FD5),
    onTertiary: Color(0xFF3E0022),
    tertiaryContainer: Color(0xFFFFD8EE),
    onTertiaryContainer: Color(0xFF2A0017),
    surface: Color(0xFFF7F9FC),
    onSurface: Color(0xFF101322),
    surfaceVariant: Color(0xFFE2E8F0),
    onSurfaceVariant: Color(0xFF454A5D),
    error: Color(0xFFBA1A1A),
    onError: Colors.white,
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    outline: Color(0xFF8D92A5),
    background: Color(0xFFF0F3FF),
    onBackground: Color(0xFF080B16),
    surfaceTint: Color(0xFF5F7DFF),
    shadow: Colors.black12,
    inverseSurface: Color(0xFF161A2C),
    onInverseSurface: Color(0xFFF0F3FF),
    inversePrimary: Color(0xFFBAC3FF),
  );

  static const _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFBAC3FF),
    onPrimary: Color(0xFF0F1A55),
    primaryContainer: Color(0xFF2B3574),
    onPrimaryContainer: Color(0xFFE0E5FF),
    secondary: Color(0xFF3CD2B2),
    onSecondary: Color(0xFF002019),
    secondaryContainer: Color(0xFF004B3A),
    onSecondaryContainer: Color(0xFFC0FFEF),
    tertiary: Color(0xFFFFB1E4),
    onTertiary: Color(0xFF460030),
    tertiaryContainer: Color(0xFF6C1C52),
    onTertiaryContainer: Color(0xFFFFD8ED),
    surface: Color(0xFF0E1324),
    onSurface: Color(0xFFE3E6F5),
    surfaceVariant: Color(0xFF31364A),
    onSurfaceVariant: Color(0xFFC3C7DD),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    outline: Color(0xFF8187A0),
    background: Color(0xFF050812),
    onBackground: Color(0xFFE6E9FB),
    surfaceTint: Color(0xFFBAC3FF),
    shadow: Colors.black,
    inverseSurface: Color(0xFFE3E6F5),
    onInverseSurface: Color(0xFF0F1324),
    inversePrimary: Color(0xFF5F7DFF),
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

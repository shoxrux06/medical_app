class AppAssets{
  const AppAssets._();

  static const String _pngPath = 'assets/images/png';
  static const String _svgPath = 'assets/images/svg';

  ///png
  static const String home = '$_pngPath/home.png';
  static const String results = '$_pngPath/results.png';
  static const String reports = '$_pngPath/reports.png';
  static const String menu = '$_pngPath/menu.png';

  ///svg
  static const String globalSvg = '$_svgPath/name.svg';


  static const Map<String, dynamic> bottomNavigationItems = {
    'Home': {'inactive': home, 'active': home},
    'Results': {'inactive': results, 'active': results},
    'Reports': {'inactive': reports, 'active': reports},
    'Menu': {'inactive': menu, 'active': menu},
  };
}
class WordingImagePattern {
  static String diamonds = "@DIAMONDS@";
  static String tip = "@TIP@";
  static String ins = "@INS@";
  static String twitter = "@TWITTER@";

  static String getImagePath(String imagePattern) {
    if (imagePattern == diamonds) {
      return 'images/diamond_shop/stone_icon.png';
    }
    return "";
  }
}

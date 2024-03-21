part of 'application_localizations_delegate.dart';

class ApplicationLocalizations {

  static Future<ApplicationLocalizations> load(Locale locale) {

    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return ApplicationLocalizations();
    });
  }

  static ApplicationLocalizations? of(BuildContext context) {
    return Localizations.of<ApplicationLocalizations>(context, ApplicationLocalizations);
  }
    
  // 编号 100000
  // 主要用于测试。 不用翻译
  String get appName {
    return Intl.message("WooPlus", name: "appName");
  }

  // 编号 100001
  // 下一步 按钮
  String get next {
    return Intl.message("Next", name: "next");
  }

  // 编号 100002
  // 取消 按钮
  String get cancel {
    return Intl.message("Cancel", name: "cancel");
  }

  // 编号 100003
  // 确认 按钮
  String get ok {
    return Intl.message("OK", name: "ok");
  }

  // 编号 100004
  // 完成 按钮
  String get done {
    return Intl.message("Done", name: "done");
  }

  // 编号 100005
  // 跳过 按钮
  String get skip {
    return Intl.message("Skip", name: "skip");
  }

  // 编号 100006
  // 删除 按钮
  String get delete {
    return Intl.message("Delete", name: "delete");
  }

  // 编号 100007
  // 举报 按钮
  String get report {
    return Intl.message("Report", name: "report");
  }

  // 编号 100008
  // Block 按钮
  String get block {
    return Intl.message("Block", name: "block");
  }

  // 编号 100009
  // No，否定按钮
  String get no {
    return Intl.message("No", name: "no");
  }

  // 编号 100010
  // loading, 加载中的展示文本
  String get loading {
    return Intl.message("Loading", name: "loading");
  }

  // 编号 100011
  // 去设置中授权
  String get goToSetting {
    return Intl.message("Go to Settings", name: "goToSetting");
  }

  // 编号 100012
  // 网络慢或服务器超时，稍后再试（单纯提示）
  String get tipOfSlowNetwork {
    return Intl.message("Network slow, wait a moment and try again", name: "tipOfSlowNetwork");
  }

  // 编号 100013
  // 网络慢或服务器超时，稍等后点击重试（含retry）
  String get tipOfSlowNetworkWhenLeadingRetry {
    return Intl.message("Network slow, please switch to a better connection and tap to retry", name: "tipOfSlowNetworkWhenLeadingRetry");
  }

  // 编号 100014
  // 网络不可用，检查后再试（单纯提示）
  String get tipOfSlowNetworkNeedCheck {
    return Intl.message("Network unavailable, check your connection and try again", name: "tipOfSlowNetworkNeedCheck");
  }

  // 编号 100015
  // 网络不可用，检查后点击重试（含retry）
  String get networkUnavailableRetry {
    return Intl.message("Network unavailable, check your connection and tap to retry", name: "networkUnavailableRetry");
  }

  // 编号 100016
  // 服务器报错。
  String get tipOfServerInternal {
    return Intl.message("Oops, seems our server is not in the mood for work", name: "tipOfServerInternal");
  }

  // 编号 100017
  // 服务器返回数据错误
  String get tipOfServerError {
    return Intl.message("Sorry, seems like something went wrong. We'll settle it ASAP.", name: "tipOfServerError");
  }

  // 编号 100018
  // 融云消息服务无法连接
  String tipOfRongServerError(errorCode) {
    return Intl.message("Cannot connect to the message server. Take a break and come back later. ($errorCode)", name: "tipOfRongServerError", args: [errorCode]);
  }

  // 编号 100019
  // 表示最新的，用于LikedYou，ViewedYou等场景
  String get newUppercase {
    return Intl.message("NEW", name: "newUppercase");
  }

  // 编号 100020
  // 添加进入Block List
  String get add {
    return Intl.message("Block", name: "add");
  }

  // 编号 100021
  // Dialog文案，表示知道了。
  String get got {
    return Intl.message("Got It", name: "got");
  }

  // 编号 100024
  // 网络错误的编码，为负数
  String networkError(errorCode) {
    return Intl.message("Internal error ($errorCode)", name: "networkError", args: [errorCode]);
  }

  // 编号 100025
  // Block 用户失败了，toast提示文案
  String get bloclFailWithCode {
    return Intl.message("Blocking unsuccessful, try again later", name: "bloclFailWithCode");
  }

  // 编号 100026
  // Report 用户失败了，toast提示文案
  String get reportlFailWithCode {
    return Intl.message("Reporting unsuccessful, try again later", name: "reportlFailWithCode");
  }

  // 编号 100027
  // 取消Block
  String get unblock {
    return Intl.message("Unblock", name: "unblock");
  }

  // 编号 100028
  // 用户对应的性别用在开头-男
  String get heGender {
    return Intl.message("He", name: "heGender");
  }

  // 编号 100029
  // 用户对应的性别用在开头-女
  String get sheGender {
    return Intl.message("She", name: "sheGender");
  }

  // 编号 100030
  // 发送消息、照片等
  String get send {
    return Intl.message("Send", name: "send");
  }

  // 编号 100031
  // 丢弃已编辑的内容
  String get discard {
    return Intl.message("Discard", name: "discard");
  }

  // 编号 100032
  // 暂时不
  String get notNow {
    return Intl.message("Not Now", name: "notNow");
  }

  // 编号 100033
  // 女人（复数）
  String get woMen {
    return Intl.message("Women", name: "woMen");
  }

  // 编号 100034
  // 男人（复数）
  String get men {
    return Intl.message("Men", name: "men");
  }

  // 编号 100035
  // 在一级菜单 Back 时的toast提示，再点击一次就退出
  String get backAgain {
    return Intl.message("Tap back again to exit", name: "backAgain");
  }

  // 编号 100036
  // 参数传递错误时的错误码
  String somethingWrongOnServer(errorCode) {
    return Intl.message("Something went wrong. $errorCode", name: "somethingWrongOnServer", args: [errorCode]);
  }

  // 编号 100038
  // 刷新
  String get refresh {
    return Intl.message("Refresh", name: "refresh");
  }

  // 编号 100039
  // 评价引导1-MatchRate 正文
  String get matchRateStepFirstTitle {
    return Intl.message("Rate us with 5 stars and get more matches!", name: "matchRateStepFirstTitle");
  }

  // 编号 100040
  // 评价引导-选项1-去评价
  String get rateStars {
    return Intl.message("Rate 5 Stars", name: "rateStars");
  }

  // 编号 100041
  // 评价引导-选项2-不，感谢
  String get noThanks {
    return Intl.message("No Thanks", name: "noThanks");
  }

  // 编号 100042
  // 评价引导2-Title
  String get youRock {
    return Intl.message("You Rock!", name: "youRock");
  }

  // 编号 100043
  // 评价引导-选项3-不，感谢
  String get matchRateStepSecondTitle {
    return Intl.message("Rating us 5 stars in Google Play will bring more singles to WooPlus Community, MORE MATCHES for you are coming! Thanks for your support!", name: "matchRateStepSecondTitle");
  }

  // 编号 100044
  // 评价引导-选项4-不，感谢
  String get remindLater {
    return Intl.message("Remind Me Later", name: "remindLater");
  }

  // 编号 100045
  // 逼单-IN
  String get inStr {
    return Intl.message("IN", name: "inStr");
  }

  // 编号 100046
  // 逼单-OUT
  String get out {
    return Intl.message("OUT", name: "out");
  }

  // 编号 100047
  // Search-任何地方
  String get anyWhere {
    return Intl.message("Anywhere", name: "anyWhere");
  }

  // 编号 100048
  // Search-更多的（搜索条件）
  String get more {
    return Intl.message("more", name: "more");
  }

  // 编号 100049
  // 重试
  String get tryAgain {
    return Intl.message("Try Again", name: "tryAgain");
  }

  // 编号 100050
  // 验证中
  String get verifyingNoCountDown {
    return Intl.message("Verifying", name: "verifyingNoCountDown");
  }

  // 编号 100051
  // Block了对方继续发消息，系统提示
  String blockTip(gender, userName) {
    return Intl.gender(gender, male: "You've blocked $userName, he is unable to reply to you. To continue chatting, tap", female: "You've blocked $userName, she is unable to reply to you. To continue chatting, tap", other: '', name: 'blockTip', args: [gender, userName]);
  }

  // 编号 100052
  // 更多照片
  String get selectMorePhoto {
    return Intl.message("More Photos", name: "selectMorePhoto");
  }

  // 编号 100053
  // 编辑profile
  String get editProfile {
    return Intl.message("Edit Profile", name: "editProfile");
  }

  // 编号 100054
  // 上传新照片
  String get uploadANewPhoto {
    return Intl.message("Upload a New Photo", name: "uploadANewPhoto");
  }

  // 编号 100056
  // 拖拽调整图片顺序
  String get editProfileMovePhoto {
    return Intl.message("Hold & drag photos to change their order", name: "editProfileMovePhoto");
  }

  // 编号 100057
  // 登录时提示账号被ban
  String get AccBanned {
    return Intl.message("Account banned due to policy violation", name: "AccBanned");
  }

  // 编号 110001
  // 注册登录界面slogan
  String get slogan {
    return Intl.message("Enjoy Dating\n& Find Love", name: "slogan");
  }

  // 编号 110002
  // 注册登录页-注册按钮
  String get emailSignup {
    return Intl.message("Sign Up With Email", name: "emailSignup");
  }

  // 编号 110003
  // 注册登录页-登录按钮
  String get login {
    return Intl.message("Log In With Email", name: "login");
  }

  // 编号 110004
  // 注册登录页-接受条款和隐私条款的文案
  String get termsAndPrivacy {
    return Intl.message("By continuing, you accept our *Terms* and *Privacy*", name: "termsAndPrivacy");
  }

  // 编号 110005
  // 注册-获取定位授权的标题
  String get titleOfShareLocation {
    return Intl.message("Share Your Location", name: "titleOfShareLocation");
  }

  // 编号 110006
  // 注册-获取定位授权的文案
  String get descriptionOfShareLocation {
    return Intl.message("So that we can recommend you people nearby.", name: "descriptionOfShareLocation");
  }

  // 编号 110007
  // 注册登录页—使用Google继续
  String get continueWithGoogle {
    return Intl.message("Continue With Google", name: "continueWithGoogle");
  }

  // 编号 110008
  // 欢迎页—登录中
  String get loggingIn {
    return Intl.message("Logging in", name: "loggingIn");
  }

  // 编号 110009
  // 注册-输入昵称界面标题
  String get titleOfName {
    return Intl.message("Your display name", name: "titleOfName");
  }

  // 编号 110010
  // 注册-输入昵称界面提示文案
  String get tipOfName {
    return Intl.message("Display name", name: "tipOfName");
  }

  // 编号 110011
  // 注册-选择性别界面标题
  String get gender {
    return Intl.message("Your gender", name: "gender");
  }

  // 编号 110012
  // 注册-女性按钮
  String get woman {
    return Intl.message("Woman", name: "woman");
  }

  // 编号 110013
  // 注册-男性按钮
  String get man {
    return Intl.message("Man", name: "man");
  }

  // 编号 110014
  // 注册-选择年龄界面标题
  String get age {
    return Intl.message("Your age", name: "age");
  }

  // 编号 110016
  // 注册-选择年龄界面tips
  String get tipsOfAge {
    return Intl.message("We won't show your exact date of birth", name: "tipsOfAge");
  }

  // 编号 110017
  // 注册-选择性取向界面
  String get interests {
    return Intl.message("You wish to meet", name: "interests");
  }

  // 编号 110018
  // 注册-男女皆可按钮
  String get womanAndMan {
    return Intl.message("Everyone", name: "womanAndMan");
  }

  // 编号 110019
  // 注册-上传图片界面标题
  String get titleOfUploadPhoto {
    return Intl.message("Upload your photo", name: "titleOfUploadPhoto");
  }

  // 编号 110020
  // 注册-上传照片正文
  String get descriptionOfUploadPhoto {
    return Intl.message("A photo where your face is clearly visible = 10x more matches 💞", name: "descriptionOfUploadPhoto");
  }

  // 编号 110021
  // 注册-相册按钮
  String get album {
    return Intl.message("Choose a photo", name: "album");
  }

  // 编号 110022
  // 注册-拍照按钮
  String get takePhoto {
    return Intl.message("Take a selfie", name: "takePhoto");
  }

  // 编号 110023
  // 注册-调整照片界面标题
  String get titleOfAdjustPhoto {
    return Intl.message("Adjust your photo", name: "titleOfAdjustPhoto");
  }

  // 编号 110024
  // 注册-调整照片界面正文
  String get descriptionOfAdjustPhoto {
    return Intl.message("Make sure your face can be recognized easily", name: "descriptionOfAdjustPhoto");
  }

  // 编号 110025
  // 注册-创建账号界面标题
  String get titleOfCreateAccount {
    return Intl.message("Create your account", name: "titleOfCreateAccount");
  }

  // 编号 110026
  // 注册登录重置密码页-输入Email 的提示
  String get email {
    return Intl.message("Email", name: "email");
  }

  // 编号 110027
  // 注册登录页-输入密码的提示
  String get password {
    return Intl.message("Password", name: "password");
  }

  // 编号 110028
  // 注册-当发现用户VPN+特定机型的Dialog对话的标题
  String get titleOfRestrictedRegistration {
    return Intl.message("Unknown Error", name: "titleOfRestrictedRegistration");
  }

  // 编号 110029
  // 注册-当发现用户VPN+特定机型的Dialog对话
  String get descriptionOfRestrictedRegistration {
    return Intl.message("Please retry later", name: "descriptionOfRestrictedRegistration");
  }

  // 编号 110030
  // 登录-同账号登录后被挤出的Dialog提示的标题
  String get titleOfLoggedIn {
    return Intl.message("Offline Notification", name: "titleOfLoggedIn");
  }

  // 编号 110031
  // 登录-同账号登录后被挤出的Dialog提示
  String tipOfLoggedIn(time) {
    return Intl.message("Your account has been signed in on another device at $time", name: "tipOfLoggedIn", args: [time]);
  }

  // 编号 110032
  // 注册-第二欢迎页文案1
  String welcome21(userName) {
    return Intl.message("Looking good, $userName!", name: "welcome21", args: [userName]);
  }

  // 编号 110033
  // 注册-第二欢迎页文案2
  String get welcome22 {
    return Intl.message("Turn on GPS and fill out your profile so we could find the right matches for you", name: "welcome22");
  }

  // 编号 110034
  // sim卡预授权
  String get simTip {
    return Intl.message("To minimize spam, WooPlus needs to verify your phone", name: "simTip");
  }

  // 编号 110035
  // sim卡授权识别到无sim卡
  String get simFailTip {
    return Intl.message("No SIM card inserted, please insert SIM card to continue", name: "simFailTip");
  }

  // 编号 110036
  // 登录-标题
  String get titleOfLogin {
    return Intl.message("Welcome Back", name: "titleOfLogin");
  }

  // 编号 110037
  // 登录-忘记密码文字按钮
  String get forgotPassword {
    return Intl.message("Forgot Password?", name: "forgotPassword");
  }

  // 编号 110038
  // 登录-忘记密码-获取验证码
  String getVerificationCode(email) {
    return Intl.message("Enter the confirmation code sent to\n$email", name: "getVerificationCode", args: [email]);
  }

  // 编号 110039
  // 登录-忘记密码-验证码
  String get confirmationCode {
    return Intl.message("Confirmation Code", name: "confirmationCode");
  }

  // 编号 110040
  // 登录-忘记密码-重新给邮箱发送验证码（有倒计时）
  String countdown(countdown) {
    return Intl.message("Resend Code $countdown s", name: "countdown", args: [countdown]);
  }

  // 编号 110041
  // 登录-重置密码-输入新面密码
  String get newPassword {
    return Intl.message("New Password", name: "newPassword");
  }

  // 编号 110042
  // 登录-重置密码-输入新密码
  String get confirmPassword {
    return Intl.message("Confirm Password", name: "confirmPassword");
  }

  // 编号 110043
  // 登录-重置密码-标题
  String get titleOfResetPassword {
    return Intl.message("Reset Password", name: "titleOfResetPassword");
  }

  // 编号 110044
  // 注册-display name 长度大于16的Tips错误提示
  String get tipOfWrongNameLength {
    return Intl.message("The display name must be between 2 to 16 characters", name: "tipOfWrongNameLength");
  }

  // 编号 110045
  // 注册-display name 内容包含敏感词的Tips错误提示
  String get tipOfWrongName {
    return Intl.message("This display name is unavailable, please try another one", name: "tipOfWrongName");
  }

  // 编号 110046
  // 注册-邮箱-输入了邮箱中不允许的非法字符时的Tips错误提示
  String get tipOfWrongEmailWord {
    return Intl.message("Only letters(a-z), numbers(0-9), period(.), hyphen(-) and underscore(_) are allowed", name: "tipOfWrongEmailWord");
  }

  // 编号 110047
  // 注册-邮箱-正在输入时，含后缀长度超过 60 的Tips错误
  String get tipOfWrongEmailLength {
    return Intl.message("Your email address must be less than 60 characters", name: "tipOfWrongEmailLength");
  }

  // 编号 110048
  // 注册-邮箱-输入了非邮箱地址，比如不含@,或首字母是@时的错误提示
  String get tipOfInvalidEmailAddress {
    return Intl.message("Invalid email address", name: "tipOfInvalidEmailAddress");
  }

  // 编号 110049
  // 对display name不可更改做说明
  String get displayNameTip {
    return Intl.message("This is how it will appear in WooPlus and you will not be able to change it", name: "displayNameTip");
  }

  // 编号 110050
  // 注册-激活密码输入框的Tips提醒
  String get tipOfLessThan6 {
    return Intl.message("At least 6 characters", name: "tipOfLessThan6");
  }

  // 编号 110051
  // 注册-密码超过16位的Tips提醒
  String get tipOfBetween6And16 {
    return Intl.message("Password must be between 6 to 16 characters", name: "tipOfBetween6And16");
  }

  // 编号 110052
  // 注册-重置-激活密码输入框的Tips提醒
  String get tipOfLessThan6ForReset {
    return Intl.message("At least 6 characters", name: "tipOfLessThan6ForReset");
  }

  // 编号 110053
  // 注册-重置-输入新密码超过16位的Tips错误
  String get tipOfBetween6And16ForResetNew {
    return Intl.message("Password must be between 6 to 16 characters", name: "tipOfBetween6And16ForResetNew");
  }

  // 编号 110054
  // 注册-重置-激活 “确认密码输入框” 的Tips提醒
  String get tipOfLessThan6ForResetConfirm {
    return Intl.message("At least 6 characters", name: "tipOfLessThan6ForResetConfirm");
  }

  // 编号 110055
  // 注册-重置-确认密码超过16位的Tips错误
  String get tipOfBetween6And16ForResetConfirm {
    return Intl.message("Password must be between 6 to 16 characters", name: "tipOfBetween6And16ForResetConfirm");
  }

  // 编号 110056
  // 注册-重置-验证一致性不通过的Tips错误
  String get tipOfPasswordsNotMatch {
    return Intl.message("Those passwords did not match", name: "tipOfPasswordsNotMatch");
  }

  // 编号 110057
  // 登录-输入了邮箱中不允许的非法字符的Tips错误
  String get tipOfWrongEmailWordForLogin {
    return Intl.message("Only letters(a-z), numbers(0-9), period(.), hyphen(-) and underscore(_) are allowed", name: "tipOfWrongEmailWordForLogin");
  }

  // 编号 110058
  // 登录-输入含后缀长度超过 60的Tips错误
  String get tipOfWrongEmailLengthForLogin {
    return Intl.message("Your email address must be less than 60 characters", name: "tipOfWrongEmailLengthForLogin");
  }

  // 编号 110059
  // 登录-邮箱-输入了非邮箱地址，比如不含@,或首字母是@时的错误提示
  String get tipOfInvalidEmailAddressForLogin {
    return Intl.message("Invalid email address", name: "tipOfInvalidEmailAddressForLogin");
  }

  // 编号 110060
  // 登录-密码输入框刚激活
  String get tipOfLessThan6ForLogin {
    return Intl.message("At least 6 characters", name: "tipOfLessThan6ForLogin");
  }

  // 编号 110061
  // 登录-密码超过16位的Tips错误
  String get tipOfBetween6And16ForLogin {
    return Intl.message("Password must be between 6 to 16 characters", name: "tipOfBetween6And16ForLogin");
  }

  // 编号 110062
  // 登录-账号不存在的HUD错误,登录-账号、密码和不匹配的HUD错误
  String get tipOfInvalidEmailOrPassword {
    return Intl.message("Invalid email or password", name: "tipOfInvalidEmailOrPassword");
  }

  // 编号 110064
  // 忘记密码-输入找回邮箱-不允许的非法字符
  String get tipOfWrongEmailWordForForget {
    return Intl.message("Only letters(a-z), numbers(0-9), period(.), hyphen(-) and underscore(_) are allowed", name: "tipOfWrongEmailWordForForget");
  }

  // 编号 110065
  // 忘记密码-输入找回邮箱-含后缀长度超过 60
  String get tipOfWrongEmailLengthForForget {
    return Intl.message("Your email address must be less than 60 characters", name: "tipOfWrongEmailLengthForForget");
  }

  // 编号 110066
  // 忘记密码-输入找回邮箱-输入了非邮箱地址，比如不含@,或首字母是@时的错误提示
  String get tipOfInvalidEmailAddressForForget {
    return Intl.message("Invalid email address", name: "tipOfInvalidEmailAddressForForget");
  }

  // 编号 110068
  // 忘记密码-输入错误的验证码
  String get tipOfWrongVerificationCode {
    return Intl.message("Wrong confirmation code", name: "tipOfWrongVerificationCode");
  }

  // 编号 110069
  // 忘记密码-标题-请输入你注册的邮件地址
  String get titleOfEnterTheEmail {
    return Intl.message("Enter the email you signed up with", name: "titleOfEnterTheEmail");
  }

  // 编号 110070
  // 登录-忘记密码-重新给邮箱发送验证码（无倒计时）
  String get resendCode {
    return Intl.message("Resend Code", name: "resendCode");
  }

  // 编号 110071
  // 注册-上传照片太小的报错提示
  String get tipOfPhotoTooSmall {
    return Intl.message("The photo is too small, please upload a larger one", name: "tipOfPhotoTooSmall");
  }

  // 编号 110072
  // 注册-上传照片太大的报错提示
  String get tipOfPhotoTooBig {
    return Intl.message("The photo is too large, please upload a smaller one", name: "tipOfPhotoTooBig");
  }

  // 编号 110073
  // 注册-照片loading失败的报错提示
  String get tipOfPhotoLoading {
    return Intl.message("Photo cannot be used, please upload another one", name: "tipOfPhotoLoading");
  }

  // 编号 110074
  // 照片需要人脸识别时的文案提示
  String get tipOfPhotoNeedFace {
    return Intl.message("Drag & pinch to make sure your face is shown clearly", name: "tipOfPhotoNeedFace");
  }

  // 编号 110075
  // 注册完成后，引导用户填写info的好处
  String get titleFillPersonalDetailInfo {
    return Intl.message("Fill in your info, for the right person to know", name: "titleFillPersonalDetailInfo");
  }

  // 编号 110076
  // 注册完成后，引导用户填写AboutMe问题的好处
  String get titleWittyAnswer {
    return Intl.message("We'd love to know more about you, and so would your special someone", name: "titleWittyAnswer");
  }

  // 编号 110077
  // 获取GPS地理位置信息失败的提示文案
  String get tipOfFailedGetAddress {
    return Intl.message("We couldn't get your GPS info", name: "tipOfFailedGetAddress");
  }

  // 编号 110078
  // Ban的title
  String get banDialogTitle {
    return Intl.message("Ban Notification", name: "banDialogTitle");
  }

  // 编号 110079
  // Ban48使用的倒计时[2,48]小时内的展示
  String bannedTemporaryHoursDesc(howMany) {
    return Intl.message("Your account has been banned due to the violation of our Terms. You will have to wait $howMany hours.", name: "bannedTemporaryHoursDesc", args: [howMany]);
  }

  // 编号 110080
  // 账号被Ban的正文
  String get userBannedForeverDialogDesc {
    return Intl.message("Your account has been banned due to the violation of our Terms", name: "userBannedForeverDialogDesc");
  }

  // 编号 110081
  // 设备被Ban的正文
  String get deviceBannedDialogDesc {
    return Intl.message("You have been permanently banned from WooPlus due to the violation of our Terms", name: "deviceBannedDialogDesc");
  }

  // 编号 110082
  // 强制升级的标题
  String get mustUpdateTitle {
    return Intl.message("Update Notification", name: "mustUpdateTitle");
  }

  // 编号 110083
  // 强制升级的正文
  String get mustUpdateDesc {
    return Intl.message("For a better experience, please update to the latest version", name: "mustUpdateDesc");
  }

  // 编号 110084
  // 当年龄不满18岁时，警告用户必须年满18才能注册
  String get ageFailTip {
    return Intl.message("You must be the age of 18 to use WooPlus", name: "ageFailTip");
  }

  // 编号 110085
  // 更新App时，提醒用户做等待。
  String get updateAppTip {
    return Intl.message("We are preparing your data, just a moment", name: "updateAppTip");
  }

  // 编号 110086
  // 还不满意? 重新上传一张新的
  String get registerChangeFacebookPhoto {
    return Intl.message("Not satisfied? *Upload a new one >>", name: "registerChangeFacebookPhoto");
  }

  // 编号 110087
  // 注册登录-Facebook继续
  String get btnFacebookSignInOrSignUp {
    return Intl.message("Continue With Facebook", name: "btnFacebookSignInOrSignUp");
  }

  // 编号 110088
  // 注册登录-我们不在用户的FB上post内容。(FB,后面可能用于其他社交app)
  String get tipOfFacebookSignInOrSignUp {
    return Intl.message("We never post without your permission", name: "tipOfFacebookSignInOrSignUp");
  }

  // 编号 110089
  // Ban48使用的倒计时1小时内的分钟展示
  String bannedTemporaryMinutesDesc(howMany) {
    return Intl.plural(howMany, one: "Your account has been banned due to the violation of our Terms. You will have to wait one minute.", other: "Your account has been banned due to the violation of our Terms. You will have to wait $howMany minutes.", name: 'bannedTemporaryMinutesDesc', args: [howMany]);
  }

  // 编号 110090
  // 打开App后未注册的闹钟提醒推送文案
  String get registerNotification {
    return Intl.message("Welcome to WooPlus, finally. Join us and meet love now!", name: "registerNotification");
  }

  // 编号 110091
  // 通过苹果账号继续
  String get continueWithApple {
    return Intl.message("Continue With Apple", name: "continueWithApple");
  }

  // 编号 110092
  // 其他注册选项
  String get otherSignUpOptions {
    return Intl.message("Other sign up options", name: "otherSignUpOptions");
  }

  // 编号 110093
  // Logout的通知（因为取消使用AppleID后被动logout）
  String get logoutDialogTitle {
    return Intl.message("Log Out Notification", name: "logoutDialogTitle");
  }

  // 编号 110094
  // 你因为取消在WooPlus中使用AppleID而被logged out.
  String get logoutDialogDescForAppleSignIn {
    return Intl.message("You have been signed out because you stopped using your Apple ID on WooPlus", name: "logoutDialogDescForAppleSignIn");
  }

  // 编号 110095
  // 用户在选择照片时的顶部标题
  String get imagePickerTitle {
    return Intl.message("Choose a Photo", name: "imagePickerTitle");
  }

  // 编号 110096
  // 用户在创建账号时，输入了已有的Email, 报错
  String get emailExist {
    return Intl.message("Email already exists", name: "emailExist");
  }

  // 编号 110097
  // 找回密码时提醒用户查看垃圾邮箱
  String get recodeTip {
    return Intl.message("If you did not receive the code within minutes, please check the junk mail folder", name: "recodeTip");
  }

  // 编号 110098
  // 当遇到问题被登录出，告诉用户需要重新登录继续使用
  String get normalKickOut {
    return Intl.message("Please re-log in WooPlus to continue", name: "normalKickOut");
  }

  // 编号 110099
  // 注册-第二欢迎页文案2（如果已经获取过 GPS）
  String get welcome23 {
    return Intl.message("To help us find people you like, tell us a little bit more about yourself", name: "welcome23");
  }

  // 编号 110101
  // 逼单流程的欢迎页
  String get promotionWelcome {
    return Intl.message("Welcome!\nNow let's find your one on WooPlus ❤️", name: "promotionWelcome");
  }

  // 编号 110102
  // 问题1-你希望在WooPlus中找到什么样的关系
  String get lookforTitle {
    return Intl.message("What are you looking for on WooPlus?", name: "lookforTitle");
  }

  // 编号 110103
  // 问题1选项1-casual 和 fun 的关系
  String get lookforItem1 {
    return Intl.message("Something casual and fun", name: "lookforItem1");
  }

  // 编号 110104
  // 问题1选项2-享受dating，如果可以寻找真爱
  String get lookforItem2 {
    return Intl.message("Enjoy dating and see what love brings", name: "lookforItem2");
  }

  // 编号 110105
  // 问题1选项3-长期和严肃的关系
  String get lookforItem3 {
    return Intl.message("Something long-term and serious", name: "lookforItem3");
  }

  // 编号 110106
  // 问题2-你希望什么样子的风格？
  String get preferredStylestitle {
    return Intl.message("Specific your preferred styles\n(4 options allowed)", name: "preferredStylestitle");
  }

  // 编号 110117
  // “使用App时允许” 的选项
  String get iOS13PermissionAllowWhileUsingApp {
    return Intl.message("Allow While Using App️", name: "iOS13PermissionAllowWhileUsingApp");
  }

  // 编号 110118
  // 购买页1-你周围有N个用户满足你的筛选条件，快去联系他们！
  String promotionPeopleAroundYou(numberOfPeople) {
    return Intl.message("There are $numberOfPeople women around meeting your criteria, connect with them now!", name: "promotionPeopleAroundYou", args: [numberOfPeople]);
  }

  // 编号 110119
  // 便宜XX百分比
  String promotionPriceDiscountRatio(discountRaito) {
    return Intl.message("$discountRaito% OFF!", name: "promotionPriceDiscountRatio", args: [discountRaito]);
  }

  // 编号 110120
  // 仅售XXX(推介价）
  String promotionPriceDiscount(introductoryPrice) {
    return Intl.message("Only $introductoryPrice", name: "promotionPriceDiscount", args: [introductoryPrice]);
  }

  // 编号 110121
  // 原价（UI上会有一根线表示划掉）
  String promotionPriceOrigin(originalPrice) {
    return Intl.message("$originalPrice", name: "promotionPriceOrigin", args: [originalPrice]);
  }

  // 编号 110122
  // 首月为推介价XXX，然后为每月价格XXX
  String promotionPriceDesc(introductoryPrice, originalPrice) {
    return Intl.message("$introductoryPrice for the first month, then $originalPrice per month", name: "promotionPriceDesc", args: [introductoryPrice, originalPrice]);
  }

  // 编号 110123
  // 立刻开始约会
  String get promotionStartDatingNow {
    return Intl.message("Start Dating Now!", name: "promotionStartDatingNow");
  }

  // 编号 110124
  // 这是你唯一获得此offer的机会，在它消失前抓住它！
  String promotionPurchaseRetrieve(introductoryPrice) {
    return Intl.message("$introductoryPrice is a one-time offer only for new users. Grab it before it's gone!", name: "promotionPurchaseRetrieve", args: [introductoryPrice]);
  }

  // 编号 110125
  // 抓住机会
  String get promotionGrabIt {
    return Intl.message("Grab It!", name: "promotionGrabIt");
  }

  // 编号 110126
  // 放弃机会离开
  String get promotionLeaveWithoutDiscount {
    return Intl.message("I'd Rather Pay More Later", name: "promotionLeaveWithoutDiscount");
  }

  // 编号 110127
  // 在profilereview之后，你可以进入WooPlus
  String get promotionEnterAfterReview {
    return Intl.message("One moment, please. Your profile is under review by our users.", name: "promotionEnterAfterReview");
  }

  // 编号 110128
  // 跳过Review
  String get promotionSkipReview {
    return Intl.message("Skip Review", name: "promotionSkipReview");
  }

  // 编号 110129
  // 回复的button
  String get promotionChallengeReply {
    return Intl.message("Reply", name: "promotionChallengeReply");
  }

  // 编号 110130
  // 恭喜，你现在可以进入WooPlus了！
  String get promotionCongrats {
    return Intl.message("Congrats!\nYou can enjoy WooPlus\nnow!", name: "promotionCongrats");
  }

  // 编号 110131
  // 获取权限时的 “允许” 选项 (这里是GPS)
  String get iOSPermissionAllow {
    return Intl.message("Allow", name: "iOSPermissionAllow");
  }

  // 编号 110132
  // 点击 “
  String get promotionIOSLocationRequestHead {
    return Intl.message("Click \"", name: "promotionIOSLocationRequestHead");
  }

  // 编号 110133
  // ” 来推荐周围不错的人选
  String get promotionIOSLocationRequestTail {
    return Intl.message("\"\nto recommend you great people nearby ❤️", name: "promotionIOSLocationRequestTail");
  }

  // 编号 110134
  // 注册促销结束后可进入App的推送正文
  String get promotionCongratsPushContent {
    return Intl.message("You can enjoy WooPlus now! ❤️", name: "promotionCongratsPushContent");
  }

  // 编号 110135
  // 注册促销结束后可进入App的推送标题
  String promotionCongratsPushTitle(userName) {
    return Intl.message("Congrats, $userName!", name: "promotionCongratsPushTitle", args: [userName]);
  }

  // 编号 110136
  // 购买页1按钮（逼单原价测试方案）
  String get signUpPromotionConnectNow {
    return Intl.message("Connect Now", name: "signUpPromotionConnectNow");
  }

  // 编号 110138
  // 购买页1文案（在推介价后面）
  String get signUpPromotionLimited {
    return Intl.message("LIMITED\nOFFER", name: "signUpPromotionLimited");
  }

  // 编号 110139
  // 购买页1文案（逼单周商品）
  String signUpPromotionWeekTip(originalPrice) {
    return Intl.message("$originalPrice per week, cancel anytime", name: "signUpPromotionWeekTip", args: [originalPrice]);
  }

  // 编号 110141
  // 挽留窗口1文案-这是你的专属价格，确定要放弃？（逼单原价测试方案）
  String signUpPromotionOneTimeDialogTip(introductoryPrice) {
    return Intl.message("$introductoryPrice is an exclusive one-time offer for you. Take it and connect with others right away.", name: "signUpPromotionOneTimeDialogTip", args: [introductoryPrice]);
  }

  // 编号 110142
  // 挽留窗口1按钮-买它
  String get takeIt {
    return Intl.message("Take It!", name: "takeIt");
  }

  // 编号 110143
  // 挽留窗口1/2按钮-放弃
  String get giveUp {
    return Intl.message("Give Up and Wait", name: "giveUp");
  }

  // 编号 110144
  // 购买页2文案
  String get skipReviewTip {
    return Intl.message("Skip review and connect with hot singles now!", name: "skipReviewTip");
  }

  // 编号 110145
  // 购买页2/3按钮-跳过审核
  String get skipReviewBtn {
    return Intl.message("Skip Review Now!", name: "skipReviewBtn");
  }

  // 编号 110146
  // 挽留窗口2文案-确定要放弃跳过审核和立即和其他用户联系起来的机会？
  String get skipDialogTip {
    return Intl.message("Take the chance to skip review, or you might miss out on connections with others 😢", name: "skipDialogTip");
  }

  // 编号 110147
  // 购买页3文案-跳过审核，立刻和用户联系吧
  String skipReviewContent(userName) {
    return Intl.message("Skip review and connect with $userName now!", name: "skipReviewContent", args: [userName]);
  }

  // 编号 110148
  // 挽留窗口3文案
  String skipDialogPersionTip(userName) {
    return Intl.message("Take the chance to skip review, or you might miss out on the connection with $userName 😢", name: "skipDialogPersionTip", args: [userName]);
  }

  // 编号 110149
  // 购买页1文案（逼单周商品）
  String get only {
    return Intl.message("Only", name: "only");
  }

  // 编号 110150
  // Sayhi购买页1（sayhi还有次数）-主文案
  String get connectWith {
    return Intl.message("Send Unlimited Messages", name: "connectWith");
  }

  // 编号 110151
  // Sayhi购买页2（sayhi次数用完）-主文案
  String get outOfSayHi {
    return Intl.message("Out of Say Hi", name: "outOfSayHi");
  }

  // 编号 110152
  // Sayhi购买页2（sayhi次数用完）-补充说明
  String connectNow(userName) {
    return Intl.message("Don't lose $userName. Connect now!", name: "connectNow", args: [userName]);
  }

  // 编号 110153
  // 新手教育——like弹窗文案
  String likeTipDialogTitle(userName) {
    return Intl.message("Looking good!\nIf $userName likes you too, you two will match and chat for free!", name: "likeTipDialogTitle", args: [userName]);
  }

  // 编号 110154
  // 新手教育——like弹窗按钮
  String get gotIt {
    return Intl.message("Got it", name: "gotIt");
  }

  // 编号 110155
  // 新手教育——pass弹窗辅助文案
  String passTipDialogTitle(userName) {
    return Intl.message("$userName will not be recommended to you in For You in a period of time", name: "passTipDialogTitle", args: [userName]);
  }

  // 编号 110156
  // 新手教育——pass弹窗按钮，确定pass
  String get stillPass {
    return Intl.message("Still Pass", name: "stillPass");
  }

  // 编号 110157
  // 新手教育——chats气泡文案
  String get sayHiPurchasePageMessage {
    return Intl.message("If someone send you a Say Hi, they will appear here. Start a full chat by replying to them. 🤗", name: "sayHiPurchasePageMessage");
  }

  // 编号 110158
  // match——快速消息发送成功吐司提示
  String get matchMessageSendOK {
    return Intl.message("Message sent successfully", name: "matchMessageSendOK");
  }

  // 编号 110159
  // SayHi会话窗口中的按钮文案
  String connectWithUser(gender, ) {
    return Intl.gender(gender, male: "Connect With Him", female: "Connect With Her", other: "Connect Now", name: 'connectWithUser', args: [gender, ]);
  }

  // 编号 110160
  // 用户选择云图片时，弹窗提示文案：正在为你下载云图片
  String get downloadCloudPicture {
    return Intl.message("Syncing from Cloud", name: "downloadCloudPicture");
  }

  // 编号 110161
  // 注册账号时，toast文案
  String get registerToast {
    return Intl.message("We are creating your WooPlus account", name: "registerToast");
  }

  // 编号 110162
  // 新手教育——pass弹窗主文案
  String beginnerGuidancePassTitle(userName) {
    return Intl.message("Pass $userName?", name: "beginnerGuidancePassTitle", args: [userName]);
  }

  // 编号 110163
  // 逼单挽留窗口1-主文案
  String get promotionRetrieveTitle {
    return Intl.message("Take the offer?", name: "promotionRetrieveTitle");
  }

  // 编号 110164
  // DailyPicks气泡引导文案(新增)
  String get bubbleDp {
    return Intl.message("New! Try our brand new Daily Picks!", name: "bubbleDp");
  }

  // 编号 110165
  // YouLiked气泡引导文案(新增)
  String get bubbleLiked {
    return Intl.message("Tap to see people You Liked!", name: "bubbleLiked");
  }

  // 编号 110166
  // 高级搜索气泡引导文案(新增)
  String get bubbleSearch {
    return Intl.message("Advanced Search moved here!", name: "bubbleSearch");
  }

  // 编号 110167
  // 上次登录方式
  String get lastSignedIn {
    return Intl.message("Last logged in", name: "lastSignedIn");
  }

  // 编号 110168
  // 操作频繁，请稍后再试
  String get tooFrequentToast {
    return Intl.message("Operation too frequent, please try again later", name: "tooFrequentToast");
  }

  // 编号 110169
  // 已有登录方式时其他选项
  String get otherOptions {
    return Intl.message("Other Options", name: "otherOptions");
  }

  // 编号 110170
  // fb找回？
  String get haveAccountFB {
    return Intl.message("Have an account logged in with Facebook?", name: "haveAccountFB");
  }

  // 编号 110171
  // 注册登录首页创建新账号button
  String get createNewAccount {
    return Intl.message("Create Account", name: "createNewAccount");
  }

  // 编号 110172
  // 新用户登录button
  String get alreadyLogIn {
    return Intl.message("Log In", name: "alreadyLogIn");
  }

  // 编号 110175
  // 7s未做任何操作推送
  String get newUserPushNoOpreate {
    return Intl.message("Thousands of hot singles nearby are active now. Come and connect!", name: "newUserPushNoOpreate");
  }

  // 编号 110176
  // 90s未完成注册登录推送
  String get newUserPushAfterSoon {
    return Intl.message("It’s time to say hi to people around you. Join now!", name: "newUserPushAfterSoon");
  }

  // 编号 110177
  // 当天晚上08:00未完成注册登录推送1
  String get newUserPushOne {
    return Intl.message("People nearby are inviting you to join. Come and see what’s in here.", name: "newUserPushOne");
  }

  // 编号 110178
  // 当天晚上08:00未完成注册登录推送2
  String get newUserPushTwo {
    return Intl.message("Wow! WooPlus is on fire in your area! Chances of a match are 3x higher right now.", name: "newUserPushTwo");
  }

  // 编号 110179
  // 当天晚上08:00未完成注册登录推送3
  String get newUserPushThree {
    return Intl.message("Your next date might just be a few steps away. Join WooPlus now！", name: "newUserPushThree");
  }

  // 编号 110180
  // 
  String get existLogIn {
    return Intl.message("Log into an existing account", name: "existLogIn");
  }

  // 编号 110181
  // 
  String get lastLogIn {
    return Intl.message("Last Logged in", name: "lastLogIn");
  }

  // 编号 110182
  // 
  String get newSlogan {
    return Intl.message("Free of Body Shaming\nJust Enjoy Dating", name: "newSlogan");
  }

  // 编号 110183
  // 
  String get startWithName {
    return Intl.message("Let’s get started with\nyour display name", name: "startWithName");
  }

  // 编号 110184
  // 
  String get logInTitle {
    return Intl.message("Log in", name: "logInTitle");
  }

  // 编号 110200
  // 每周的会员价格
  String get week {
    return Intl.message("week", name: "week");
  }

  // 编号 110201
  // 选择一周会员的文案
  String get oldUserSaleTitle {
    return Intl.message("Lowest Price to Start With!", name: "oldUserSaleTitle");
  }

  // 编号 110202
  // 会员权益（看谁喜欢了你）
  String get vipProfid1 {
    return Intl.message("See Who\nLiked You", name: "vipProfid1");
  }

  // 编号 110203
  // 会员权益（无限制发送消息）
  String get vipProfid2 {
    return Intl.message("Send Unlimited\nMessages", name: "vipProfid2");
  }

  // 编号 110204
  // 会员权益（fine tune your search)
  String get vipProfid3 {
    return Intl.message("Fine Tune\nYour Search", name: "vipProfid3");
  }

  // 编号 110205
  // 每周的会员价格，可以随时取消
  String oldUserSalePriceTip1(normalPrice) {
    return Intl.message("$normalPrice per week, cancel anytime", name: "oldUserSalePriceTip1", args: [normalPrice]);
  }

  // 编号 110206
  // 加入促销倒计时
  String oldUserSaleBtn(endTime) {
    return Intl.message("Join in $endTime", name: "oldUserSaleBtn", args: [endTime]);
  }

  // 编号 110207
  // 用户仍然选择按月购买入口文案
  String get oldUserSaleStillMonth {
    return Intl.message("Still prefer the monthly plan?", name: "oldUserSaleStillMonth");
  }

  // 编号 110208
  // 首周会员多少钱，随后每周多少钱
  String oldUserSalePriceTip2(introductoryPrice, normalPrice) {
    return Intl.message("$introductoryPrice for the first week, then $normalPrice per week", name: "oldUserSalePriceTip2", args: [introductoryPrice, normalPrice]);
  }

  // 编号 110209
  // 促销活动结束倒计时
  String oldUserSaleEndIn(endTime) {
    return Intl.message("Ends in $endTime", name: "oldUserSaleEndIn", args: [endTime]);
  }

  // 编号 110210
  // Android购买页的订阅说明（逼单场景）
  String get oldUserSaleAndroidTip {
    return Intl.message("One user can only enjoy the introductory price once. Your payment will be charged to your Google Play account, and your subscription will renew automatically unless you cancel it in the Google Play Store. By continuing, you agree to our Terms.\nFor more details, please visit our *Terms* and *Privacy*.", name: "oldUserSaleAndroidTip");
  }

  // 编号 110211
  // iOS购买页的订阅说明（逼单场景）
  String get oldUserSaleIosTip {
    return Intl.message("One user can only enjoy the introductory price once. Payment will be charged to your iTunes account. Subscriptions will automatically renew unless auto-renewal is turned off at least 24 hours before the end of the current period. You can manage or turn off auto-renewal in your iTunes account settings any time after purchase.\nFor more details, please visit our *Terms* and *Privacy*.", name: "oldUserSaleIosTip");
  }

  // 编号 110212
  // ios用户接收来自wooplus的促销通知
  String get oldUserSaleIosNotifyDialogTitle {
    return Intl.message("Would you like to receive our limited offer?", name: "oldUserSaleIosNotifyDialogTitle");
  }

  // 编号 110213
  // 接收促销通知
  String get oldUserSaleIosNotifyDialogReceive {
    return Intl.message("Receive Offer", name: "oldUserSaleIosNotifyDialogReceive");
  }

  // 编号 110214
  // 不接收促销通知
  String get oldUserSaleIosNotifyDialogCancel {
    return Intl.message("I Don't Need It", name: "oldUserSaleIosNotifyDialogCancel");
  }

  // 编号 110215
  // 订阅条款
  String get oldUserSaleTerms {
    return Intl.message("Subscription Terms", name: "oldUserSaleTerms");
  }

  // 编号 110216
  // 72小时还未购买vip促销push文案
  String get oldUserSaleNotifyContent {
    return Intl.message("LIMITED VIP offer! See who liked you now!", name: "oldUserSaleNotifyContent");
  }

  // 编号 110217
  // 72小时还未购买vip促销push文案的title
  String oldUserSaleNotifyTitle(userName) {
    return Intl.message("Hi, $userName", name: "oldUserSaleNotifyTitle", args: [userName]);
  }

  // 编号 110218
  // 促销相关通知的开关
  String get notificationBtnPromotionOffer {
    return Intl.message("Promotion offer", name: "notificationBtnPromotionOffer");
  }

  // 编号 110219
  // 促销相关通知的开关下的说明文案
  String get notificationBtnPromotionOfferDesc {
    return Intl.message("Send you the exclusive offer to enjoy WooPlus", name: "notificationBtnPromotionOfferDesc");
  }

  // 编号 110220
  // Moments中评论推送的开关
  String get notificationBtnComments {
    return Intl.message("New comments in Moments", name: "notificationBtnComments");
  }

  // 编号 110221
  // Moments中评论推送的开关下的说明文案
  String get notificationBtnCommentsDesc {
    return Intl.message("Notify you the latest comments in Moments", name: "notificationBtnCommentsDesc");
  }

  // 编号 110222
  // settings中的通知入口
  String get settingNotificationBtn {
    return Intl.message("Notifications", name: "settingNotificationBtn");
  }

  // 编号 110223
  // 新手引导发moments
  String get beginnerGuidancePostMoments {
    return Intl.message("Welcome to Moments.\n\nYou can view others' moments and share yours. Enjoy connecting with more people here. 🤗", name: "beginnerGuidancePostMoments");
  }

  // 编号 110224
  // 当用户接收通知开关关闭时的文案
  String get notificationBtnOpenIntroduce {
    return Intl.message("Turn on notification to receive your comments, messages and even promo offer in time", name: "notificationBtnOpenIntroduce");
  }

  // 编号 110225
  // 打开接收通知
  String get notificationBtnOpen {
    return Intl.message("Turn It On", name: "notificationBtnOpen");
  }

  // 编号 110226
  // 关闭Promotion offer的挽留页面文案
  String get notificationClosePromotionOfferRetrive {
    return Intl.message("You won't receive notifications for promo offers if you turn it off", name: "notificationClosePromotionOfferRetrive");
  }

  // 编号 110227
  // 继续打开接收通知Promotion offer按钮文案
  String get notificationBtnKeepPromotionOffer {
    return Intl.message("Keep Receiving Offers", name: "notificationBtnKeepPromotionOffer");
  }

  // 编号 110228
  // 关闭接收通知按钮文案
  String get notificationBtnClose {
    return Intl.message("Turn It Off", name: "notificationBtnClose");
  }

  // 编号 110229
  // 关闭接收comments的开关挽留页面文案
  String get notificationCloseCommentsRetrive {
    return Intl.message("You won't receive notifications for new comments if you turn it off", name: "notificationCloseCommentsRetrive");
  }

  // 编号 110230
  // 继续打开接收通知comments按钮文案
  String get notificationBtnKeepReceive {
    return Intl.message("Keep Me Notified", name: "notificationBtnKeepReceive");
  }

  // 编号 110234
  // 开启moment按钮
  String get startMoments {
    return Intl.message("Get Started", name: "startMoments");
  }

  // 编号 110235
  // 用户选择接收促销通知后，给的一个toast
  String get offerToast {
    return Intl.message("We will send you limited offers in the future", name: "offerToast");
  }

  // 编号 110236
  // 删除moment下方的评论对话框标题
  String get deleteCommentTitle {
    return Intl.message("Delete the comment?", name: "deleteCommentTitle");
  }

  // 编号 110237
  // 删除moment下方的评论对话框说明
  String get deleteCommentMsg {
    return Intl.message("All replies to the comment will be gone after the deletion", name: "deleteCommentMsg");
  }

  // 编号 110238
  // vip权益（vip介绍页）
  String get vipFullViewTitle {
    return Intl.message("VIP Benefits", name: "vipFullViewTitle");
  }

  // 编号 110240
  // 正在检测你使用Facebook登录的账号...
  String get searchFbAccount {
    return Intl.message("We're checking the account registered with Facebook...", name: "searchFbAccount");
  }

  // 编号 110241
  // 未检测到fb账号
  String get cantFindFbAccount {
    return Intl.message("We couldn't find an account that matches, please try different login options to continue. You can also contact customer service via support@wooplus.com to recover your account.", name: "cantFindFbAccount");
  }

  // 编号 110242
  // 请确认你的账号
  String get findFbAccountTitile {
    return Intl.message("Please Confirm Your Account", name: "findFbAccountTitile");
  }

  // 编号 110243
  // 检测到一个用户名为：xxx 的账号
  String findFbAccount(userName) {
    return Intl.message("We found an account named: $userName", name: "findFbAccount", args: [userName]);
  }

  // 编号 110244
  // 这是我
  String get sureMe {
    return Intl.message("It's Me", name: "sureMe");
  }

  // 编号 110245
  // 这不是我
  String get notSure {
    return Intl.message("It's Not Me", name: "notSure");
  }

  // 编号 110246
  // 创建关联邮箱说明
  String get bindEmailExplain {
    return Intl.message("WooPlus no longer supports logs in via Facebook due to its technical issues. You need to link an email address to your account for following logins.", name: "bindEmailExplain");
  }

  // 编号 110247
  // 绑定并继续
  String get bindEmailAndContinue {
    return Intl.message("Link and Continue", name: "bindEmailAndContinue");
  }

  // 编号 110248
  // 确认邮箱无误弹窗主文案
  String bindEmailDialog(emailAddress) {
    return Intl.message("Make sure $emailAddress is valid to receive confirmation code to reset your password in case for account retrieval.", name: "bindEmailDialog", args: [emailAddress]);
  }

  // 编号 110249
  // 重新输入邮箱
  String get updateEmailAdress {
    return Intl.message("Update Email Address", name: "updateEmailAdress");
  }

  // 编号 110250
  // 绑定邮箱并创建密码标题
  String get bindEmailTitle {
    return Intl.message("Link an Email Address and Setup a Password", name: "bindEmailTitle");
  }

  // 编号 110251
  // fb注册用户内部banner提示
  String get fbBindNotice {
    return Intl.message("Important: Linking an Email to your account for future logins", name: "fbBindNotice");
  }

  // 编号 110252
  // 绑定成功弹窗主文案
  String get fbBindSuccess {
    return Intl.message("Email Linking Succeeded", name: "fbBindSuccess");
  }

  // 编号 110253
  // 绑定成功弹窗副文案
  String fbBindEmailRecommend(emailAddress) {
    return Intl.message("Please use $emailAddress for future logins", name: "fbBindEmailRecommend", args: [emailAddress]);
  }

  // 编号 120001
  // For You 界面标题
  String get foryouTabTitle {
    return Intl.message("For You", name: "foryouTabTitle");
  }

  // 编号 120002
  // Moments的标题
  String get momentsTabTitle {
    return Intl.message("Moments", name: "momentsTabTitle");
  }

  // 编号 120003
  // Peer Review的标题
  String get likedTitleReviews {
    return Intl.message("MOST-MENTIONED REVIEWS", name: "likedTitleReviews");
  }

  // 编号 120004
  // 共同兴趣
  String get likedTitleHobblesInCommon {
    return Intl.message("HOBBIES IN COMMON", name: "likedTitleHobblesInCommon");
  }

  // 编号 120005
  // Profile任务共同兴趣外的兴趣
  String get alsoLike {
    return Intl.message("I ALSO LIKE", name: "alsoLike");
  }

  // 编号 120006
  // 没有共同兴趣时的兴趣标题
  String get myInerests {
    return Intl.message("MY INTERESTS", name: "myInerests");
  }

  // 编号 120007
  // 没有更多你喜欢的人。
  String get noMoreLiked {
    return Intl.message("Display only people you have liked in the past 7 days", name: "noMoreLiked");
  }

  // 编号 120008
  // 多少个小时（简单展示）
  String likedHours(howMany) {
    return Intl.plural(howMany, one: "1 hour", other: "$howMany hours", name: 'likedHours', args: [howMany]);
  }

  // 编号 120009
  // 在多少个小时内消失（点击简单展示的格式后）
  String likedDisappearHours(howMany) {
    return Intl.plural(howMany, one: "Disappearing in one hour", other: "Disappearing in $howMany hours", name: 'likedDisappearHours', args: [howMany]);
  }

  // 编号 120010
  // 很快就要消失了（1小时以内展示的内容）
  String get likedDisappearSoon {
    return Intl.message("Disappearing soon", name: "likedDisappearSoon");
  }

  // 编号 120011
  // 举报成功的标题
  String get reportSuccessfully {
    return Intl.message("Your report will be dealt with shortly", name: "reportSuccessfully");
  }

  // 编号 120012
  // 举报成功的反馈正文，告知用户举报很快被处理，并且感谢用户
  String get reportSuccessfullyContent {
    return Intl.message("Thanks for helping us build a better dating community", name: "reportSuccessfullyContent");
  }

  // 编号 120013
  // 告诉我们你举报的原因
  String get reportReason {
    return Intl.message("Please tell us why you are reporting this user", name: "reportReason");
  }

  // 编号 120015
  // 有错过的Match
  String missMatchTips(howMany) {
    return Intl.plural(howMany, one: "Oops, you just missed one match. Become VIP and chat now!", other: "Oops, you just missed $howMany matches. Become VIP and chat now!", name: 'missMatchTips', args: [howMany]);
  }

  // 编号 120016
  // 举报的标题
  String reportTitle(userName) {
    return Intl.message("Report $userName", name: "reportTitle", args: [userName]);
  }

  // 编号 120017
  // 举报的正文
  String reportContent(userName) {
    return Intl.message("We won't tell $userName", name: "reportContent", args: [userName]);
  }

  // 编号 120018
  // PeerReview更多中的 Tags 标题
  String get peerReviewTagsTitle {
    return Intl.message("TAGS THAT BEST DESCRIBE HIM", name: "peerReviewTagsTitle");
  }

  // 编号 120019
  // PeerReview更多中的 Review 标题
  String get peerReviewReviewTitle {
    return Intl.message("THEY SAY...", name: "peerReviewReviewTitle");
  }

  // 编号 120020
  // Profile兜底文案第1组-男*女*other（用于没取到性别的时候）
  String likedDefaultText1(gender, ) {
    return Intl.gender(gender, male: "Want to know more about me? Hit me up. :)", female: "Nice to meet you here :)", other: "Want to know more about me? Hit me up. :)", name: 'likedDefaultText1', args: [gender, ]);
  }

  // 编号 120021
  // Profile兜底文案第2组-男*女*other（用于没取到性别的时候）
  String likedDefaultText2(gender, ) {
    return Intl.gender(gender, male: "Feel free to ask me questions", female: "Tell me more about you!", other: "Feel free to ask me questions", name: 'likedDefaultText2', args: [gender, ]);
  }

  // 编号 120022
  // Profile兜底文案第3组-男*女*other（用于没取到性别的时候）
  String likedDefaultText3(gender, ) {
    return Intl.gender(gender, male: "Hey, don't be shy, let's chat", female: "Looking forward to know you", other: "Hey, don't be shy, let's chat", name: 'likedDefaultText3', args: [gender, ]);
  }

  // 编号 120023
  // 暂停页对功能说明的Tips1
  String get cardPauseExplanations1 {
    return Intl.message("Having manners and the right amount of humor in your profile is the key to making good impressions.", name: "cardPauseExplanations1");
  }

  // 编号 120024
  // 暂停页对功能说明的Tips2
  String get cardPauseExplanations2 {
    return Intl.message("Try out our recommendations in Daily Picks, and browse profiles within your preference", name: "cardPauseExplanations2");
  }

  // 编号 120025
  // 暂停页对功能说明的Tips3
  String get cardPauseExplanations3 {
    return Intl.message("It doesn't matter who sends the message first. It matters if you missed a real connection.", name: "cardPauseExplanations3");
  }

  // 编号 120026
  // 暂停页对功能说明的Tips4
  String get cardPauseExplanations4 {
    return Intl.message("Thousands of people have found love here daily. We hope we are the last dating app you use too.", name: "cardPauseExplanations4");
  }

  // 编号 120027
  // 暂停页对功能说明的Tips5
  String get cardPauseExplanations5 {
    return Intl.message("Let people know more about you. Upload at least 3 photos to up your chances of getting likes by 90%.", name: "cardPauseExplanations5");
  }

  // 编号 120028
  // 暂停页对功能说明的Tips6
  String get cardPauseExplanations6 {
    return Intl.message("Want to meet more people? Log in every day so your profile will be more likely to get recommended to others.", name: "cardPauseExplanations6");
  }

  // 编号 120029
  // 暂停页对功能说明的Tips7
  String get cardPauseExplanations7 {
    return Intl.message("Always try saying hi first, you might be surprised.", name: "cardPauseExplanations7");
  }

  // 编号 120030
  // 暂停页对功能说明的Tips8
  String get cardPauseExplanations8 {
    return Intl.message("Be friendly. Be respectful. Let's make WooPlus a community where people could feel embraced and enjoy love.", name: "cardPauseExplanations8");
  }

  // 编号 120031
  // 玩下一轮
  String get nextRound {
    return Intl.message("Next Round", name: "nextRound");
  }

  // 编号 120032
  // 明天再来
  String get comeTomorrow {
    return Intl.message("Come Back Tomorrow", name: "comeTomorrow");
  }

  // 编号 120033
  // 或者
  String get cardContinueOrTitle {
    return Intl.message("or", name: "cardContinueOrTitle");
  }

  // 编号 120034
  // 成为VIP继续
  String get continueCardWithVIP {
    return Intl.message("See More Profiles Now", name: "continueCardWithVIP");
  }

  // 编号 120035
  // 今天没有机会了，明天再来。
  String get noCardChance {
    return Intl.message("Come back tomorrow for more profiles", name: "noCardChance");
  }

  // 编号 120036
  // 找更多附近的人，点击后进入Search
  String get findMore {
    return Intl.message("See More in Daily Picks", name: "findMore");
  }

  // 编号 120037
  // VIP用户玩了8轮之后的Tips
  String get round8Tips {
    return Intl.message("Don't let your matches wait too long. Message them now to light up the spark.", name: "round8Tips");
  }

  // 编号 120038
  // oh，附近好像没有人/Daily Picks-空数据-主文案
  String get noOneRound {
    return Intl.message("Oops, looks like there is no one around", name: "noOneRound");
  }

  // 编号 120039
  // 调整搜索条件，点击后会打开Preference/Daily Picks-空数据-按钮文案(需要更新原文案)
  String get adjustFilter {
    return Intl.message("Adjust Preferences", name: "adjustFilter");
  }

  // 编号 120040
  // Block的标题
  String blockTitle(userName) {
    return Intl.message("Block $userName?", name: "blockTitle", args: [userName]);
  }

  // 编号 120041
  // Block的正文
  String blockContent(userName) {
    return Intl.message("$userName will not be able to message you anymore", name: "blockContent", args: [userName]);
  }

  // 编号 120042
  // 举报并Block
  String get reportAndBlock {
    return Intl.message("Report and Block", name: "reportAndBlock");
  }

  // 编号 120043
  // 很快就消失（未点击展开时）
  String get soon {
    return Intl.message("soon", name: "soon");
  }

  // 编号 120044
  // 还剩多少天（未点击展开时）
  String likedDays(howMany) {
    return Intl.plural(howMany, one: "1 day", other: "$howMany days", name: 'likedDays', args: [howMany]);
  }

  // 编号 120045
  // 还剩多少天（已点击展开时）
  String likedDisappearDays(howMany) {
    return Intl.plural(howMany, one: "Disappearing in one day", other: "Disappearing in $howMany days", name: 'likedDisappearDays', args: [howMany]);
  }

  // 编号 120046
  // 图片加载失败（此文案和失败的图放在一起）
  String get photoLoadingFailed {
    return Intl.message("Photo loading unsuccessful", name: "photoLoadingFailed");
  }

  // 编号 120047
  // 获取GPS国家码失败的内嵌文案，点击重试
  String get failGpsInfoRetry {
    return Intl.message("We couldn't get your GPS info, tap to retry", name: "failGpsInfoRetry");
  }

  // 编号 120048
  // Profile主图被删除后展示的文案
  String get mainAvatarInReview {
    return Intl.message("New Photo in Review", name: "mainAvatarInReview");
  }

  // 编号 120049
  // myLiks标题
  String get liked {
    return Intl.message("You Liked", name: "liked");
  }

  // 编号 120050
  // 兜底文案标题
  String get mySelfSummary {
    return Intl.message("MY SELF-SUMMARY", name: "mySelfSummary");
  }

  // 编号 120051
  // Rewind不可用弹窗主文案
  String get rewindNoticeTitle {
    return Intl.message("Rewind unavailable", name: "rewindNoticeTitle");
  }

  // 编号 120052
  // Rewind不可用弹窗副文案
  String get rewindNoticeDesc {
    return Intl.message("You can only rewind after each like or pass", name: "rewindNoticeDesc");
  }

  // 编号 120053
  // rewind购买页-主文案
  String get purchaseRewindTitle {
    return Intl.message("Changed your mind?", name: "purchaseRewindTitle");
  }

  // 编号 120054
  // rewind购买页-说明文案
  String purchaseRewindDesc(gender, userName) {
    return Intl.gender(gender, male: "Give him another chance with rewind!", female: "Give her another chance with rewind!", other: "Give $userName another chance with rewind!", name: 'purchaseRewindDesc', args: [gender, userName]);
  }

  // 编号 120055
  // My likes没有喜欢过的人
  String get noMyLikes {
    return Intl.message("You haven't liked anyone yet. Send your first like in For You.", name: "noMyLikes");
  }

  // 编号 120056
  // [新增]有错过的Match-VIP
  String missMatchVipTip(howMany) {
    return Intl.plural(howMany, one: "Oops, you just missed one match. Chat now or view later in Likes You!", other: "Oops, you just missed $howMany matches. Chat now or view later in Likes You!", name: 'missMatchVipTip', args: [howMany]);
  }

  // 编号 120057
  // 举报并pass
  String get reportAndPass {
    return Intl.message("Report and pass this user", name: "reportAndPass");
  }

  // 编号 120058
  // 举报其他人视频button
  String get reportVideo {
    return Intl.message("Report this video", name: "reportVideo");
  }

  // 编号 120059
  // 编辑profile新手气泡
  String get profileEntranceGuide {
    return Intl.message("You can complete your profile here", name: "profileEntranceGuide");
  }

  // 编号 120060
  // 举报时未选择理由点击report提示
  String get selectReportTitle {
    return Intl.message("Please Choose Your Reason", name: "selectReportTitle");
  }

  // 编号 120061
  // 
  String missMatchPauseTips1(howMany) {
    return Intl.message("*You just missed one potential match. Have a check and explore the possibilities now!*You just missed $howMany potential matches. Have a check and explore the possibilities now!", name: "missMatchPauseTips1", args: [howMany]);
  }

  // 编号 120062
  // 
  String get missMatchPauseTips2 {
    return Intl.message("All your missed matches are in Likes You.\nCheck them out there whenever you want.", name: "missMatchPauseTips2");
  }

  // 编号 120063
  // 
  String get btnTakeALookTitle {
    return Intl.message("Have a Check", name: "btnTakeALookTitle");
  }

  // 编号 120064
  // Miss Match页涉及到的Miss Match词组替换为Missed Match
  String get missMatchTitle {
    return Intl.message("Missed Match", name: "missMatchTitle");
  }

  // 编号 120065
  // Missed Match卡片页为空时，空状态文案
  String get missMathEmptyTips {
    return Intl.message("No missed match yet! You can go back to For You and keep looking.", name: "missMathEmptyTips");
  }

  // 编号 130001
  // Daily Picks Tab名
  String get searchTabTitle {
    return Intl.message("Daily Picks", name: "searchTabTitle");
  }

  // 编号 130002
  // 搜索条件-标题-我的偏好
  String get searchPreferences {
    return Intl.message("MY PREFERENCES", name: "searchPreferences");
  }

  // 编号 130003
  // 搜索条件-我的偏好-条件1-给我展示
  String get searchGenderTitle {
    return Intl.message("Show Me", name: "searchGenderTitle");
  }

  // 编号 130004
  // 仅展示女性
  String get onlyWomen {
    return Intl.message("Only Women", name: "onlyWomen");
  }

  // 编号 130005
  // 仅展示男性
  String get onlyMen {
    return Intl.message("Only Men", name: "onlyMen");
  }

  // 编号 130006
  // 女性和男性
  String get womenAndMen {
    return Intl.message("Women & Men", name: "womenAndMen");
  }

  // 编号 130007
  // 搜索条件-我的偏好-条件2-年龄范围
  String get searchAgeRange {
    return Intl.message("Age Range", name: "searchAgeRange");
  }

  // 编号 130008
  // 搜索条件-标题-位置
  String get searchLocation {
    return Intl.message("LOCATION", name: "searchLocation");
  }

  // 编号 130009
  // 搜索条件-位置-条件1-区域
  String get searchRegion {
    return Intl.message("Region", name: "searchRegion");
  }

  // 编号 130010
  // 或者
  String get searchOR {
    return Intl.message("or", name: "searchOR");
  }

  // 编号 130011
  // 搜索条件-位置-条件2-距离
  String get searchDistance {
    return Intl.message("Distance", name: "searchDistance");
  }

  // 编号 130012
  // 搜索条件-位置-条件2-距离的描述-周围
  String get searchNearby {
    return Intl.message("Nearby", name: "searchNearby");
  }

  // 编号 130013
  // 搜索条件-标题-WooPlus精选
  String get searchSelectTiltle {
    return Intl.message("WOOPLUS SELECT", name: "searchSelectTiltle");
  }

  // 编号 130014
  // 搜索条件-WooPlus精选-条件1-受欢迎的用户
  String get searchHotUser {
    return Intl.message("Popular users", name: "searchHotUser");
  }

  // 编号 130015
  // 搜索条件-WooPlus精选-条件2-活跃用户
  String get searchActiveUser {
    return Intl.message("Active users", name: "searchActiveUser");
  }

  // 编号 130016
  // 搜索条件-WooPlus精选-条件3-种族
  String get searchEthnicityTitle {
    return Intl.message("Ethnicity", name: "searchEthnicityTitle");
  }

  // 编号 130017
  // 搜索页面的Search按钮
  String get searchBtn {
    return Intl.message("Search", name: "searchBtn");
  }

  // 编号 130020
  // 已选择的区域
  String get searchSelectedRegion {
    return Intl.message("SELECTED REGION", name: "searchSelectedRegion");
  }

  // 编号 130021
  // 当前区域
  String get searchCurrentLocation {
    return Intl.message("CURRENT REGION", name: "searchCurrentLocation");
  }

  // 编号 130022
  // 选择一个在XX地方的区域
  String get searchRegionIn {
    return Intl.message("CHOOSE A REGION IN", name: "searchRegionIn");
  }

  // 编号 130023
  // 区域（用于页面标题）
  String get searchRegionTitle {
    return Intl.message("Region", name: "searchRegionTitle");
  }

  // 编号 130024
  // 国家（用于国家标题）
  String get searchCountry {
    return Intl.message("Countries or Regions", name: "searchCountry");
  }

  // 编号 130025
  // Search广告1-标题-调优你的搜索结果
  String get searchAd1Title {
    return Intl.message("FINE TUNE YOUR SEARCH", name: "searchAd1Title");
  }

  // 编号 130026
  // Search广告1-正文-根据地理位置，种族和其他来搜索
  String get searchAd1Msg {
    return Intl.message("Get all filters and view more people", name: "searchAd1Msg");
  }

  // 编号 130027
  // Search广告2-标题-得到更多的卡片
  String get searchAd2Title {
    return Intl.message("GET EXTRA PROFILES", name: "searchAd2Title");
  }

  // 编号 130028
  // Search广告2-正文-可以在ForYou中看更多的人
  String get searchAd2Msg {
    return Intl.message("Reach more people in For You", name: "searchAd2Msg");
  }

  // 编号 130029
  // Search广告3-标题-享受消息的特性
  String get searchAd3Title {
    return Intl.message("ENJOY MESSAGE FEATURES", name: "searchAd3Title");
  }

  // 编号 130030
  // Search广告3-正文-给任何人发消息和看阅读状态
  String get searchAd3Msg {
    return Intl.message("Message anyone and see read receipts", name: "searchAd3Msg");
  }

  // 编号 130031
  // Search广告4-标题-看谁喜欢了你
  String get searchAd4Title {
    return Intl.message("SEE WHO LIKED YOU", name: "searchAd4Title");
  }

  // 编号 130032
  // Search广告4-正文-省去麻烦并且直接match
  String get searchAd4Msg {
    return Intl.message("Cut to the chase and start chatting", name: "searchAd4Msg");
  }

  // 编号 130033
  // Search广告 - 查看更多
  String get searchAdMore {
    return Intl.message("Learn more >", name: "searchAdMore");
  }

  // 编号 130034
  // 根据条件没有搜索出内容给用户的提示
  String get searchNoPersonTip {
    return Intl.message("Try to widen your options, \nthe best search is often less restrictive", name: "searchNoPersonTip");
  }

  // 编号 130035
  // 重新编辑搜索条件
  String get searchNoPersonBtn {
    return Intl.message("Edit Search", name: "searchNoPersonBtn");
  }

  // 编号 130040
  // dailypicks标签1
  String get dpCategoryNearBy {
    return Intl.message("Nearby", name: "dpCategoryNearBy");
  }

  // 编号 130041
  // dailypicks标签2
  String get dpCategoryPopular {
    return Intl.message("Popular", name: "dpCategoryPopular");
  }

  // 编号 130042
  // dailypicks标签3
  String get dpCategoryOnline {
    return Intl.message("Online", name: "dpCategoryOnline");
  }

  // 编号 130043
  // dailypicks标签4
  String get dpCategoryVIP {
    return Intl.message("VIP", name: "dpCategoryVIP");
  }

  // 编号 130044
  // daily picks普通会员刷新按钮/daily picks购买弹窗收起时按钮文案
  String get dpSeeMore {
    return Intl.message("See More", name: "dpSeeMore");
  }

  // 编号 130045
  // daily picks购买页主文案
  String get dpVIPPurchaseTitle {
    return Intl.message("Unlock Daily Picks", name: "dpVIPPurchaseTitle");
  }

  // 编号 130046
  // daily picks购买页按钮标题
  String dpVIPPurchaseButton(originalPrice) {
    return Intl.message("$originalPrice/mo", name: "dpVIPPurchaseButton", args: [originalPrice]);
  }

  // 编号 130050
  // 会员专区引导页1-主文案
  String dpVIPGuide1(gender, ) {
    return Intl.gender(gender, male: "Get faster responses and meet attractive singles in our VIP Section.", female: "Join our VIP Section to make real connections with more genuine, eligible members.", other: "Get faster responses and meet attractive singles in our VIP Section.", name: 'dpVIPGuide1', args: [gender, ]);
  }

  // 编号 130051
  // 会员专区引导页1-按钮文案
  String get dpVIPGuide1Button {
    return Intl.message("I'm Interested", name: "dpVIPGuide1Button");
  }

  // 编号 130053
  // 会员专区引导页2-主文案
  String dpVIPGuide2(gender, ) {
    return Intl.gender(gender, male: "They are often our more engaged members on WooPlus, don't keep them waiting for too long. Please be kind and respectful.", female: "To those who appreciate you, don't keep them waiting for too long, please be kind", other: "To those who appreciate you, don't keep them waiting for too long, please be kind", name: 'dpVIPGuide2', args: [gender, ]);
  }

  // 编号 130054
  // 会员专区引导页2-按钮文案
  String get dpVIPGuide2Button {
    return Intl.message("I Will", name: "dpVIPGuide2Button");
  }

  // 编号 130055
  // 会员专区购买页-主文案-获取会员专区权限
  String get dpVIPGetAccess {
    return Intl.message("Get Full Access to VIP Section", name: "dpVIPGetAccess");
  }

  // 编号 130057
  // daily picks-nearby加载页说明文案
  String get dpCategoryNearByLoading {
    return Intl.message("Connecting you to members nearby", name: "dpCategoryNearByLoading");
  }

  // 编号 130058
  // daily picks-popular加载页说明文案
  String get dpCategoryPopularLoading {
    return Intl.message("Connecting you to our popular members", name: "dpCategoryPopularLoading");
  }

  // 编号 130059
  // daily picks-online加载页说明文案
  String get dpCategoryOnlineLoading {
    return Intl.message("Connecting you to recently online members", name: "dpCategoryOnlineLoading");
  }

  // 编号 130060
  // daily picks-VIP加载页说明文案
  String get dpCategoryVIPLoading {
    return Intl.message("Connecting you to our VIP members", name: "dpCategoryVIPLoading");
  }

  // 编号 130061
  // 高级搜索页面名
  String get asPageTitlte {
    return Intl.message("Advanced Search", name: "asPageTitlte");
  }

  // 编号 130062
  // 高级搜索-组名-性别
  String get asGender {
    return Intl.message("Gender", name: "asGender");
  }

  // 编号 130063
  // 高级搜索-组名-年龄
  String get asAge {
    return Intl.message("Age", name: "asAge");
  }

  // 编号 130065
  // 高级搜索-location-距离搜索
  String get asLocationMaxDistance {
    return Intl.message("Search within", name: "asLocationMaxDistance");
  }

  // 编号 130066
  // 高级搜索-高级filters
  String get asGroupFilter {
    return Intl.message("ADVANCED FILTERS", name: "asGroupFilter");
  }

  // 编号 130067
  // 高级搜索-普通用户提示文案——还剩N个免费filter
  String asFilterNoticeFreeNum(number) {
    return Intl.message("$number free filter available", name: "asFilterNoticeFreeNum", args: [number]);
  }

  // 编号 130068
  // 高级搜索-VIP用户提示文案——全部filter可用
  String get asFilterNoticeVIP {
    return Intl.message("All filters available", name: "asFilterNoticeVIP");
  }

  // 编号 130069
  // 高级搜索-提示文案——先答后选
  String get asFilterNoticeNeedAnswer {
    return Intl.message("Fill in to choose", name: "asFilterNoticeNeedAnswer");
  }

  // 编号 130070
  // 高级搜索-清空提醒弹窗主文案
  String get asFilterClearDialogTitle {
    return Intl.message("Clear all filters?", name: "asFilterClearDialogTitle");
  }

  // 编号 130071
  // 高级搜索-清空提醒弹窗副文案
  String get asFilterClearDialogDesc {
    return Intl.message("You will reset all Advanced Filters", name: "asFilterClearDialogDesc");
  }

  // 编号 130072
  // 高级搜索-清空提醒弹窗按钮-确认
  String get asFilterClearConfirm {
    return Intl.message("Clear All", name: "asFilterClearConfirm");
  }

  // 编号 130073
  // annual income最后一项, 对应personal details中所有选项, 具体选项名可以看<advanced filters选项表>
  String get asFilterDoesNotMatter {
    return Intl.message("Doesn't matter", name: "asFilterDoesNotMatter");
  }

  // 编号 130074
  // body shape选项
  String get asFilterCurvyMuscular {
    return Intl.message("Curvy/Muscular", name: "asFilterCurvyMuscular");
  }

  // 编号 130075
  // body shape选项
  String get asFilterThickStocky {
    return Intl.message("Thick/Stocky/A few extra pounds", name: "asFilterThickStocky");
  }

  // 编号 130076
  // body shape选项
  String get asFilterBroadBigBoned {
    return Intl.message("Broad/Big-boned", name: "asFilterBroadBigBoned");
  }

  // 编号 130077
  // wants kids选项名
  String get asFilterWantsKidsTitle {
    return Intl.message("Wants Kids", name: "asFilterWantsKidsTitle");
  }

  // 编号 130078
  // wants kids-选项1
  String get asFilterWantsKidsSelect1 {
    return Intl.message("Wants kids", name: "asFilterWantsKidsSelect1");
  }

  // 编号 130079
  // wants kids-选项2
  String get asFilterWantsKidsSelect2 {
    return Intl.message("Never wants kids", name: "asFilterWantsKidsSelect2");
  }

  // 编号 130080
  // has kids选项名
  String get asFilterHasKidsTitle {
    return Intl.message("Has Kids", name: "asFilterHasKidsTitle");
  }

  // 编号 130081
  // has kids选项1
  String get asFilterHasKidsSelect1 {
    return Intl.message("Has kids", name: "asFilterHasKidsSelect1");
  }

  // 编号 130082
  // has kids选项2
  String get asFilterHasKidsSelect2 {
    return Intl.message("Doesn't have kids", name: "asFilterHasKidsSelect2");
  }

  // 编号 130083
  // smoking选项2-偶尔
  String get asFilterSmokingSometimes {
    return Intl.message("Sometimes", name: "asFilterSmokingSometimes");
  }

  // 编号 130084
  // height文案-选择身高
  String get asFilterChooseHeight {
    return Intl.message("Choose Height", name: "asFilterChooseHeight");
  }

  // 编号 130088
  // 高级搜索-annual income选项
  String get asGroupGenderAndAge {
    return Intl.message("GENDER & AGE", name: "asGroupGenderAndAge");
  }

  // 编号 130089
  // 高级搜索-location-地区搜索
  String get asGroupLocationRegion {
    return Intl.message("REGION", name: "asGroupLocationRegion");
  }

  // 编号 130090
  // 高级搜索-location-距离搜索
  String get asGroupLocationDistance {
    return Intl.message("DISTANCE", name: "asGroupLocationDistance");
  }

  // 编号 130091
  // 高级搜索-未选择时
  String get asFilterValueNoneSelect {
    return Intl.message("Fill in", name: "asFilterValueNoneSelect");
  }

  // 编号 130092
  // 高级搜索-未回答时
  String get asFilterValueNoAnswer {
    return Intl.message("Any", name: "asFilterValueNoAnswer");
  }

  // 编号 130093
  // height选项说明1-默认状态
  String get asHeightValueAll {
    return Intl.message("Any height is just fine", name: "asHeightValueAll");
  }

  // 编号 130094
  // height选项说明2-选择了max
  String asHeightValueShorterThan(height) {
    return Intl.message("Shorter than $height", name: "asHeightValueShorterThan", args: [height]);
  }

  // 编号 130095
  // height选项说明3-选择了min
  String asHeightValueTallerThan(height) {
    return Intl.message("Taller than $height", name: "asHeightValueTallerThan", args: [height]);
  }

  // 编号 130096
  // 高级搜索-location-region搜索
  String get asLocationRegionSearchIn {
    return Intl.message("Search in", name: "asLocationRegionSearchIn");
  }

  // 编号 130097
  // 高级搜索-region-Country全选-外部显示
  String asLocationRegionAllStatesIn(country) {
    return Intl.message("All Regions in $country", name: "asLocationRegionAllStatesIn", args: [country]);
  }

  // 编号 130098
  // 高级搜索-region-Country全选-选项
  String get asLocationRegionAllStates {
    return Intl.message("All Regions", name: "asLocationRegionAllStates");
  }

  // 编号 130099
  // 高级搜索-region-State页面标题
  String get asLocationRegionPageState {
    return Intl.message("Regions", name: "asLocationRegionPageState");
  }

  // 编号 130100
  // 高级搜索-搜索结果-页面标题
  String get asSearchResult {
    return Intl.message("Search Results", name: "asSearchResult");
  }

  // 编号 130101
  // 高级搜索-搜索结果-空数据文案
  String get asSearchNoResults {
    return Intl.message("No results for now.\nTry to expand your options to get more results.", name: "asSearchNoResults");
  }

  // 编号 130102
  // 为A推荐B, B删除账号或被ban, 列表中B图片标记文案
  String get accountCancelled {
    return Intl.message("Account Canceled", name: "accountCancelled");
  }

  // 编号 130103
  // 为A推荐B, A block了B, 列表中B图片标记文案
  String get accountBlocked {
    return Intl.message("Account Blocked", name: "accountBlocked");
  }

  // 编号 130104
  // 高级搜索网络不佳弹窗按钮2-放弃保存并退出
  String get detailSaveFailDialogExit {
    return Intl.message("Discard Edit & Quit", name: "detailSaveFailDialogExit");
  }

  // 编号 130105
  // 高级搜索网络不佳弹窗主文案
  String get detailSaveFailDialogTitle {
    return Intl.message("Profile saved unsuccessfully. Try again?", name: "detailSaveFailDialogTitle");
  }

  // 编号 130106
  // 高级搜索-搜索结果购买页主文案
  String get advancePayTips {
    return Intl.message("Become VIP to See More", name: "advancePayTips");
  }

  // 编号 130107
  // DailyPicks 中点击cancelled 的profile
  String get toastUserCancelled {
    return Intl.message("This account is canceled", name: "toastUserCancelled");
  }

  // 编号 130108
  // DailyPicks 中点击用户自己 blocked 的profile
  String get toastUserBlocked {
    return Intl.message("You have blocked this profile", name: "toastUserBlocked");
  }

  // 编号 130109
  // preferences页面新增高级搜索入口
  String get preferencesAdvanceTitle {
    return Intl.message("WANT TO SEARCH BY FILTERS?", name: "preferencesAdvanceTitle");
  }

  // 编号 140001
  // 对你感兴趣的人界面标题
  String get interestedYouTitle {
    return Intl.message("Into You", name: "interestedYouTitle");
  }

  // 编号 140002
  // 喜欢你的人
  String get interestedYouLikeYouTitle {
    return Intl.message("LIKED YOU", name: "interestedYouLikeYouTitle");
  }

  // 编号 140003
  // 拜访了你的人
  String get interestedYouViewedYouTiltle {
    return Intl.message("VIEWED YOU", name: "interestedYouViewedYouTiltle");
  }

  // 编号 140004
  // 查看更多
  String get interestedYouSeeMore {
    return Intl.message("See All", name: "interestedYouSeeMore");
  }

  // 编号 140006
  // 针对解锁的用户，展示开启完整会话
  String get interestedYouChat {
    return Intl.message("Start Full Chat", name: "interestedYouChat");
  }

  // 编号 140007
  // 解锁照片
  String get interestedYouUnlockPhoto {
    return Intl.message("Unlock Photo", name: "interestedYouUnlockPhoto");
  }

  // 编号 140008
  // 有解锁Photo机会时的提示文案
  String get interestedYouOneUnlock {
    return Intl.message("1 Unlock", name: "interestedYouOneUnlock");
  }

  // 编号 140009
  // 暂无解锁Photo机会时的提示文案
  String get interestedYouZeroUnlock {
    return Intl.message("0 Unlock", name: "interestedYouZeroUnlock");
  }

  // 编号 140010
  // 第一次满足条件进入 LikedYou 时的文案提示
  String get interestedYouFreeUnlockTip {
    return Intl.message("Now you can unlock 1 photo for free!", name: "interestedYouFreeUnlockTip");
  }

  // 编号 140011
  // 点击解锁
  String get interestedYouFreeUnlock {
    return Intl.message("Free Unlock", name: "interestedYouFreeUnlock");
  }

  // 编号 140012
  // 告诉用户明天再来看看（点击 0 unlock 弹窗后的 Button 选项）
  String get interestedYouFreeUnlockExplain {
    return Intl.message("Come Back Tomorrow", name: "interestedYouFreeUnlockExplain");
  }

  // 编号 140013
  // 告诉用户明天再来看看，并推荐用户可以购买VIP解锁全部。
  String get interestedYouFreeUnlockExplainVip {
    return Intl.message("Unlock all photos NOW with VIP! See who's already liked you.", name: "interestedYouFreeUnlockExplainVip");
  }

  // 编号 140014
  // 解锁全部照片（点击 0 unlock 弹窗后的 Button 选项）
  String get interestedYouUnlockAll {
    return Intl.message("Unlock All Photos", name: "interestedYouUnlockAll");
  }

  // 编号 140016
  // 通知-XX喜欢了你
  String interestedYouLikedNotification(userName) {
    return Intl.message("$userName liked you!", name: "interestedYouLikedNotification", args: [userName]);
  }

  // 编号 140017
  // LIKED YOU 数据为空时的文案
  String get interestedYouNoneLikedYou {
    return Intl.message("No likes...yet. Tap to refresh.\nOr send your likes first in For You!", name: "interestedYouNoneLikedYou");
  }

  // 编号 140018
  // VIEWED YOU 数据为空时的文案
  String get interestedYouNoneViewedYou {
    return Intl.message("No views...yet.\nSend your love first in For You!", name: "interestedYouNoneViewedYou");
  }

  // 编号 140019
  // VIP用户删除LikedYou的Profile照片时的提醒
  String interestedYouDeleteTip(userName) {
    return Intl.message("Delete $userName?", name: "interestedYouDeleteTip", args: [userName]);
  }

  // 编号 140020
  // 两个人Match之后的弹窗标题
  String get matchDialogTitle {
    return Intl.message("IT'S A MATCH!", name: "matchDialogTitle");
  }

  // 编号 140021
  // 两个人Match之后的弹窗正文
  String get matchDialogMsg {
    return Intl.message("Now is the best time to say hello", name: "matchDialogMsg");
  }

  // 编号 140022
  // 立刻聊天
  String get matchDialogChatBtn {
    return Intl.message("Chat Now", name: "matchDialogChatBtn");
  }

  // 编号 140023
  // 稍后再聊
  String get matchDialogLater {
    return Intl.message("Later", name: "matchDialogLater");
  }

  // 编号 140024
  // 和更多的N个。用于在LikedYou中表示隐藏起来的Profile数量
  String blackPileUpTip(userName) {
    return Intl.message("$userName and other members", name: "blackPileUpTip", args: [userName]);
  }

  // 编号 140025
  // 用户点击了免费解锁的Notification后，但却没有可免费解锁的人
  String get whoLikedYouUnavailable {
    return Intl.message("The user who liked you is unavailable now", name: "whoLikedYouUnavailable");
  }

  // 编号 140026
  // 谁喜欢了我的button（VIP只显示Chat）
  String get whoLikedMeChat {
    return Intl.message("Chat", name: "whoLikedMeChat");
  }

  // 编号 140030
  // 想要看谁喜欢了你？赶紧来查看吧！
  // en: Want to see who liked you? Check them out here!
  // de: Jemand mag dich. Komm mal her und schau nach!
  String get flareAnimationWhoLikeYou {
    return Intl.message("WooPlusintoUnewEN", name: "flareAnimationWhoLikeYou");
  }

  // 编号 150001
  // Chats Tab的名称
  String get chatTitle {
    return Intl.message("Chats", name: "chatTitle");
  }

  // 编号 150002
  // SayHi标题
  String get superHiTitle {
    return Intl.message("SAY HI", name: "superHiTitle");
  }

  // 编号 150003
  // Chatlist的标题
  String get chatTitleUpper {
    return Intl.message("CHATS", name: "chatTitleUpper");
  }

  // 编号 150004
  // Chatlist中WooPlus的名字
  String get wooplus {
    return Intl.message("WooPlus", name: "wooplus");
  }

  // 编号 150005
  // Chatlist中Irene的名字
  String get irene {
    return Intl.message("Irene", name: "irene");
  }

  // 编号 150006
  // SayHi列表页最下方的告知，只会展示最近7天的SayHi
  String get admirerDesc {
    return Intl.message("Only show Say Hi in the past 7 days", name: "admirerDesc");
  }

  // 编号 150007
  // 点击match倒计的心形图标后弹窗的标题
  String get matchCountDown {
    return Intl.message("Match Countdown", name: "matchCountDown");
  }

  // 编号 150008
  // 点击match倒计的心形图标后弹出的文案
  String matchCountDownDesc(howMany) {
    return Intl.plural(howMany, one: "This Match will expire in one hour if you two don't respond to each other", other: "This Match will expire in $howMany hours if you two don't respond to each other", name: 'matchCountDownDesc', args: [howMany]);
  }

  // 编号 150009
  // 终结match过期的倒计时
  String get knowMatchCountDown {
    return Intl.message("Eliminate Countdown", name: "knowMatchCountDown");
  }

  // 编号 150010
  // Irene 在时间线中给用户说的第一句话。
  String get ireneHelperDescription {
    return Intl.message("Hey, I'm Irene. I'm here to help you keep track of your matches.", name: "ireneHelperDescription");
  }

  // 编号 150011
  // 
  String get deleteTitle {
    return Intl.message("Delete", name: "deleteTitle");
  }

  // 编号 150012
  // 删除会话的标题
  String get deleteChatTitle {
    return Intl.message("Delete the chat?", name: "deleteChatTitle");
  }

  // 编号 150013
  // 普通用户删除match会话
  String get unMatchDesc {
    return Intl.message("Your chat history will be gone after the deletion", name: "unMatchDesc");
  }

  // 编号 150014
  // 普通用户删除VIP会话，或者VIP用户删除会话
  String get deleteVipDesc {
    return Intl.message("Your chat history will be gone after the deletion", name: "deleteVipDesc");
  }

  // 编号 150015
  // 点击unmatch我的人的头像时的标题
  String get oops {
    return Intl.message("You've been unmatched", name: "oops");
  }

  // 编号 150016
  // 点击不可用用户的标题
  String get unAvailableChat {
    return Intl.message("Unavailable Chat", name: "unAvailableChat");
  }

  // 编号 150017
  // 用户账号不可用时
  String unAvailableChatDesc(userName) {
    return Intl.message("$userName's account has been deleted. This chat will be removed automatically.", name: "unAvailableChatDesc", args: [userName]);
  }

  // 编号 150018
  // 用户被unmatch后，点击chat对话框
  String unMatchedChatDesc(userName) {
    return Intl.message("Now we know $userName is not the right one. Become VIP to send messages to anyone you like. Love is still out there waiting.", name: "unMatchedChatDesc", args: [userName]);
  }

  // 编号 150019
  // unmatch之后的购买选项
  String get getVipUpper {
    return Intl.message("Get VIP", name: "getVipUpper");
  }

  // 编号 150020
  // unmatch之后的删除聊天的选项
  String get deleteChatUpper {
    return Intl.message("Delete Chat", name: "deleteChatUpper");
  }

  // 编号 150021
  // 获取Notification的权限
  String get getChatNotifications {
    return Intl.message("Get notified when receiving new messages. Tap to enable now >>", name: "getChatNotifications");
  }

  // 编号 150022
  // 聊天列表中，4100的报错
  String get netErrorInChatList {
    return Intl.message("Network unavailable, please wait. Code 4100", name: "netErrorInChatList");
  }

  // 编号 150023
  // 当用户收到一条带脏词关键字的消息时，给用户的举报提示。
  String abuseTip(userName) {
    return Intl.message("If you felt offended, you can report $userName anonymously", name: "abuseTip", args: [userName]);
  }

  // 编号 150024
  // 当聊天中出现了与个人信息相关的词，scammer相关的词时提醒用户
  String get safeTip {
    return Intl.message("Beware of requests for money or personal information.", name: "safeTip");
  }

  // 编号 150025
  // 看你发送的消失是否已读的提示
  String get adReadTip {
    return Intl.message("See if your messages have been read", name: "adReadTip");
  }

  // 编号 150026
  // 检查是否已读未读
  String get adReadTipBtn {
    return Intl.message("Check Now", name: "adReadTipBtn");
  }

  // 编号 150027
  // 你开启了这个聊天
  String get msgTipsYouOpenVIPConversation {
    return Intl.message("It's a full chat now, enjoy 😃", name: "msgTipsYouOpenVIPConversation");
  }

  // 编号 150028
  // VIP XXX 开启了这个聊天（XXX为对方）
  String get msgTipsOtherOpenVIPConversation {
    return Intl.message("It's a full chat now, enjoy 😃", name: "msgTipsOtherOpenVIPConversation");
  }

  // 编号 150029
  // 当用户被block后，尝试发送消失时收到的提示
  String get blockedTip {
    return Intl.message("The user is now blocking messages", name: "blockedTip");
  }

  // 编号 150030
  // 发送语音消息时的提醒
  String get voiceCancelTip {
    return Intl.message("Slide up to cancel", name: "voiceCancelTip");
  }

  // 编号 150031
  // 发送语音前的提醒
  String get voiceHoldTip {
    return Intl.message("Hold to talk", name: "voiceHoldTip");
  }

  // 编号 150032
  // Match之后对双方的展示文案
  String get newMatchTip {
    return Intl.message("Send a message to keep the match. It will expire in", name: "newMatchTip");
  }

  // 编号 150033
  // Match后，本人发送了消息，等待对方的提示；
  String newMatchTipSentMessage(userName) {
    return Intl.message("Wait for $userName's response to keep the match. It will expire in", name: "newMatchTipSentMessage", args: [userName]);
  }

  // 编号 150034
  // 发送SayHi之前的提示
  String superHiBefore(userName) {
    return Intl.message("Send $userName a FREE message", name: "superHiBefore", args: [userName]);
  }

  // 编号 150035
  // 发送SayHi之后的提示
  String superHiAfter(gender, userName) {
    return Intl.gender(gender, male: "$userName has received your greeting. Start chatting once he replies to you.", female: "$userName has received your greeting. Start chatting once she replies to you.", other: "$userName has received your greeting. Start chatting once you get the reply.", name: 'superHiAfter', args: [gender, userName]);
  }

  // 编号 150036
  // 当天的SayHi已经用完的提示
  String superHiNone(userName) {
    return Intl.message("Out of Say Hi today. Become VIP to chat with $userName now!", name: "superHiNone", args: [userName]);
  }

  // 编号 150037
  // Match之后双方都发了消息从而keep了match。
  String get newMatchBoth {
    return Intl.message("You two started this chat from match", name: "newMatchBoth");
  }

  // 编号 150038
  // 固定的快捷回复1
  String get quickReply1 {
    return Intl.message("Hi, good to see you 👋", name: "quickReply1");
  }

  // 编号 150039
  // 固定的快捷回复2
  String get quickReply2 {
    return Intl.message("Hi there! 😜", name: "quickReply2");
  }

  // 编号 150040
  // 会话窗口中，收到SayHi的用户看到的文案
  String receiveSuperHi(gender, userName) {
    return Intl.gender(gender, male: "$userName wants to know you. Reply to him and chat for FREE.", female: "$userName wants to know you. Reply to her and chat for FREE.", other: "$userName wants to know you. Reply and chat for FREE.", name: 'receiveSuperHi', args: [gender, userName]);
  }

  // 编号 150041
  // 当聊天建立后，展示 SayHi 发起的聊天
  String get newConversationForSuperHi {
    return Intl.message("You two started this chat from Say Hi", name: "newConversationForSuperHi");
  }

  // 编号 150042
  // 在 Irene 中 Match 过期提示的标题
  String get expiredMatchTitle {
    return Intl.message("Your Match Expired", name: "expiredMatchTitle");
  }

  // 编号 150043
  // 在 Irene 中 Match 过期提示的描述
  String get expiredMatchMsg {
    return Intl.message("Your Match Expired", name: "expiredMatchMsg");
  }

  // 编号 150044
  // 在 Irene 中 Match 过期提示的Restart操作
  String get expiredMatchBtn {
    return Intl.message("Restart Match", name: "expiredMatchBtn");
  }

  // 编号 150045
  // Chat 中 WooPlus 的 帮助和反馈入口
  String get messageHelpFeedback {
    return Intl.message("Help & Feedback", name: "messageHelpFeedback");
  }

  // 编号 150048
  // 消息已读
  String get messageRead {
    return Intl.message("Read", name: "messageRead");
  }

  // 编号 150049
  // 消息未读
  String get messageUnread {
    return Intl.message("Unread", name: "messageUnread");
  }

  // 编号 150050
  // 过期时间小于等于1小时, 过期之间大于1小时。通常用在Match后的陈述句结尾。
  String messageTipHours(howMany) {
    return Intl.plural(howMany, one: "$howMany hour", other: "$howMany hours", name: 'messageTipHours', args: [howMany]);
  }

  // 编号 150051
  // Chat列表中展示和对方用户的最近一条图片消息提示
  String get photoMessage {
    return Intl.message("[Photo]", name: "photoMessage");
  }

  // 编号 150052
  // Chat列表中展示和对方用户的最近一条礼物消息提示
  String get giftMessage {
    return Intl.message("[Gift]", name: "giftMessage");
  }

  // 编号 150053
  // Chat列表中展示和对方用户的最近一条音频消息提示
  String get audioMessage {
    return Intl.message("[Audio]", name: "audioMessage");
  }

  // 编号 150054
  // Chat列表中展示对方打开了你的礼物
  String helperOpenedGift(userName) {
    return Intl.message("$userName opened your gift", name: "helperOpenedGift", args: [userName]);
  }

  // 编号 150055
  // Chat列表中展示Match过期
  String helperExpiredMatch(userName) {
    return Intl.message("Match with $userName expired", name: "helperExpiredMatch", args: [userName]);
  }

  // 编号 150056
  // Chat会话框中展示消息的时间-昨天
  String get yesterday {
    return Intl.message("Yesterday", name: "yesterday");
  }

  // 编号 150057
  // Match快过期时的Notification提醒
  String matchExpiredNotification(userName) {
    return Intl.message("Your match with $userName will expire soon. Chat or become VIP to keep it!", name: "matchExpiredNotification", args: [userName]);
  }

  // 编号 150058
  // 用户在Messages中收到了 文本/语音/图片 消息的通知文案
  String pushContentNormalMessage(userName) {
    return Intl.message("$userName sent you a message. 💬 Check now!", name: "pushContentNormalMessage", args: [userName]);
  }

  // 编号 150059
  // 用户在Messages中收到了礼物消息的通知文案
  String pushContentGiftMessage(userName) {
    return Intl.message("$userName sent you a gift! 🎁 Come and check!", name: "pushContentGiftMessage", args: [userName]);
  }

  // 编号 150060
  // 用户收到了Say Hi的通知文案1
  String pushContentSuperHi1(userName) {
    return Intl.message("$userName invites you to chat!😍", name: "pushContentSuperHi1", args: [userName]);
  }

  // 编号 150061
  // 用户收到了Say Hi的通知文案2
  String pushContentSuperHi2(userName) {
    return Intl.message("$userName says hi and wants to chat with you! 🤗", name: "pushContentSuperHi2", args: [userName]);
  }

  // 编号 150062
  // AB建立会话后，B回复A之前，A给B连续发送第5条消息时，弹dialog的提示标题
  String sendMessageFailMoreMessageMsg(userName) {
    return Intl.message("Please wait for $userName's response first", name: "sendMessageFailMoreMessageMsg", args: [userName]);
  }

  // 编号 150063
  // 消息发送失败的提醒
  String get sendMessageFailMoreMessageTitle {
    return Intl.message("Message sent failed", name: "sendMessageFailMoreMessageTitle");
  }

  // 编号 150064
  // A给多个不同的用户发送了消息达到了限制，再次发送消息时，弹dialog的提示标题
  String get sendMessageFailMorePersonMsg {
    return Intl.message("Messages sent too often", name: "sendMessageFailMorePersonMsg");
  }

  // 编号 150065
  // 保持耐心
  String get sendMessageFailMorePersonTitle {
    return Intl.message("Take a Break", name: "sendMessageFailMorePersonTitle");
  }

  // 编号 150066
  // 消息发送失败后，点击弹出dialog重发的标题
  String get sendMessageResendTitle {
    return Intl.message("Resend this message?", name: "sendMessageResendTitle");
  }

  // 编号 150067
  // Resend选项
  String get resend {
    return Intl.message("Resend", name: "resend");
  }

  // 编号 150068
  // 会话窗口中普通用户看到的激活会话的button文案
  String get superHiActivateFull {
    return Intl.message("Start Full Chat", name: "superHiActivateFull");
  }

  // 编号 150069
  // 松开就取消（发送语音）
  String get cancelRecording {
    return Intl.message("Release to cancel", name: "cancelRecording");
  }

  // 编号 150070
  // 查看profile（在chat对话框的更多）
  String get viewProfile {
    return Intl.message("View Profile", name: "viewProfile");
  }

  // 编号 150071
  // 用户在Messages中收到了Match消息的通知文案1
  String get pushContentMatch1 {
    return Intl.message("Congrats! You have a new match! 💑", name: "pushContentMatch1");
  }

  // 编号 150072
  // 用户在Messages中收到了Match消息的通知文案2
  String get pushContentMatch2 {
    return Intl.message("You two liked each other! Chat for free now! 💑", name: "pushContentMatch2");
  }

  // 编号 150073
  // 用户在Messages中收到了Match消息的通知文案3
  String get pushContentMatch3 {
    return Intl.message("You have a new match! Start the connection now! 💑", name: "pushContentMatch3");
  }

  // 编号 150074
  // 用户收到的sayHi会话的通知标题
  String get pushTitleSuperHi {
    return Intl.message("Say Hi 👋", name: "pushTitleSuperHi");
  }

  // 编号 150075
  // 用户收到的Match通知标题
  String get pushTitleMatch {
    return Intl.message("New Match! 💞", name: "pushTitleMatch");
  }

  // 编号 150076
  // 用户收到的新消息通知标题
  String get pushTitleMessage {
    return Intl.message("New Message 💓", name: "pushTitleMessage");
  }

  // 编号 150077
  // 用户收到了Say Hi的通知文案3
  String pushContentSuperHi3(userName) {
    return Intl.message("$userName is keen to talk to you. Start the chat now!", name: "pushContentSuperHi3", args: [userName]);
  }

  // 编号 150078
  // 用户收到了语音消息的通知文案
  String pushContentVoiceMessage(userName) {
    return Intl.message("$userName sent you a voice message", name: "pushContentVoiceMessage", args: [userName]);
  }

  // 编号 150079
  // 用户收到了图片消息的通知文案
  String pushContentImageMessage(userName) {
    return Intl.message("$userName sent you a photo", name: "pushContentImageMessage", args: [userName]);
  }

  // 编号 150080
  // 用户收到了文字消息的通知文案（直接外露内容）
  String pushContentTextMessage(userName, textMessage) {
    return Intl.message("$userName:\"$textMessage\"", name: "pushContentTextMessage", args: [userName, textMessage]);
  }

  // 编号 150081
  // 用户收到了挑战消息的通知文案
  String gotChallenge(userName) {
    return Intl.message("You got a Selfie Challenge!", name: "gotChallenge", args: [userName]);
  }

  // 编号 150082
  // 用户收到了不支持的消息
  String get unSupportMsg {
    return Intl.message("[Unsupported message, please update to the latest version to see it]", name: "unSupportMsg");
  }

  // 编号 151001
  // Welcome消息，男性
  String get welcomeMessageTextMale {
    return Intl.message("Welcome! Take the initiative, upload some photos, get chatting, they could be the one.\n\nA kind reminder: Pornographic and inappropriate content are not allowed, indecent behavior may get you banned from us.\n\nHope you can enjoy dating and find love here :)\n\nPro tips: Profile with more than 3 photos and a good bio are 3x more likely to match.", name: "welcomeMessageTextMale");
  }

  // 编号 151002
  // Welcome消息，女性
  String get welcomeMessageTextFemale {
    return Intl.message("Welcome! Take the initiative, upload some photos, get chatting, they could be the one. Hope you can enjoy dating and find love here :)\n\nPro tips: Profile with more than 3 photos and a good bio are 3x more likely to match.", name: "welcomeMessageTextFemale");
  }

  // 编号 151003
  // 固定的快捷回复3
  String get quickReply3 {
    return Intl.message("Hey, you look cute! 😊", name: "quickReply3");
  }

  // 编号 151004
  // 固定的快捷回复4
  String get quickReply4 {
    return Intl.message("Choose one emoji to describe yourself. 🤔", name: "quickReply4");
  }

  // 编号 151005
  // 固定的快捷回复5
  String get quickReply5 {
    return Intl.message("Your smile really caught my eye 😄", name: "quickReply5");
  }

  // 编号 151006
  // Match-用户首次发送快速消息模板-emoji时, 弹起的半屏文案
  String matchSendGuideEmoji(userName, emoji) {
    return Intl.message("You're sending $userName a $emoji", name: "matchSendGuideEmoji", args: [userName, emoji]);
  }

  // 编号 151007
  // Match-用户首次发送快速消息模板-text时, 弹起的半屏文案
  String matchSendGuideText(userName, text) {
    return Intl.message("You're sending $userName \"$text\"", name: "matchSendGuideText", args: [userName, text]);
  }

  // 编号 151008
  // 
  String get matchSayMySelf {
    return Intl.message("Say something here", name: "matchSayMySelf");
  }

  // 编号 151100
  // HUD的信息提示弹窗-有其他用户邀请自己参加自拍挑战
  String inviteChallenge(userName) {
    return Intl.message("$userName invites you to join the Selfie Challenge", name: "inviteChallenge", args: [userName]);
  }

  // 编号 151101
  // 确认进入挑战
  String get checkItOut {
    return Intl.message("Check It Out", name: "checkItOut");
  }

  // 编号 151102
  // 当我在XXX时，看起来是什么样子
  String get whatDoLookLike {
    return Intl.message("What do I look like when...", name: "whatDoLookLike");
  }

  // 编号 151103
  // 尝试并聊天
  String get tryChat {
    return Intl.message("Try and Chat", name: "tryChat");
  }

  // 编号 151104
  // 选择任一话题聊天
  String get chooseChallenge {
    return Intl.message("Choose one scenario as your challenge", name: "chooseChallenge");
  }

  // 编号 151105
  // 选择
  String get choose {
    return Intl.message("Choose", name: "choose");
  }

  // 编号 151106
  // 确保露出你的面部
  String get makeSureFace {
    return Intl.message("Make sure to show your face", name: "makeSureFace");
  }

  // 编号 151107
  // 不错的自拍，对吧？
  String get niceSelfie {
    return Intl.message("Can't wait to see it!", name: "niceSelfie");
  }

  // 编号 151108
  // 已发送
  String get sent {
    return Intl.message("Sent", name: "sent");
  }

  // 编号 151109
  // 保存这个自拍到至 profile
  String get addToYourProfile {
    return Intl.message("Add it to your profile?", name: "addToYourProfile");
  }

  // 编号 151110
  // 有趣的自拍可以让你的profile更生动，获得更多的like
  String get funSelfie {
    return Intl.message("A fun selfie can get you more likes!", name: "funSelfie");
  }

  // 编号 151111
  // 保存至Profile
  String get addToProfile {
    return Intl.message("Add to Profile", name: "addToProfile");
  }

  // 编号 151112
  // 暂时不保存到Profile
  String get skipSaveProfile {
    return Intl.message("Skip", name: "skipSaveProfile");
  }

  // 编号 151113
  // 当你看到照片时的感受
  String get chooseEmoji {
    return Intl.message("Choose an emoji to express yourself", name: "chooseEmoji");
  }

  // 编号 151114
  // XX的挑战-挑战的落地页的标题-前面要加UserName
  String get whoChallenge {
    return Intl.message("'s Challenge", name: "whoChallenge");
  }

  // 编号 151115
  // 我来也试试
  String get letMeTry {
    return Intl.message("Let Me Try", name: "letMeTry");
  }

  // 编号 151116
  // 正在准备挑战-loading页
  String get prepareChallenge {
    return Intl.message("Preparing for your challenge...", name: "prepareChallenge");
  }

  // 编号 151117
  // 默认选中保存我的profile
  String get addToMyProfile {
    return Intl.message("Add it to my profile", name: "addToMyProfile");
  }

  // 编号 151120
  // 当我试着与给我喜欢的人调情时
  String get challenge_item_title_01 {
    return Intl.message("When I try to flirt with my crush...", name: "challenge_item_title_01");
  }

  // 编号 151121
  // 当我暗中对我的朋友恶作剧时
  String get challenge_item_title_02 {
    return Intl.message("When I pulled a secret prank on my friend...", name: "challenge_item_title_02");
  }

  // 编号 151122
  // 当我发现用手机流量观看了一整部视频时
  String get challenge_item_title_03 {
    return Intl.message("When I realize I just watched a whole video using my mobile data...", name: "challenge_item_title_03");
  }

  // 编号 151123
  // 当我听到了一个最搞笑的笑话时
  String get challenge_item_title_04 {
    return Intl.message("When I hear the funniest joke ever...", name: "challenge_item_title_04");
  }

  // 编号 151124
  // 当我在约会刷卡时没钱时
  String get challenge_item_title_05 {
    return Intl.message("When my credit card got declined on a date...", name: "challenge_item_title_05");
  }

  // 编号 151125
  // 当我让朋友看我手机上的照片，他却滑动屏幕时
  String get challenge_item_title_06 {
    return Intl.message("When I show someone a picture on my phone and they start swiping...", name: "challenge_item_title_06");
  }

  // 编号 151126
  // 当我正准备下班时，老板叫住了我时
  String get challenge_item_title_07 {
    return Intl.message("When I'm about to leave work but the boss called...", name: "challenge_item_title_07");
  }

  // 编号 151127
  // 当我中了五百万时
  String get challenge_item_title_08 {
    return Intl.message("When I won a 5 million dollar lottery...", name: "challenge_item_title_08");
  }

  // 编号 151128
  // 当我收到一张超速罚单时
  String get challenge_item_title_09 {
    return Intl.message("When I got a speeding ticket...", name: "challenge_item_title_09");
  }

  // 编号 151129
  // 当我必须要礼貌地微笑时
  String get challenge_item_title_10 {
    return Intl.message("When I have to smile out of politeness...", name: "challenge_item_title_10");
  }

  // 编号 151130
  // 当我收到喜欢人的消息回复时
  String get challenge_item_title_11 {
    return Intl.message("When I got a reply from my crush...", name: "challenge_item_title_11");
  }

  // 编号 151140
  // 我看起来怎样？
  String get challenge_greeting_01 {
    return Intl.message("How do I look? 😂", name: "challenge_greeting_01");
  }

  // 编号 151141
  // 我真的努力了
  String get challenge_greeting_02 {
    return Intl.message("I tried my best... 😂", name: "challenge_greeting_02");
  }

  // 编号 151142
  // 想要来一些真实的评价
  String get challenge_greeting_03 {
    return Intl.message("Want some honest review... 🤣", name: "challenge_greeting_03");
  }

  // 编号 151143
  // 看起来不错吧？
  String get challenge_greeting_04 {
    return Intl.message("Don't I look great? 🤣", name: "challenge_greeting_04");
  }

  // 编号 151144
  // 你不准备说点什么吗？
  String get challenge_greeting_05 {
    return Intl.message("You're not gonna say anything? 😂", name: "challenge_greeting_05");
  }

  // 编号 151145
  // 我通常不是这样的
  String get challenge_greeting_06 {
    return Intl.message("I don't usually look like this... 😅", name: "challenge_greeting_06");
  }

  // 编号 151146
  // 你感兴趣吗？
  String get challenge_greeting_07 {
    return Intl.message("Got your interest? 😉", name: "challenge_greeting_07");
  }

  // 编号 151147
  // 无法对我转移视线了吧？
  String get challenge_greeting_08 {
    return Intl.message("Can't take your eyes off my face now? 😝", name: "challenge_greeting_08");
  }

  // 编号 151148
  // 1-10分，你给多少？
  String get challenge_greeting_09 {
    return Intl.message("On a scale of 1 to 10, what do you think? 🤣", name: "challenge_greeting_09");
  }

  // 编号 151149
  // 你刚刚是对我笑了吗？
  String get challenge_greeting_10 {
    return Intl.message("Did you just smile at me? 😉", name: "challenge_greeting_10");
  }

  // 编号 151151
  // 挑衅A，让用户感觉是个真实的挑战
  String get challengeInvite01 {
    return Intl.message("Can you do it better?", name: "challengeInvite01");
  }

  // 编号 151152
  // 邀请A，让A一起来玩
  String get challengeInvite02 {
    return Intl.message("Come and join me!", name: "challengeInvite02");
  }

  // 编号 151153
  // 邀请+挑衅A，意指我玩过了，该你了
  String get challengeInvite03 {
    return Intl.message("Now it's your turn!", name: "challengeInvite03");
  }

  // 编号 151154
  // 邀请A，这个好玩，你一定要试试
  String get challengeInvite04 {
    return Intl.message("You gotta try this out!", name: "challengeInvite04");
  }

  // 编号 151155
  // 邀请+挑衅A，表达B期待看到A的版本
  String get challengeInvite05 {
    return Intl.message("Let me see you do it!", name: "challengeInvite05");
  }

  // 编号 151156
  // 邀请+鼓励，告诉A他一定能完爆这个挑战
  String get challengeInvite06 {
    return Intl.message("You will smash this Selfie Challenge!", name: "challengeInvite06");
  }

  // 编号 151157
  // 邀请+鼓励，直面这个自拍挑战吧！(rise to the challenge常用短语)
  String get challengeInvite07 {
    return Intl.message("Rise to the Selfie Challenge!", name: "challengeInvite07");
  }

  // 编号 151160
  // 聊天触发敏感词系统消息-安全-发送方
  String get sendSafeMessageTip {
    return Intl.message("Bringing up money or personal info too early might not be a great idea", name: "sendSafeMessageTip");
  }

  // 编号 151161
  // 聊天触发敏感词系统消息-骚扰-发送方
  String get sendWarningMessageTip {
    return Intl.message("Being polite will always make someone more likeable", name: "sendWarningMessageTip");
  }

  // 编号 151162
  // 聊天敏感词弹窗（安全）-说明文案-说明系统消息出现的原因及建议
  String get reciveSafeTipDialogContent {
    return Intl.message("This is triggered by some sensitive words. Always be cautious and protect your personal information and finances", name: "reciveSafeTipDialogContent");
  }

  // 编号 151163
  // 聊天敏感词弹窗主文案
  String get reciveSafeTipDialogTitle {
    return Intl.message("Beware of Your Information", name: "reciveSafeTipDialogTitle");
  }

  // 编号 151200
  // 用户账号不可用
  String unAvailableUserEditText(userName) {
    return Intl.message("$userName's profile is unavailable now", name: "unAvailableUserEditText", args: [userName]);
  }

  // 编号 151201
  // 男性&女性快捷回复栏 1 文案 1
  String get messageQuickReply1 {
    return Intl.message("Hi there! How are you?", name: "messageQuickReply1");
  }

  // 编号 151202
  // 男性&女性快捷回复栏 1 文案 2
  String get messageQuickReply2 {
    return Intl.message("Hey, what's up? 😉", name: "messageQuickReply2");
  }

  // 编号 151203
  // 男性快捷回复栏 1 文案 3
  String get messageQuickReply3 {
    return Intl.message("Hi, nice to meet you!", name: "messageQuickReply3");
  }

  // 编号 151204
  // 女性快捷回复栏 1 文案 3
  String get messageQuickReply4 {
    return Intl.message("Hi there! 😉", name: "messageQuickReply4");
  }

  // 编号 151205
  // 男/女性快捷回复栏 2
  String get messageQuickReply5 {
    return Intl.message("Having a nice day?", name: "messageQuickReply5");
  }

  // 编号 151206
  // 男/女性快捷回复栏 2
  String get messageQuickReply6 {
    return Intl.message("What’s up? 😊", name: "messageQuickReply6");
  }

  // 编号 151207
  // Welcome消息完善profile按钮
  String get improveProfile {
    return Intl.message("Improve Profile", name: "improveProfile");
  }

  // 编号 151208
  // 聊天调用 iCloud 照片下载进度文案
  String iCloudProgress(progressRate) {
    return Intl.message("iCloud syncing in progress $progressRate", name: "iCloudProgress", args: [progressRate]);
  }

  // 编号 151209
  // 从 iCloud 下载照片失败
  String get iCloudFail {
    return Intl.message("iCloud download failed, \nplease tap to retry", name: "iCloudFail");
  }

  // 编号 151210
  // 从 iCloud 下载照片时无网络连接
  String get networkCheck {
    return Intl.message("Network unavailable, check your connection", name: "networkCheck");
  }

  // 编号 151211
  // HUD 主文案（新注册用户）
  String get flashChatHudTitleNewUser {
    return Intl.message("Someone is online now, \ncheck and talk immediately!", name: "flashChatHudTitleNewUser");
  }

  // 编号 151212
  // HUD 按钮
  String get flashChatHudBtn {
    return Intl.message("Start the Chat", name: "flashChatHudBtn");
  }

  // 编号 151213
  // HUD 主文案（老用户）
  String get flashChatHudTitleOldUser {
    return Intl.message("Someone is online now!\nJoin Flash Chat, play icebreaker game, find new dates!", name: "flashChatHudTitleOldUser");
  }

  // 编号 151214
  // 
  String get flashChatWatingForYouTip {
    return Intl.message("Participant is waiting for you in Flash Chat", name: "flashChatWatingForYouTip");
  }

  // 编号 151215
  // HUD 按钮，加入闪聊会话
  String get flashChatBtnInto {
    return Intl.message("Join Now", name: "flashChatBtnInto");
  }

  // 编号 151216
  // HUD 按钮，拒绝本次闪聊
  String get flashChatBtnReject {
    return Intl.message("Not this Time", name: "flashChatBtnReject");
  }

  // 编号 151217
  // toast 提示文案
  String get flashChat30Toast {
    return Intl.message("30 mins time-out before your next Flash Chat", name: "flashChat30Toast");
  }

  // 编号 151218
  // 闪聊会话详情页聊天状态栏文案
  String get flashChatWait {
    return Intl.message("Waiting for the response from the other participant", name: "flashChatWait");
  }

  // 编号 151219
  // Icebreaker Game 说明文案
  String get flashChatGameTip {
    return Intl.message("Start Flash Chat after two participants have completed the icebreaker game.", name: "flashChatGameTip");
  }

  // 编号 151220
  // 
  String get flashChatGameTitle {
    return Intl.message("Icebreaker Game", name: "flashChatGameTitle");
  }

  // 编号 151221
  // 聊天是双方均未回答问题时，聊天状态栏文案/Icebreaker game 选择 quiz 弹窗副文案
  String get flashChatRejectGame {
    return Intl.message("The chat will start after both participants have completed the game", name: "flashChatRejectGame");
  }

  // 编号 151222
  // Quiz Game 按钮
  String get flashChatQuizGame {
    return Intl.message("Start the Game", name: "flashChatQuizGame");
  }

  // 编号 151223
  // 等待聊天对象加入时，闪聊会话界面撩太你状态栏文案
  String get flashChatWaitingAppBarTip {
    return Intl.message("The other person's preoccupied, plz wait", name: "flashChatWaitingAppBarTip");
  }

  // 编号 151224
  // 主态发出 Quiz 消息标题
  String get flashChatYouAsk {
    return Intl.message("You asked", name: "flashChatYouAsk");
  }

  // 编号 151225
  // 客态发出 Quiz 消息标题
  String flashChatOtherAsk(userName) {
    return Intl.message("$userName asked", name: "flashChatOtherAsk", args: [userName]);
  }

  // 编号 151226
  // 主态发出 Quiz 答案下方提示文案
  String get flashChatYouAnswer {
    return Intl.message("Your answer", name: "flashChatYouAnswer");
  }

  // 编号 151227
  // 主态发出 Quiz 聊天对象答案下方提示文案
  String get flashChatOtherAnswer {
    return Intl.message("The other's answer", name: "flashChatOtherAnswer");
  }

  // 编号 151228
  // 聊天对象未回答 Quiz 气泡文案
  String get flashChatWaitAnswer {
    return Intl.message("Waiting for the answer...", name: "flashChatWaitAnswer");
  }

  // 编号 151229
  // 主态回答 Quiz 气泡按钮
  String get flashChatAnswerQuiz {
    return Intl.message("Answer the quiz", name: "flashChatAnswerQuiz");
  }

  // 编号 151230
  // 回答同一 Quiz 解锁答案提示文案
  String flashChatAnswerTip(userName) {
    return Intl.message("$userName’s answer will be revealed after you answer it", name: "flashChatAnswerTip", args: [userName]);
  }

  // 编号 151231
  // 客态发出 Quiz 答案下方提示文案
  String flashChatOtherAnswerTip(userName) {
    return Intl.message("$userName's answer", name: "flashChatOtherAnswerTip", args: [userName]);
  }

  // 编号 151232
  // 等待聊天对象加入时，闪聊会话界面撩太你状态栏文案
  String get flashChatWaitResponse {
    return Intl.message("Awaiting the other person's response", name: "flashChatWaitResponse");
  }

  // 编号 151233
  // 聊天对象加入闪聊时聊天状态栏文案
  String flashChatOtherJoined(userName) {
    return Intl.message("$userName joined the chat", name: "flashChatOtherJoined", args: [userName]);
  }

  // 编号 151234
  // 闪聊会话剩余时间前半部分文案
  String flashChatRemainingTime1(howMany, remainingTime) {
    return Intl.plural(howMany, one: "$remainingTime hr", other: "$remainingTime hrs", name: 'flashChatRemainingTime1', args: [howMany, remainingTime]);
  }

  // 编号 151235
  // 闪聊会话剩余时间后半部分固定文案
  String get flashChatRemainingTime2 {
    return Intl.message("remaining before the chat expired", name: "flashChatRemainingTime2");
  }

  // 编号 151236
  // 根据加入会话的聊天对象的性别展示定义文案
  String get flashChat5Message {
    return Intl.message("You can see the photo after receiving 5 messages", name: "flashChat5Message");
  }

  // 编号 151237
  // 聊天输入功能解锁提示文案
  String get flashChatStartChatTip {
    return Intl.message("You can start the chat now😉", name: "flashChatStartChatTip");
  }

  // 编号 151238
  // 解锁资料页标题
  String get flashChatUnLockTip {
    return Intl.message("Unlock the profile", name: "flashChatUnLockTip");
  }

  // 编号 151239
  // 
  String get flashChatUnLockTitle {
    return Intl.message("Unlock the profile", name: "flashChatUnLockTitle");
  }

  // 编号 151240
  // 闪聊会话菜单按钮
  String get flashChatEndChat {
    return Intl.message("End the Chat", name: "flashChatEndChat");
  }

  // 编号 151241
  // 结束闪聊会话弹窗文案
  String get flashChatEndChatDialogTitle {
    return Intl.message("Are you sure you want to end the chat?", name: "flashChatEndChatDialogTitle");
  }

  // 编号 151242
  // 结束闪聊会话弹窗按钮
  String get flashChatEndChatDialogBtn1 {
    return Intl.message("End Now", name: "flashChatEndChatDialogBtn1");
  }

  // 编号 151243
  // 结束闪聊会话弹窗按钮
  String get flashChatEndChatDialogBtn2 {
    return Intl.message("I'll Stay", name: "flashChatEndChatDialogBtn2");
  }

  // 编号 151244
  // 闪聊会话自动过期时会话内提示弹窗
  String get flashChatExpiredTip {
    return Intl.message("Flash Chat has expired", name: "flashChatExpiredTip");
  }

  // 编号 151245
  // 聊天对象结束闪聊会话时，收到离开消息提示一方弹窗标题
  String get flashChatEndedTip {
    return Intl.message("Chat Ended", name: "flashChatEndedTip");
  }

  // 编号 151246
  // 聊天未解锁阶段聊天对象结束闪聊会话时，收到离开消息提示一方弹窗文案
  String flashChatJustLeft(userName) {
    return Intl.message("$userName just left Flash Chat!", name: "flashChatJustLeft", args: [userName]);
  }

  // 编号 151247
  // 聊天已解锁阶段聊天对象结束闪聊会话时，收到离开消息提示一方系统消息文案
  String flashChatHasEnded(userName) {
    return Intl.message("$userName has ended the chat", name: "flashChatHasEnded", args: [userName]);
  }

  // 编号 151248
  // 聊天已解锁阶段聊天对象结束闪聊会话时，点击聊天输入框时系统消息文案
  String flashChatHasLeftToast(userName) {
    return Intl.message("$userName has left the Flash Chat, unable to send the message", name: "flashChatHasLeftToast", args: [userName]);
  }

  // 编号 151249
  // GIFs 键盘输入框默认文案
  String get flashChatGIfsSearch {
    return Intl.message("Search via GIPHY", name: "flashChatGIfsSearch");
  }

  // 编号 151250
  // GIFs 搜索无结果文案
  String get flashChatNoData {
    return Intl.message("No Results Found", name: "flashChatNoData");
  }

  // 编号 151251
  // 主动解除保护期后，闪聊会话提示toast
  String get flashChatKeepSearchingToast {
    return Intl.message("Stay online, we'll keep searching for you", name: "flashChatKeepSearchingToast");
  }

  // 编号 151252
  // 向被 ban 聊天对象发出消息收到系统消息提示标题文案
  String flashChatBanUserTitle(userName) {
    return Intl.message("$userName has left WooPlus for some reason", name: "flashChatBanUserTitle", args: [userName]);
  }

  // 编号 151253
  // 向被 ban 聊天对象发出消息收到系统消息提示主文案
  String flashChatBanUserTip(userName) {
    return Intl.message("$userName can't receive your messages anymore.\nFeel free to quit the chat.", name: "flashChatBanUserTip", args: [userName]);
  }

  // 编号 151254
  // 未找到闪聊对象等待超 2 分钟弹窗标题
  String get flashChatOver2minDialogTitle {
    return Intl.message("No response from the other participant", name: "flashChatOver2minDialogTitle");
  }

  // 编号 151255
  // 未找到闪聊对象等待超 2 分钟弹窗文案
  String flashChatOver2minDialogContent(localstartTime) {
    return Intl.message("Try again later or join Flash Chat with unlimited access at $localstartTime", name: "flashChatOver2minDialogContent", args: [localstartTime]);
  }

  // 编号 151256
  // 可接受闪聊会话邀请时闪聊活动入口状态文案
  String get flashChatEntranceSearchTip {
    return Intl.message("Searching Flash Chat for you", name: "flashChatEntranceSearchTip");
  }

  // 编号 151257
  // 设置明晚 9 点再次接受闪聊会话邀请后闪聊活动入口状态文案
  String flashChatEntranceProtect9HoursTip1(localstartTime) {
    return Intl.message("Flash Chat paused until $localstartTime tomorrow", name: "flashChatEntranceProtect9HoursTip1", args: [localstartTime]);
  }

  // 编号 151258
  // 有正在进行闪聊会话时，闪聊活动入口状态文案
  String flashChatEntranceChattingText(userName) {
    return Intl.message("Chatting with $userName now", name: "flashChatEntranceChattingText", args: [userName]);
  }

  // 编号 151259
  // 有正在进行闪聊会话时，闪聊活动入口按钮
  String get flashChatEntranceChattingBtn {
    return Intl.message("Back to Chat", name: "flashChatEntranceChattingBtn");
  }

  // 编号 151260
  // 提示开启 GPS 弹窗标题
  String get flashChatGpsDialogTitle {
    return Intl.message("Enable GPS accese", name: "flashChatGpsDialogTitle");
  }

  // 编号 151261
  // 提示开启 GPS 弹窗文案
  String get flashChatGpsDialogContent {
    return Intl.message("Enable GPS access to fully explore Flash Chat", name: "flashChatGpsDialogContent");
  }

  // 编号 151262
  // 提示开启 GPS 按钮文案
  String get flashChatGpsDialogBtn1 {
    return Intl.message("Turn on GPS permission now", name: "flashChatGpsDialogBtn1");
  }

  // 编号 151263
  // 提示开启 GPS 按钮文案
  String get flashChatGpsDialogBtn2 {
    return Intl.message("No Flash Chat for now", name: "flashChatGpsDialogBtn2");
  }

  // 编号 151264
  // 闪聊首次结束（主动结束&会话过期）时，气泡提示
  String get flashChatHistoryFirstTip {
    return Intl.message("View all your Flash Chat history here", name: "flashChatHistoryFirstTip");
  }

  // 编号 151265
  // 闪聊入口菜单按钮
  String get flashChatEntranceStopMatchBtn {
    return Intl.message("Stop searching Flash Chat for me", name: "flashChatEntranceStopMatchBtn");
  }

  // 编号 151266
  // 闪聊保护期设置弹窗标题
  String get flashChatProtectDialogTitle {
    return Intl.message("Stop searching Flash Chat for a while?", name: "flashChatProtectDialogTitle");
  }

  // 编号 151267
  // 闪聊保护期设置弹窗文案
  String flashChatProtectDialogContent1(localstartTime, localendTime) {
    return Intl.message("From $localstartTime to $localendTime, daily, unlimited Flash Chat access available with thousands of online users. So come and join us!", name: "flashChatProtectDialogContent1", args: [localstartTime, localendTime]);
  }

  // 编号 151268
  // 闪聊保护期设置按钮一
  String flashChatProtectDialogBtn1(localstartTime) {
    return Intl.message("Stop until $localstartTime", name: "flashChatProtectDialogBtn1", args: [localstartTime]);
  }

  // 编号 151269
  // 闪聊保护期设置按钮二
  String get flashChatProtectDialogBtn2 {
    return Intl.message("Stop for a week", name: "flashChatProtectDialogBtn2");
  }

  // 编号 151270
  // 闪聊历史记录页标题
  String get flashChatHistoryTitle {
    return Intl.message("Flash Chat History", name: "flashChatHistoryTitle");
  }

  // 编号 151271
  // 闪聊历史记录发送消息按钮
  String get flashChatHistoryChatBtn {
    return Intl.message("Chat", name: "flashChatHistoryChatBtn");
  }

  // 编号 151272
  // 闪聊历史记录查看聊天历史按钮
  String get flashChatHistoryViewBtn {
    return Intl.message("View History", name: "flashChatHistoryViewBtn");
  }

  // 编号 151273
  // 闪聊历史记录页底部说明文案
  String get flashChatHistoryDescTip {
    return Intl.message("Only 7 days of Flash Chat history will be displayed", name: "flashChatHistoryDescTip");
  }

  // 编号 151274
  // 闪聊历史记录会话结束时间
  String flashChatHistoryConversationEnd(chatendedDate) {
    return Intl.message("Ended on $chatendedDate", name: "flashChatHistoryConversationEnd", args: [chatendedDate]);
  }

  // 编号 151275
  // 无闪聊历史记录空状态文案
  String get flashChatHistoryNoneTip1 {
    return Intl.message("Your Flash Chat history is empty", name: "flashChatHistoryNoneTip1");
  }

  // 编号 151276
  // 当前设备无闪聊历史记录内容文案
  String get flashChatHistoryNoneTip2 {
    return Intl.message("No existing Flash Chat history in the current device", name: "flashChatHistoryNoneTip2");
  }

  // 编号 151277
  // 网络状况差时闪聊历史记录空状态文案
  String get flashChatHistoryNoneTip3 {
    return Intl.message("Failed to view Flash Chat history, please check network", name: "flashChatHistoryNoneTip3");
  }

  // 编号 151278
  // 解锁资料购买 VIP 页面主标题
  String get flashChatProfileUnlockTip {
    return Intl.message("Unlock Flash Chat Partner’s Profile", name: "flashChatProfileUnlockTip");
  }

  // 编号 151279
  // 解锁资料购买 VIP 页面描述文案
  String flashChatProfileGetMoreTip(gender, ) {
    return Intl.gender(gender, male: "Get to know more about him", female: "Get to know more about her", other: "Get to know more about them", name: 'flashChatProfileGetMoreTip', args: [gender, ]);
  }

  // 编号 151280
  // 用户在Profile未购买，返回闪聊时提示每天活动期间有无限次机会
  String get flashChatProfileBackTip {
    return Intl.message("You still get the chance", name: "flashChatProfileBackTip");
  }

  // 编号 151281
  // 未解锁头像时闪聊会话界面聊天状态栏文案1
  String flashChatProfileNotUnlockClickTip(gender, ) {
    return Intl.gender(gender, male: "Unlock the photo by receiving messages from him", female: "Unlock the photo by receiving messages from her", other: "Unlock the photo by receiving messages from them", name: 'flashChatProfileNotUnlockClickTip', args: [gender, ]);
  }

  // 编号 151282
  // 解锁资料按钮 商品原价
  String flashChatProfileUnlockBtn(originalPrice) {
    return Intl.message("$originalPrice per month", name: "flashChatProfileUnlockBtn", args: [originalPrice]);
  }

  // 编号 151283
  // 当前正在进行的话题
  String flashChatCurrentTopic(currentTopic) {
    return Intl.message("$currentTopic", name: "flashChatCurrentTopic", args: [currentTopic]);
  }

  // 编号 151284
  // 点击回答对方发出的问题弹窗文案
  String get flashChatSelectAnswer {
    return Intl.message("Select your answer", name: "flashChatSelectAnswer");
  }

  // 编号 151285
  // 
  String get flashChatClickTryAgain {
    return Intl.message("Tap to try again", name: "flashChatClickTryAgain");
  }

  // 编号 151286
  // 消息入口名称
  String get GreetingMessage {
    return Intl.message("Greetings", name: "GreetingMessage");
  }

  // 编号 151287
  // 无打招呼消息时入口文案
  String get GreetingMessageNoDataLastMessage {
    return Intl.message("View Greetings here", name: "GreetingMessageNoDataLastMessage");
  }

  // 编号 151288
  // 收到 SayHi 消息展示文案
  String GreetingMessageSayHiContent(userName) {
    return Intl.message("Hi $userName!", name: "GreetingMessageSayHiContent", args: [userName]);
  }

  // 编号 151289
  // 消息列表底部会话消息保留 7 日提示文案
  String get GreetingMessage7DayTip {
    return Intl.message("Only 7 days of history will be displayed", name: "GreetingMessage7DayTip");
  }

  // 编号 151290
  // 无打招呼消息时空状态文案
  String get GreetingMessageNoDataTip {
    return Intl.message("View your received Greetings here", name: "GreetingMessageNoDataTip");
  }

  // 编号 151291
  // 有打招呼消息时，消息列表页气泡内文案
  String get GreetingMessageHelpTip {
    return Intl.message("This page contains all the Greetings you’ve received", name: "GreetingMessageHelpTip");
  }

  // 编号 151292
  // 设置明晚 9 点再次接受闪聊会话邀请后，时间进入第二日时闪聊活动入口状态文案
  String flashChatEntranceProtect9HoursTip2(localstartTime) {
    return Intl.message("Flash Chat paused until $localstartTime", name: "flashChatEntranceProtect9HoursTip2", args: [localstartTime]);
  }

  // 编号 151293
  // 未解锁头像时闪聊会话界面聊天状态栏文案2
  String flashChatProfileNotUnlockAppBarTip(gender, ) {
    return Intl.gender(gender, male: "Keep chatting to unlock his photo", female: "Keep chatting to unlock her photo", other: "Keep chatting to unlock the photo", name: 'flashChatProfileNotUnlockAppBarTip', args: [gender, ]);
  }

  // 编号 151294
  // 闪聊会话正式开始后会话过期倒计时
  String flashChatExpiredRemainingTime(howMany, remainingTime) {
    return Intl.plural(howMany, one: "$remainingTime min", other: "$remainingTime mins", name: 'flashChatExpiredRemainingTime', args: [howMany, remainingTime]);
  }

  // 编号 151295
  // 闪聊保护期设置弹窗文案
  String get flashChatProtectDialogContent2 {
    return Intl.message("You can still rejoin Flash Chat at any time", name: "flashChatProtectDialogContent2");
  }

  // 编号 151296
  // 购买 VIP 解锁无限次闪聊机会说明主文案
  String get flashChatPurchaseVipDescTitle {
    return Intl.message("Flash Chat with unlimited access", name: "flashChatPurchaseVipDescTitle");
  }

  // 编号 151297
  // 购买 VIP 解锁无限次闪聊机会说明副文案
  String get flashChatPurchaseVipDescSubtitle {
    return Intl.message("Start the chat anytime you want", name: "flashChatPurchaseVipDescSubtitle");
  }

  // 编号 151298
  // 解锁资料页文案
  String get flashChatProfileUnlock {
    return Intl.message("Become a VIP to see the details right now", name: "flashChatProfileUnlock");
  }

  // 编号 151299
  // 未购买 VIP，闪聊会话界面系统消息提示文案
  String get flashChatUsedUpContent {
    return Intl.message("No more Flash Chat access for now. Become a VIP to enjoy Flash Chat anytime.", name: "flashChatUsedUpContent");
  }

  // 编号 151300
  // 未购买 VIP，闪聊会话界面系统消息提示按钮
  String get flashChatUsedUpBtn {
    return Intl.message("Become a VIP", name: "flashChatUsedUpBtn");
  }

  // 编号 151301
  // 未购买 VIP，点击闪聊会话界面输入框系统消息提示文案
  String get flashChatUsedUpTip {
    return Intl.message("No more Flash Chat access for now", name: "flashChatUsedUpTip");
  }

  // 编号 151302
  // 聊天对象离开闪聊会话，仍在闪聊会话中的一方点击返回弹窗文案
  String flashChatEndChatBackDialogTitle(userName) {
    return Intl.message("$userName has left, Tapping back will end the current chat", name: "flashChatEndChatBackDialogTitle", args: [userName]);
  }

  // 编号 151303
  // 在假闪聊会话界面查找用户时点击返回回到聊天列表 toast 提示文案
  String get flashChatBackSearching20s {
    return Intl.message("Searching Flash Chat for you", name: "flashChatBackSearching20s");
  }

  // 编号 151304
  // App 置于后台时被拉取到的本地推送文案
  String get flashChatInviteJoin {
    return Intl.message("An online user is waiting for you in Flash Chat, time is ticking, tap to join the chat", name: "flashChatInviteJoin");
  }

  // 编号 151305
  // 
  String get flashChatTitle {
    return Intl.message("Flash Chat", name: "flashChatTitle");
  }

  // 编号 151306
  // 闪聊保护期设置按钮一
  String get flashChatTomorrow {
    return Intl.message("tomorrow", name: "flashChatTomorrow");
  }

  // 编号 151307
  // 
  String flashChatJoinTip(userName) {
    return Intl.message("$userName joined the chat, go start the icebreaker game and chat now 😉", name: "flashChatJoinTip", args: [userName]);
  }

  // 编号 151309
  // 
  String get flashChatPopTitle {
    return Intl.message("Searching for online members", name: "flashChatPopTitle");
  }

  // 编号 151310
  // 
  String get flashChatPopContent {
    return Intl.message("Break the ice and start instant chat with online members", name: "flashChatPopContent");
  }

  // 编号 151311
  // 
  String get flashChatPopStart {
    return Intl.message("Start", name: "flashChatPopStart");
  }

  // 编号 151312
  // 已有会话用户再次 Match 后，在会话详情页看到的系统提示文案
  String Chat_MatchAgainTips_ItemText(userName) {
    return Intl.message("You & $userName liked each other and matched, WoW! 🥰", name: "Chat_MatchAgainTips_ItemText", args: [userName]);
  }

  // 编号 151313
  // 已有会话用户再次 Match 后，Match 弹框中的快捷回复文案
  String get Chat_MatchAgainQuickSend1_TabText {
    return Intl.message("Having a nice day? 😊", name: "Chat_MatchAgainQuickSend1_TabText");
  }

  // 编号 151314
  // 已有会话用户再次 Match 后，Match 弹框中的快捷回复文案
  String get Chat_MatchAgainQuickSend2_TabText {
    return Intl.message("What are the odds!! 😄", name: "Chat_MatchAgainQuickSend2_TabText");
  }

  // 编号 151315
  // 已有会话用户再次 Match 后，Match 弹框中的快捷回复文案
  String get Chat_MatchAgainQuickSend3_TabText {
    return Intl.message("It's been a while 😉", name: "Chat_MatchAgainQuickSend3_TabText");
  }

  // 编号 151316
  // 已有会话用户再次 Match 后，Match 弹框中的快捷回复文案
  String get Chat_MatchAgainQuickSend4_TabText {
    return Intl.message("What have you been up to? 😌", name: "Chat_MatchAgainQuickSend4_TabText");
  }

  // 编号 151317
  // 已有会话用户再次 Match 后，Match 弹框中的快捷回复文案
  String get Chat_MatchAgainQuickSend5_TabText {
    return Intl.message("How have you been? 😁", name: "Chat_MatchAgainQuickSend5_TabText");
  }

  // 编号 151318
  // 删除 Greeting Messages 时弹出 Bottom Sheet 标题文案
  String get Chat_DeleteGreetingMessagesTitle_DialogText1 {
    return Intl.message("Delete Greeting", name: "Chat_DeleteGreetingMessagesTitle_DialogText1");
  }

  // 编号 151319
  // 删除 Greeting Messages 时弹出 Bottom Sheet 描述文案
  String Chat_DeleteGreetingMessagesDescription_DialogText2(userName) {
    return Intl.message("All greetings from $userName will be permanently deleted", name: "Chat_DeleteGreetingMessagesDescription_DialogText2", args: [userName]);
  }

  // 编号 151320
  // 删除聊天会话时弹出 Bottom Sheet 标题文案
  String get Chat_DeleteChatHistoryTitle_DialogText1 {
    return Intl.message("Delete Chat History", name: "Chat_DeleteChatHistoryTitle_DialogText1");
  }

  // 编号 151321
  // 删除 VIP 会话聊天会话时弹出 Bottom Sheet 描述文案
  String Chat_DeleteChatHistoryDescription1_DialogText2(userName) {
    return Intl.message("Chat history with $userName will be permanently deleted", name: "Chat_DeleteChatHistoryDescription1_DialogText2", args: [userName]);
  }

  // 编号 151322
  // 删除 Match 会话聊天会话时弹出 Bottom Sheet 描述文案
  String Chat_DeleteChatHistoryDescription2_DialogText2(userName) {
    return Intl.message("Chat history with $userName will be permanently deleted and you will unmatch each other", name: "Chat_DeleteChatHistoryDescription2_DialogText2", args: [userName]);
  }

  // 编号 160001
  // Me-Perference的选项
  String get preferences {
    return Intl.message("Preferences", name: "preferences");
  }

  // 编号 160002
  // Me-Help&Feedback的选项
  String get helpAndFeedback {
    return Intl.message("Help & Feedback", name: "helpAndFeedback");
  }

  // 编号 160003
  // Me-Settings的选项
  String get settings {
    return Intl.message("Settings", name: "settings");
  }

  // 编号 160004
  // Me-Preferences中的SHOW ME标题
  String get titleOfShowMe {
    return Intl.message("SHOW ME", name: "titleOfShowMe");
  }

  // 编号 160005
  // Me-Preferences中的SHOW ME-仅展示women的选项
  String get womenOfShowMe {
    return Intl.message("Only women", name: "womenOfShowMe");
  }

  // 编号 160006
  // Me-Preferences中的SHOW ME-仅展示时men的选项
  String get menOfShowMe {
    return Intl.message("Only men", name: "menOfShowMe");
  }

  // 编号 160007
  // Me-Preferences中的SHOW ME-男女都展示的选项
  String get allOfShowMe {
    return Intl.message("Women & Men", name: "allOfShowMe");
  }

  // 编号 160008
  // Me-Preferences中的Age Range标题
  String get ageRange {
    return Intl.message("AGE RANGE", name: "ageRange");
  }

  // 编号 160009
  // Me-Feedback 页面的标题
  String get titleOfFeedback {
    return Intl.message("Feedback", name: "titleOfFeedback");
  }

  // 编号 160010
  // Me-Feedback 页面的默认文案
  String get hintOfFeedback {
    return Intl.message("Your feedback is very important to us. We will read it carefully and reply as much as we can.", name: "hintOfFeedback");
  }

  // 编号 160011
  // Me - Settings - Block List 选项
  String get blockList {
    return Intl.message("Block List", name: "blockList");
  }

  // 编号 160012
  // Me - Settings - About 选项
  String get about {
    return Intl.message("About", name: "about");
  }

  // 编号 160013
  // Me - Settings - Restore Purchase 选项
  String get restore {
    return Intl.message("Restore Purchase", name: "restore");
  }

  // 编号 160014
  // Me - Settings - Log out 选项
  String get logOutOfSetting {
    return Intl.message("Log Out", name: "logOutOfSetting");
  }

  // 编号 160015
  // Block List 中内容为空是的插画文案
  String get emptyBlockList {
    return Intl.message("Block list is empty", name: "emptyBlockList");
  }

  // 编号 160016
  // Me- Personal Details-预览profile
  String get preview {
    return Intl.message("Preview", name: "preview");
  }

  // 编号 160017
  // Me- Personal Details-用户照片副标题
  String get subtitleOfPhoto {
    return Intl.message("PHOTOS", name: "subtitleOfPhoto");
  }

  // 编号 160018
  // Me- Personal Details-位置信息副标题
  String get subtitleOfLocation {
    return Intl.message("LOCATION", name: "subtitleOfLocation");
  }

  // 编号 160019
  // Me- Personal Details-ABOUT ME副标题
  String get subtitleOfAboutMe {
    return Intl.message("ABOUT ME", name: "subtitleOfAboutMe");
  }

  // 编号 160020
  // Q&A问题1-标题
  String get titleOfQ1 {
    return Intl.message("MORE STORIES ABOUT ME", name: "titleOfQ1");
  }

  // 编号 160021
  // Q&A问题1-提示答案-针对所有人
  String answerOfQ1(gender, ) {
    return Intl.gender(gender, male: null, female: null, other: "e.g., my most embarrassing moment, my life credo, my ideal life or any other things...", name: 'answerOfQ1', args: [gender, ]);
  }

  // 编号 160023
  // Q&A问题2-标题
  String get titleOfQ2 {
    return Intl.message("ON MY FIRST DATE, I'D LIKE TO", name: "titleOfQ2");
  }

  // 编号 160024
  // Q&A问题9-提示答案-针对男*女
  String answerOfQ2(gender, ) {
    return Intl.gender(gender, male: "e.g., go to a quiet bar, and bond over our favorite drinks :)", female: "e.g., cook, and let's hope I'm good at it.", other: "e.g., go to a quiet bar, and bond over our favorite drinks :)", name: 'answerOfQ2', args: [gender, ]);
  }

  // 编号 160026
  // Q&A问题4-标题
  String get titleOfQ4 {
    return Intl.message("THINGS I WILL NEVER DO", name: "titleOfQ4");
  }

  // 编号 160027
  // Q&A问题4-提示答案-针对所有人
  String answerOfQ4(gender, ) {
    return Intl.gender(gender, male: null, female: null, other: "e.g., sky-diving, eat insects, swim with a shark...Eeeek!", name: 'answerOfQ4', args: [gender, ]);
  }

  // 编号 160029
  // Q&A问题5-标题
  String get titleOfQ5 {
    return Intl.message("I'D LOVE IF MY PARTNER", name: "titleOfQ5");
  }

  // 编号 160030
  // Q&A问题9-提示答案-针对男*女
  String answerOfQ5(gender, ) {
    return Intl.gender(gender, male: "e.g., goes on an adventure with me, like traveling to the South Pole.", female: "e.g., cuddles me and says \"I love you\" to me every day.", other: "e.g., goes on an adventure with me, like traveling to the South Pole.", name: 'answerOfQ5', args: [gender, ]);
  }

  // 编号 160032
  // Q&A问题6-标题
  String get titleOfQ6 {
    return Intl.message("I'M NOT OK IF MY PARTNER", name: "titleOfQ6");
  }

  // 编号 160033
  // Q&A问题9-提示答案-针对男*女
  String answerOfQ6(gender, ) {
    return Intl.gender(gender, male: "e.g., abusing alcohol. It's the dealbreaker for me.", female: "e.g., cheating. Zero tolerance!", other: "e.g., abusing alcohol. It's the dealbreaker for me.", name: 'answerOfQ6', args: [gender, ]);
  }

  // 编号 160035
  // Q&A问题7-标题
  String get titleOfQ7 {
    return Intl.message("MY MUST-DO THING IN THE NEAR FUTURE", name: "titleOfQ7");
  }

  // 编号 160036
  // Q&A问题9-提示答案-针对男*女
  String answerOfQ7(gender, ) {
    return Intl.gender(gender, male: "e.g., start my own business in three months. Fingers crossed!", female: "e.g., watch my favorite show on broadway. Excited!", other: "e.g., start my own business in three months. Fingers crossed!", name: 'answerOfQ7', args: [gender, ]);
  }

  // 编号 160038
  // Q&A问题8-标题
  String get titleOfQ8 {
    return Intl.message("THESE DAYS I'M OBSESSED WITH", name: "titleOfQ8");
  }

  // 编号 160039
  // Q&A问题8-提示答案-针对所有人
  String answerOfQ8(gender, ) {
    return Intl.gender(gender, male: null, female: null, other: "e.g., reading Harry Potter. Why didn't I start earlier!?", name: 'answerOfQ8', args: [gender, ]);
  }

  // 编号 160041
  // Q&A问题9-标题
  String get titleOfQ9 {
    return Intl.message("OLD PERSON THINGS I DO", name: "titleOfQ9");
  }

  // 编号 160042
  // Q&A问题9-提示答案-针对男*女
  String answerOfQ9(gender, ) {
    return Intl.gender(gender, male: "e.g., say things like, \"bet it's gonna rain\" when my knees get stiff. ", female: "e.g., sit on my couch and knit a sweater...for my cat...", other: "e.g., say things like, \"bet it's gonna rain\" when my knees get stiff.", name: 'answerOfQ9', args: [gender, ]);
  }

  // 编号 160043
  // VIP功能标题1-Send Unlimited Messages
  String get titleOfVIPUnlimitedMessage {
    return Intl.message("Send Unlimited Messages", name: "titleOfVIPUnlimitedMessage");
  }

  // 编号 160044
  // VIP功能正文1-Send Unlimited Messages
  String get textOfVIPUnlimitedMessage {
    return Intl.message("Message anyone and see read receipts", name: "textOfVIPUnlimitedMessage");
  }

  // 编号 160045
  // VIP功能标题2-2X Profiles
  String get titleOfVIPProfiles {
    return Intl.message("Double Profiles in For You", name: "titleOfVIPProfiles");
  }

  // 编号 160046
  // VIP功能正文2-2X Profiles
  String get textOfVIPProfiles {
    return Intl.message("Have more potential matches each day", name: "textOfVIPProfiles");
  }

  // 编号 160047
  // VIP功能标题3-See Who Liked You
  String get titleOfVIPWhoLikeYou {
    return Intl.message("See Who Liked You", name: "titleOfVIPWhoLikeYou");
  }

  // 编号 160048
  // VIP功能正文3-See Who Liked You
  String get textOfVIPWhoLikeYou {
    return Intl.message("Cut to the chase and start chatting", name: "textOfVIPWhoLikeYou");
  }

  // 编号 160049
  // VIP功能标题4-RestartYourExpiredMatch
  String get titleOfVIPRestartMatch {
    return Intl.message("Restart Your Expired Match", name: "titleOfVIPRestartMatch");
  }

  // 编号 160050
  // VIP功能正文4-RestartYourExpiredMatch
  String get textOfVIPRestartMatch {
    return Intl.message("Keep your romance alive", name: "textOfVIPRestartMatch");
  }

  // 编号 160051
  // Me 中购买 VIP 的入口文案
  String get getVIP {
    return Intl.message("Get VIP", name: "getVIP");
  }

  // 编号 160052
  // 购买页的购买入口 Join Now
  String get joinNowOfPurchase {
    return Intl.message("Join Now", name: "joinNowOfPurchase");
  }

  // 编号 160053
  // VIP功能标题5-Fine Tune Your Search
  String get titleOfVIPSearch {
    return Intl.message("Fine Tune Your Search", name: "titleOfVIPSearch");
  }

  // 编号 160054
  // VIP功能正文6-Fine Tune Your Search
  String get textOfVIPSearch {
    return Intl.message("Get all filters and view more people", name: "textOfVIPSearch");
  }

  // 编号 160055
  // 消灭倒计时的父标题
  String get matchCountdownDialogTitle {
    return Intl.message("Eliminate Match Countdown", name: "matchCountdownDialogTitle");
  }

  // 编号 160056
  // 消灭倒计时的子标题描述
  String get matchCountdownDialogMsg {
    return Intl.message("Keep all your matches", name: "matchCountdownDialogMsg");
  }

  // 编号 160057
  // 保存profile失败
  String get profileSaveFail {
    return Intl.message("Profile saved unsuccessfully", name: "profileSaveFail");
  }

  // 编号 160058
  // 你需要先上传主头（主头被删除，用户却点击非主头上传）
  String get needMainPhotoFirst {
    return Intl.message("You need to upload a main photo first", name: "needMainPhotoFirst");
  }

  // 编号 160059
  // Me- Personal Details副标题
  String get personalDetailTitle {
    return Intl.message("Personal Details", name: "personalDetailTitle");
  }

  // 编号 160060
  // 用户已经被Block
  String userBeenBlocked(userName) {
    return Intl.message("You blocked $userName", name: "userBeenBlocked", args: [userName]);
  }

  // 编号 160061
  // 购买页的Terms 文案标题
  String get titleOfTermsPurchase {
    return Intl.message("Subscription Terms", name: "titleOfTermsPurchase");
  }

  // 编号 160062
  // iOS购买页的Terms 文案正文
  String get textOfTermsPurchase {
    return Intl.message("Payment will be charged to your iTunes account. Subscriptions will automatically renew unless auto-renew is turned off at least 24 hours before the end of the current period. You can manage or turn off auto-renew in your iTunes account settings any time after purchase.\nFor more details, please visit our *Terms* and *Privacy*.", name: "textOfTermsPurchase");
  }

  // 编号 160063
  // 购买页中的标签-推荐
  String get recommendTagOfPurchase {
    return Intl.message("RECOMMENDATION", name: "recommendTagOfPurchase");
  }

  // 编号 160064
  // 购买页中的标签-最划算
  String get bestTagOfPurchase {
    return Intl.message("Best value", name: "bestTagOfPurchase");
  }

  // 编号 160065
  // 购买页中的标签-找到love最合适的时长
  String get loveTagOfPurchase {
    return Intl.message("The optimal period to find love", name: "loveTagOfPurchase");
  }

  // 编号 160067
  // 点击头像弹出的菜单-拍一张新的照片
  String get takeANewPhoto {
    return Intl.message("Take a New Photo", name: "takeANewPhoto");
  }

  // 编号 160068
  // 点击头像弹出的菜单-从Photos中挑选一张新的
  String get chooseANewPhoto {
    return Intl.message("Choose a New One from Photos", name: "chooseANewPhoto");
  }

  // 编号 160069
  // 点击添加按钮弹出的菜单-拍一张照片
  String get takeAPhoto {
    return Intl.message("Take a Photo", name: "takeAPhoto");
  }

  // 编号 160070
  // 点击添加按钮弹出的菜单-从Photos中选一张
  String get chooseFromPhoto {
    return Intl.message("Choose from Photos", name: "chooseFromPhoto");
  }

  // 编号 160071
  // 删除非主头的Dialog文案
  String get deletePhoto {
    return Intl.message("Delete photo?", name: "deletePhoto");
  }

  // 编号 160072
  // Settings-About页标题
  String get titleOfSettingAbout {
    return Intl.message("About", name: "titleOfSettingAbout");
  }

  // 编号 160073
  // Settings-Terms按钮
  String get termsOfSetting {
    return Intl.message("Terms", name: "termsOfSetting");
  }

  // 编号 160074
  // Settings-Privacy按钮
  String get privacyOfSetting {
    return Intl.message("Privacy", name: "privacyOfSetting");
  }

  // 编号 160075
  // Settings-版本文案
  String version(versionname) {
    return Intl.message("Version $versionname", name: "version", args: [versionname]);
  }

  // 编号 160076
  // Me- Personal Details-回答问题
  String get answerOfDetails {
    return Intl.message("Answer", name: "answerOfDetails");
  }

  // 编号 160077
  // Me- Personal Details-修改问题
  String get editOfDetails {
    return Intl.message("Edit", name: "editOfDetails");
  }

  // 编号 160078
  // Settings - Logout 的Dialog文案提示
  String get confirmOfLogOut {
    return Intl.message("Stay to connect with\nmore people?", name: "confirmOfLogOut");
  }

  // 编号 160079
  // Log Out Button
  String get logOut {
    return Intl.message("Log Out", name: "logOut");
  }

  // 编号 160080
  // Me-Profile编辑-编辑了Q&A后不保存即返回的提示
  String get confirmSave {
    return Intl.message("Sure to leave?", name: "confirmSave");
  }

  // 编号 160081
  // 保存自己编辑的内容
  String get save {
    return Intl.message("Save", name: "save");
  }

  // 编号 160082
  // VIP购买成功的通知页-标题
  String get restoreSuccessTitle {
    return Intl.message("Congratulations!", name: "restoreSuccessTitle");
  }

  // 编号 160083
  // VIP购买成功的通知页-正文
  String get restoreSuccessText {
    return Intl.message("Welcome to WooPlus VIP Club. Enjoy all the exclusive perks of VIP NOW!", name: "restoreSuccessText");
  }

  // 编号 160084
  // 没有购买的订单可以restore
  String get restoreNoOrder {
    return Intl.message("There is no purchase can be restored", name: "restoreNoOrder");
  }

  // 编号 160085
  // Restore 时无法连接到苹果服务器
  String get restoreError {
    return Intl.message("Cannot connect to the App Store", name: "restoreError");
  }

  // 编号 160086
  // Feedback成功发送
  String get toastOfFeedbackSent {
    return Intl.message("Feedback sent", name: "toastOfFeedbackSent");
  }

  // 编号 160087
  // 选择12个月时的文案
  String get lowestPrice {
    return Intl.message("The lowest price per month", name: "lowestPrice");
  }

  // 编号 160088
  // 当兴趣选择超过5个时的toast提示。
  String get tipOfOverflowInterests {
    return Intl.message("Choose up to 5 of your interests", name: "tipOfOverflowInterests");
  }

  // 编号 160089
  // 月份，依次是单数、复数
  String monthOfPurchase(howMany) {
    return Intl.plural(howMany, one: "month", other: "months", name: 'monthOfPurchase', args: [howMany]);
  }

  // 编号 160090
  // 简写的月
  String get averageMonthOfPurchase {
    return Intl.message("mo", name: "averageMonthOfPurchase");
  }

  // 编号 160091
  // 添加我的兴趣
  String get addInterest {
    return Intl.message("+ Add My Interest", name: "addInterest");
  }

  // 编号 160093
  // 上传时提醒用户无法识别头像
  String get tipOfUnableRecognizeFaceWhenUpload {
    return Intl.message("Unable to recognize your face", name: "tipOfUnableRecognizeFaceWhenUpload");
  }

  // 编号 160094
  // About内容被删除后的dialog Title
  String get aboutDeletedDialogTitle {
    return Intl.message("Inappropriate content in \"ABOUT ME\" removed", name: "aboutDeletedDialogTitle");
  }

  // 编号 160095
  // About内容被删除后的dialog 正文
  String get aboutDeleteDialogMsg {
    return Intl.message("Obscene, offensive content and other social media account information are not allowed", name: "aboutDeleteDialogMsg");
  }

  // 编号 160096
  // 主头被删除后在重新上传页面上的提示文案
  String get mainPhotoDeleteTip {
    return Intl.message("To continue, please reupload a photo with your face shown clearly", name: "mainPhotoDeleteTip");
  }

  // 编号 160097
  // 主头删除后在profile照片上的文案
  String get removed {
    return Intl.message("Removed", name: "removed");
  }

  // 编号 160098
  // 非主头照片被删除后的提示标题
  String get profileOtherPhotoDeleteDialogTitle {
    return Intl.message("Inappropriate photo removed", name: "profileOtherPhotoDeleteDialogTitle");
  }

  // 编号 160099
  // 非主头照片被删除后的提示正文
  String get profileOtherPhotoDeleteDialogMsg {
    return Intl.message("Photo that is obscene, offensive or contains other social media account information is not allowed", name: "profileOtherPhotoDeleteDialogMsg");
  }

  // 编号 160100
  // 购买失败后的弹窗标题
  String get purchaseVipCancelledWithoutReasonTitle {
    return Intl.message("Payment not completed, continue to purchase?", name: "purchaseVipCancelledWithoutReasonTitle");
  }

  // 编号 160101
  // 购买失败后的弹窗正文
  String get purchaseVipCancelledWithoutReasonDesc {
    return Intl.message("Only one step away from messaging anyone you like", name: "purchaseVipCancelledWithoutReasonDesc");
  }

  // 编号 160102
  // 购买失败后再次取消的标题
  String get purchaseVipCancelledWithReasonTitle {
    return Intl.message("Could you tell us why you don't want to purchase VIP?", name: "purchaseVipCancelledWithReasonTitle");
  }

  // 编号 160103
  // 购买失败后再次取消的正文
  String get purchaseVipCancelledWithReasonDesc {
    return Intl.message("We will optimize our product based on your feedback", name: "purchaseVipCancelledWithReasonDesc");
  }

  // 编号 160104
  // 购买失败后再次取消选项1-太贵
  String get purchaseVipCancelledReason0 {
    return Intl.message("It costs too much", name: "purchaseVipCancelledReason0");
  }

  // 编号 160105
  // 购买失败后再次取消选项2-希望买之前试用
  String get purchaseVipCancelledReason1 {
    return Intl.message("I'd like a free trial first", name: "purchaseVipCancelledReason1");
  }

  // 编号 160106
  // 购买失败后再次取消选项3-特性不值得购买
  String get purchaseVipCancelledReason2 {
    return Intl.message("Features are not worth paying for", name: "purchaseVipCancelledReason2");
  }

  // 编号 160107
  // 提交
  String get submit {
    return Intl.message("Submit", name: "submit");
  }

  // 编号 160108
  // 金币余额
  String get coinBalance {
    return Intl.message("Coins Balance", name: "coinBalance");
  }

  // 编号 160109
  // 购买金币充值
  String get buyCoinTitle {
    return Intl.message("TOP UP", name: "buyCoinTitle");
  }

  // 编号 160110
  // 节省了多少
  String get coinSave {
    return Intl.message("SAVE", name: "coinSave");
  }

  // 编号 160111
  // 上传照片错误时的提醒
  String get uploadPhotoFail {
    return Intl.message("Photo uploading unsuccessful, please try again", name: "uploadPhotoFail");
  }

  // 编号 160112
  // 立即购买
  String get buyNow {
    return Intl.message("Continue", name: "buyNow");
  }

  // 编号 160113
  // 你有一个正在验证的购买订单，请稍等或者反馈给我们
  String get waitVerified {
    return Intl.message("Your purchase is being verified, please wait a moment or send us a feedback", name: "waitVerified");
  }

  // 编号 160114
  // 正在验证中
  String verifying(countDown) {
    return Intl.message("Verifying ($countDown)", name: "verifying", args: [countDown]);
  }

  // 编号 160115
  // 你需要上传主头才能再ForYou里面看到更多的profile
  String get needMainPhotoInProfile {
    return Intl.message("You need to re-upload your photo to see more profiles in For You", name: "needMainPhotoInProfile");
  }

  // 编号 160116
  // 因为网络原因验证失败。
  String get verificationFailedNet {
    return Intl.message("Verification unsuccessful due to possible network problem", name: "verificationFailedNet");
  }

  // 编号 160117
  // 重试(购买）/高级搜索中保存信息失败弹窗按钮文案1
  String get retry {
    return Intl.message("Retry", name: "retry");
  }

  // 编号 160118
  // 点击查看更多的内容。
  String get checkForMore {
    return Intl.message("Check here for more details", name: "checkForMore");
  }

  // 编号 160119
  // 重新上传
  String get reUpload {
    return Intl.message("Re-upload", name: "reUpload");
  }

  // 编号 160120
  // 订阅商品标题
  String get wooPlusVipTitle {
    return Intl.message("WooPlus VIP", name: "wooPlusVipTitle");
  }

  // 编号 160121
  // 折扣
  String get off {
    return Intl.message("OFF", name: "off");
  }

  // 编号 160122
  // 购买商品时，付款成功后但验证失败的提示标题
  String get purchaseNotCompleted {
    return Intl.message("Purchase not completed", name: "purchaseNotCompleted");
  }

  // 编号 160123
  // 购买商品的失败（非自己取消，但未完成付款）
  String get purchaseFailNormal {
    return Intl.message("Purchase Unsuccessful", name: "purchaseFailNormal");
  }

  // 编号 160124
  // 对用户做Unblock操作后的toast提示或系统提示
  String unblockToastTitle(userName) {
    return Intl.message("You unblocked $userName", name: "unblockToastTitle", args: [userName]);
  }

  // 编号 160125
  // 主头被删除后的dialog提示标题
  String get InappropriateMainPhotoRemoved {
    return Intl.message("Inappropriate main photo removed", name: "InappropriateMainPhotoRemoved");
  }

  // 编号 160126
  // 主头被删除后的dialog提示正文
  String get mainPhotoNotHaveClearFace {
    return Intl.message("Main photo that is unclear in face, obscene or offensive is not allowed", name: "mainPhotoNotHaveClearFace");
  }

  // 编号 160127
  // Me-Profile编辑-编辑了Q&A后不保存即返回的提示正文
  String get editDiscardedToLeaveOrNot {
    return Intl.message("Content being edited will be discarded if you choose to leave", name: "editDiscardedToLeaveOrNot");
  }

  // 编号 160128
  // Me-Profile编辑-编辑了Q&A后不保存即返回的提示选项
  String get editDiscardedToLeave {
    return Intl.message("Discard and Leave", name: "editDiscardedToLeave");
  }

  // 编号 160129
  // Chat-WooPlus对话框-官方回复反馈后的提示
  String get viewDetail {
    return Intl.message("View Detail", name: "viewDetail");
  }

  // 编号 160130
  // Android购买页的订阅说明
  String get textOfTermsPurchaseAndriod {
    return Intl.message("By tapping Join Now, your payment will be charged to your Google Play account, and your subscription will renew automatically unless you cancel it in the Google Play Store. By continuing, you agree to our Terms.\nFor more details, please visit our *Terms* and *Privacy*.", name: "textOfTermsPurchaseAndriod");
  }

  // 编号 160131
  // FreeTrial按钮上的文字-502
  String get startFreeTrial {
    return Intl.message("Start 7-day FREE Trial", name: "startFreeTrial");
  }

  // 编号 160132
  // FreeTrial的扣费补充描述-502
  String freeTrialPrompt(price) {
    return Intl.message("Then $price per month, cancel anytime", name: "freeTrialPrompt", args: [price]);
  }

  // 编号 160133
  // Android单独的FreeTrial购买页的说明
  String termsOfFreeTrial(price) {
    return Intl.message("This subscription automatically renews for $price/month after the 7-day free trial. You can cancel anytime. For more detail, please view our Privacy and Terms.\nFor more details, please visit our *Terms* and *Privacy*.", name: "termsOfFreeTrial", args: [price]);
  }

  // 编号 160134
  // FreeTrial按钮上的文字（503版本改进测试）
  String get startFreeTrialBtn {
    return Intl.message("Start Free Trial", name: "startFreeTrialBtn");
  }

  // 编号 160135
  // 我们每天开放100个FreeTrial
  String get offeringFreeTrial {
    return Intl.message("We are offering 100 FREE TRIAL today!", name: "offeringFreeTrial");
  }

  // 编号 160136
  // 100人里还剩多少
  String get freeTrailLeftNow {
    return Intl.message("/100 Left Now", name: "freeTrailLeftNow");
  }

  // 编号 160137
  // 7天试用期后，每个月应多少钱，随时取消
  String priceAfterFreeTrail(price) {
    return Intl.message("$price per month after seven days trial, cancel anytime", name: "priceAfterFreeTrail", args: [price]);
  }

  // 编号 160138
  // FreeTrial页VIP权益说明-谁喜欢了你
  String get seeWhoLikedYouFreeTrail {
    return Intl.message("See Who Liked You", name: "seeWhoLikedYouFreeTrail");
  }

  // 编号 160139
  // FreeTrial页VIP权益说明-优化你的搜索
  String get fineTuneYourSearchFreeTrail {
    return Intl.message("Fine Tune Your Search", name: "fineTuneYourSearchFreeTrail");
  }

  // 编号 160140
  // FreeTrial页VIP权益说明-无限发消息
  String get sendUnlimitedMessagesFreeTrail {
    return Intl.message("Send Unlimited Messages", name: "sendUnlimitedMessagesFreeTrail");
  }

  // 编号 160141
  // 主头删除后在profile照片上的文案
  String get removedPicture {
    return Intl.message("assets/images/me/img_me_removed.png", name: "removedPicture");
  }

  // 编号 160142
  // sign out标题
  String get signOutTitle {
    return Intl.message("Sure to Log Out?", name: "signOutTitle");
  }

  // 编号 160143
  // sign out 说明
  String get signOutDesc {
    return Intl.message("You won't get notified if someone likes or messages you after logging out", name: "signOutDesc");
  }

  // 编号 160145
  // sign out对话框选项-留下
  String get signOutCancel {
    return Intl.message("Stay Connected", name: "signOutCancel");
  }

  // 编号 160146
  // 已经是unblock状态，点系统提示里的unblock后出现的系统提示
  String unBlockedAlready(userName) {
    return Intl.message("You unblocked $userName already", name: "unBlockedAlready", args: [userName]);
  }

  // 编号 160147
  // feedback最少15个字符提醒
  String get feedbackMinLimit {
    return Intl.message("Minimum 15 characters", name: "feedbackMinLimit");
  }

  // 编号 160200
  // 订阅取消后，VIP过期前，对订阅的恢复引导（目前仅Android有）
  String restoreSubscription(expiryDate) {
    return Intl.message("Your current subscription will end on $expiryDate, we recommend restoring the subscription to keep your premium privileges.", name: "restoreSubscription", args: [expiryDate]);
  }

  // 编号 160201
  // 按钮文案-恢复订阅
  String get restoreSubscriptionTitle {
    return Intl.message("Resume Subscription", name: "restoreSubscriptionTitle");
  }

  // 编号 160202
  // Android上对进入GracePeriod和AccoutHold的提醒消息
  String get androidGracePeriodAccoutHoldNotice {
    return Intl.message("There is a payment issue on Google Play. Please fix it to prevent disruptions to your account.", name: "androidGracePeriodAccoutHoldNotice");
  }

  // 编号 160203
  // iOS上对进入GracePeriod和AccoutHold的提醒消息
  String get iosGracePeriodAccoutHoldNotice {
    return Intl.message("There is a payment issue on Apple Store. Please fix it to prevent disruptions to your account.", name: "iosGracePeriodAccoutHoldNotice");
  }

  // 编号 160204
  // 按钮文案-修复支付信息
  String get fixPayment {
    return Intl.message("Fix Payment", name: "fixPayment");
  }

  // 编号 160310
  // LogOut对话框按钮-留下
  String get logOutDialogBtnStay {
    return Intl.message("Stay", name: "logOutDialogBtnStay");
  }

  // 编号 160500
  // profile修改头像/信息中-吐司提示文案
  String get profileEditRequestNotComplete {
    return Intl.message("Your profile is saving, please wait", name: "profileEditRequestNotComplete");
  }

  // 编号 160501
  // preferences增加文案说明设置仅对for you和daily picks有效
  String get preferencesTips {
    return Intl.message("Your preferences only apply to profiles in For You", name: "preferencesTips");
  }

  // 编号 160510
  // 不要错过你的情人节特别款待
  String get valentinesSaleTitle {
    return Intl.message("Don't Miss Your Valentine's Day Treat", name: "valentinesSaleTitle");
  }

  // 编号 160511
  // 情人节1周的商品
  String get oneWeek {
    return Intl.message("1 WEEK", name: "oneWeek");
  }

  // 编号 160512
  // 情人节3月的商品
  String get threeMonths {
    return Intl.message("3 MONTHS", name: "threeMonths");
  }

  // 编号 160513
  // 最划算的买卖
  String get threeMonthstTIp {
    return Intl.message("Best Deal", name: "threeMonthstTIp");
  }

  // 编号 160514
  // 选择3月商品时的扣费说明
  String valentinesPriceTip(introductoryPrice, normalyPrice) {
    return Intl.message("$introductoryPrice for the first 3 months, then $normalyPrice for next 3 months", name: "valentinesPriceTip", args: [introductoryPrice, normalyPrice]);
  }

  // 编号 160515
  // 表示节省了多少，在句首，如：Save 50%
  String get priceSave {
    return Intl.message("Save", name: "priceSave");
  }

  // 编号 160516
  // 在Me中Valentine's Day Offer 的图片文件名，需区分英语和德语
  String get valentinesMeImageBgPath {
    return Intl.message("assets/images/me/valentines_sale_bg.png", name: "valentinesMeImageBgPath");
  }

  // 编号 160520
  // 告诉用户可以get更多的like
  String get profileEditGuideInMePage {
    return Intl.message("Fill out your profile to get more likes!", name: "profileEditGuideInMePage");
  }

  // 编号 160521
  // 更多的Profile可以让你得到更多Matches
  String get profileEditGudeInProfilePage {
    return Intl.message("A detailed profile gets you more matches", name: "profileEditGudeInProfilePage");
  }

  // 编号 160522
  // LA反馈中赢得免费的credits
  String get laFeedbackWinCredits {
    return Intl.message("Win Free Credits", name: "laFeedbackWinCredits");
  }

  // 编号 160523
  // 情人节的闹钟Notification的标题
  String get valentinesSaleNotifyTitle {
    return Intl.message("❤️ Cupid's Call ❤️", name: "valentinesSaleNotifyTitle");
  }

  // 编号 160524
  // 情人节的闹钟Notification的正文
  String get valentinesSaleNotifyMsg {
    return Intl.message("Hurry to get your valentine's day special treat!", name: "valentinesSaleNotifyMsg");
  }

  // 编号 160530
  // 复活节促销页标题
  String get esterSaleTitle {
    return Intl.message("Don't Miss Your Easter Treat", name: "esterSaleTitle");
  }

  // 编号 160531
  // 复活节的闹钟Notification的标题
  String get esterNotifySaleTitle {
    return Intl.message("Every 🐰 Ready for Easter?", name: "esterNotifySaleTitle");
  }

  // 编号 160532
  // 复活节的闹钟Notification的正文
  String get esterNotifySaleMsg {
    return Intl.message("Come crack open your Easter treat!", name: "esterNotifySaleMsg");
  }

  // 编号 160533
  // 在Me中Easter Special Offer 的图片文件名，需区分英语和德语
  String get esterMeImageBgPath {
    return Intl.message("assets/images/me/ester_sale_bg.jpg", name: "esterMeImageBgPath");
  }

  // 编号 160534
  // Me页面 Add Video 按钮
  String get addVideo {
    return Intl.message("Add Video", name: "addVideo");
  }

  // 编号 160535
  // Me页面 Add Media按钮
  String get addMedia {
    return Intl.message("Add Media", name: "addMedia");
  }

  // 编号 160536
  // Me页面 Email Verification 入口文案
  String get emailVerificationTips {
    return Intl.message("To ensure the security of your account, please perform email verification", name: "emailVerificationTips");
  }

  // 编号 160537
  // Me页面 Discount 入口文案
  String get discountOfferToUseTips {
    return Intl.message("You have a discount offer to use", name: "discountOfferToUseTips");
  }

  // 编号 160538
  // Email Verification页 标题文案
  String get emailVerification {
    return Intl.message("Email Verification", name: "emailVerification");
  }

  // 编号 160539
  // 普通用户 Email Verification页说明文案
  String get verifyEmailAddressTips {
    return Intl.message("To protect your account security, please verify your registered email address, and you will get a discount when you complete the verification", name: "verifyEmailAddressTips");
  }

  // 编号 160540
  // Email Verification页 已注册邮箱地址 标示文案
  String get registeredEmail {
    return Intl.message("Registered email address", name: "registeredEmail");
  }

  // 编号 160541
  // Email Verification页 发送验证码 按钮文案
  String get sendVerificationMail {
    return Intl.message("Send Verification Mail", name: "sendVerificationMail");
  }

  // 编号 160542
  // Email Verification页 更换注册邮箱 按钮文案
  String get changeMyEmail {
    return Intl.message("Change My Email Address", name: "changeMyEmail");
  }

  // 编号 160543
  // Change My Email Address弹窗 标题文案
  String get enterValidEmail {
    return Intl.message("Please enter a valid email address", name: "enterValidEmail");
  }

  // 编号 160544
  // Change My Email Address弹窗 邮箱地址不合法提示文案
  String get fillEmailAgain {
    return Intl.message("The email address is invalid. Please fill in again.", name: "fillEmailAgain");
  }

  // 编号 160546
  // Please Confirm Again弹窗 标题文案
  String get confirmAgain {
    return Intl.message("Please Confirm Again", name: "confirmAgain");
  }

  // 编号 160547
  // Please Confirm Again弹窗  说明文案
  String get reconfirmationAuthCode {
    return Intl.message("We will send a verification code to your email address after reconfirmation", name: "reconfirmationAuthCode");
  }

  // 编号 160548
  // Please Confirm Again弹窗 邮箱地址已被注册提示文案
  String get emailBeTaken {
    return Intl.message("The email address you entered has been taken. Please try a different one.", name: "emailBeTaken");
  }

  // 编号 160549
  // Please Confirm Again弹窗 取消按钮
  String get modifyEmail {
    return Intl.message("Modify Email Address", name: "modifyEmail");
  }

  // 编号 160550
  // Please Confirm Again弹窗 请求验证码太过频繁等待文案
  String get requestLater {
    return Intl.message("Request too often, please try again in", name: "requestLater");
  }

  // 编号 160551
  // Get Verification Code页 标题文案
  String get getAuthCode {
    return Intl.message("Get Verification Code", name: "getAuthCode");
  }

  // 编号 160552
  // Get Verification Code页 说明文案
  String get sentAuthCodeTips {
    return Intl.message("We have sent an email with a 6-digit verification code to your email address. Please check it in your email address. If you did not receive the code within minutes, please check the junk mail folder.", name: "sentAuthCodeTips");
  }

  // 编号 160553
  // Get Verification Code页 验证邮箱地址 按钮文案
  String get verifyEmail {
    return Intl.message("Verify Email Address", name: "verifyEmail");
  }

  // 编号 160554
  // Get Verification Code页 验证码错误toast提示文案
  String get enterCorrectCode {
    return Intl.message("Please enter the correct code", name: "enterCorrectCode");
  }

  // 编号 160555
  // Get Verification Code页 验证码已发送toast提示文案
  String get authCodeBeSent {
    return Intl.message("Verification code has been sent", name: "authCodeBeSent");
  }

  // 编号 160556
  // Get Verification Code页 请求验证码太频繁toast提示文案
  String get requestTooOften {
    return Intl.message("Request too often, try again later", name: "requestTooOften");
  }

  // 编号 160557
  // Get Verification Code页 未输入验证码提交验证toast提示文案
  String get enterAuthCode {
    return Intl.message("Please enter the verification code", name: "enterAuthCode");
  }

  // 编号 160558
  // Email Verification Succeeded 弹窗 主标题
  String get emailVerificationSucceeded {
    return Intl.message("Email Verification Succeeded", name: "emailVerificationSucceeded");
  }

  // 编号 160559
  // 普通用户 Email Verification Succeeded 弹窗 说明文案
  String get discountOfferTips {
    return Intl.message("You got a discount offer as a reward for completing your email verification", name: "discountOfferTips");
  }

  // 编号 160560
  // Discount页 折扣价格文案
  String introductoryPriceOfMonth(introductoryPrice) {
    return Intl.message("$introductoryPrice/Month", name: "introductoryPriceOfMonth", args: [introductoryPrice]);
  }

  // 编号 160561
  // Discount页 倒计时文案
  String get disCountCountdownTime {
    return Intl.message("Discount Countdown", name: "disCountCountdownTime");
  }

  // 编号 160562
  // Discount页 购买按钮文案
  String get discountNow {
    return Intl.message("Get the discount now", name: "discountNow");
  }

  // 编号 160563
  // Settings页 Restore Purchase子选项总标题
  String get paymentAccount {
    return Intl.message("PAYMENT ACCOUNT", name: "paymentAccount");
  }

  // 编号 160564
  // Settings页 Block List\notification子选项总标题
  String get appSetting {
    return Intl.message("APP SETTINGS", name: "appSetting");
  }

  // 编号 160565
  // Settings页 Help & Feedback子选项总标题
  String get contactUS {
    return Intl.message("CONTACT US", name: "contactUS");
  }

  // 编号 160566
  // Settings页 Terms/Privacy子选项总标题
  String get legal {
    return Intl.message("LEGAL", name: "legal");
  }

  // 编号 160567
  // Change My Email Address弹窗 按钮文案
  String get confirmButtonTitle {
    return Intl.message("Confirm", name: "confirmButtonTitle");
  }

  // 编号 160568
  // 
  String get coinTips {
    return Intl.message("Use coins to buy gifts for people you like, get their attention and start from here!", name: "coinTips");
  }

  // 编号 160569
  // 
  String get coin2000 {
    return Intl.message("2000 Coins", name: "coin2000");
  }

  // 编号 160570
  // 
  String get coin20000 {
    return Intl.message("20000 Coins", name: "coin20000");
  }

  // 编号 160571
  // VIP用户 Email Verification页说明文案
  String get verifyEmailAddressTipsVip {
    return Intl.message("To protect your account security, please verify your registered email address.", name: "verifyEmailAddressTipsVip");
  }

  // 编号 160572
  // VIP用户 Email Verification Succeeded 弹窗 说明文案
  String get discountOfferTipsVip {
    return Intl.message("Your account is now safe.", name: "discountOfferTipsVip");
  }

  // 编号 160573
  // 
  String Chat_FlashChatHUDPausedUntilTonight_ToastText(localstartTime) {
    return Intl.message("Flash Chat is paused until $localstartTime. Feel free to join again at any time you want.", name: "Chat_FlashChatHUDPausedUntilTonight_ToastText", args: [localstartTime]);
  }

  // 编号 160574
  // 
  String Chat_FlashChatHUDPausedUntilTomorrow_ToastText(localstartTime) {
    return Intl.message("Flash Chat is paused until tomorrow at $localstartTime. Feel free to join again at any time you want.", name: "Chat_FlashChatHUDPausedUntilTomorrow_ToastText", args: [localstartTime]);
  }

  // 编号 151216
  // HUD 按钮，拒绝本次闪聊
  String get Chat_flashChatHUDBtnReject_ButtonText {
    return Intl.message("Maybe Next Time", name: "Chat_flashChatHUDBtnReject_ButtonText");
  }

  // 编号 220001
  // Moments 的Tab名称
  String get momentsPageTitle {
    return Intl.message("Moments", name: "momentsPageTitle");
  }

  // 编号 220002
  // 多少人点了赞
  String momentLiked(howMany) {
    return Intl.plural(howMany, one: "like", other: "likes", name: 'momentLiked', args: [howMany]);
  }

  // 编号 220003
  // Moments 在Profile中的组标题
  String get momentsProfileTitle {
    return Intl.message("MOMENTS", name: "momentsProfileTitle");
  }

  // 编号 220004
  // XX条评论（>=3才展示，只有复数）
  String get comments {
    return Intl.message("comments", name: "comments");
  }

  // 编号 220005
  // 引导用户快速发布Profile Photo的文案
  String fastMomentWithUser(userName) {
    return Intl.message("Hi $userName, share your main photo to get more likes on WooPlus!", name: "fastMomentWithUser", args: [userName]);
  }

  // 编号 220006
  // 引导用户快速发布Profile Photo的 Button
  String get getMoreLike {
    return Intl.message("Get More Likes", name: "getMoreLike");
  }

  // 编号 220007
  // 查看更多（Feeds精选贴的右上角）
  String get seeMore {
    return Intl.message("See more", name: "seeMore");
  }

  // 编号 220008
  // 正常入口的气泡功能解释
  String get bubbleMomentPost {
    return Intl.message("\"Share your moment and get more likes! \"", name: "bubbleMomentPost");
  }

  // 编号 220009
  // 你可以从这里查看热门话题（在Feeds主页中提示用户Fliter入口可进入）
  String get bubbleMomentFilter {
    return Intl.message("You can access hot topics from here", name: "bubbleMomentFilter");
  }

  // 编号 220010
  // 官方发帖中的用户参与的选择题-标题
  String get profilesOptionTitle {
    return Intl.message("OPTIONS", name: "profilesOptionTitle");
  }

  // 编号 220011
  // 官方发帖中展示用户profile-标题
  String get profilesOfficialTitle {
    return Intl.message("PROFILES", name: "profilesOfficialTitle");
  }

  // 编号 220012
  // 评论框中的引导文字
  String get leaveYourComment {
    return Intl.message("Leave your comment", name: "leaveYourComment");
  }

  // 编号 220013
  // 还未对评论点 Like 时的文案
  String get likeNoCommentTitle {
    return Intl.message("Like", name: "likeNoCommentTitle");
  }

  // 编号 220014
  // Feeds主页右上角的过滤icon进入的页面title
  String get filter {
    return Intl.message("Filter", name: "filter");
  }

  // 编号 220015
  // 组名称-为我展示来自XX的moments
  String get showMeMomentFrom {
    return Intl.message("SHOW ME MOMENTS FROM", name: "showMeMomentFrom");
  }

  // 编号 220016
  // 热门话题（Filter页中的话题组标题）
  String get hotTopics {
    return Intl.message("HOT TOPICS", name: "hotTopics");
  }

  // 编号 220018
  // 通知消息(顶部页面Title)
  String get notificationTitle {
    return Intl.message("Notifications", name: "notificationTitle");
  }

  // 编号 220019
  // 更早的通知（展示在底部)
  String get oldNotification {
    return Intl.message("Older Notifications", name: "oldNotification");
  }

  // 编号 220020
  // 目前没有新的通知
  String get noNotification {
    return Intl.message("No new notifications yet", name: "noNotification");
  }

  // 编号 220022
  // 更换一张照片（用户从发帖页进入单张照片预览）
  String get changePhoto {
    return Intl.message("Change the Photo", name: "changePhoto");
  }

  // 编号 220023
  // 发帖页的输入引导文字
  String get textFieldPostMoment {
    return Intl.message("Say something...", name: "textFieldPostMoment");
  }

  // 编号 220024
  // 选择一个话题以便被更多的人浏览（发帖页的话题选择标题）
  String get suggestChooseTopic {
    return Intl.message("Choose a topic to increase views", name: "suggestChooseTopic");
  }

  // 编号 220025
  // 发帖没选择话题时的dialog-标题
  String get dialogChooseTopicTitle {
    return Intl.message("Post with a topic", name: "dialogChooseTopicTitle");
  }

  // 编号 220026
  // 发帖没选择话题时的dialog-正文
  String get dialogChooseTopicContent {
    return Intl.message("It will get more views with a topic! Choose one for your Moment?", name: "dialogChooseTopicContent");
  }

  // 编号 220027
  // 发帖没选择话题时的dialog-选项1-选择一个话题
  String get chooseTopic {
    return Intl.message("Choose a Topic", name: "chooseTopic");
  }

  // 编号 220028
  // 发帖没选择话题时的dialog-选项2-直接发送
  String get sendAnyway {
    return Intl.message("Send Anyway", name: "sendAnyway");
  }

  // 编号 220030
  // 参与这个话题（聚集页中）
  String get partInTopic {
    return Intl.message("Join the Topic", name: "partInTopic");
  }

  // 编号 220031
  // Feeds首页，上次看到这里，点击刷新
  String get lastSeen {
    return Intl.message("Last seen here, tap to refresh", name: "lastSeen");
  }

  // 编号 220032
  // Feeds首页最底部，没有更多的Moments，点击刷新
  String get noMoreMoment {
    return Intl.message("No more Moments, tap to refresh", name: "noMoreMoment");
  }

  // 编号 220033
  // 不可用的Moment（用户被删除后，点击访问其Moment的报错）
  String get unavailableMoment {
    return Intl.message("Unavailable Moment", name: "unavailableMoment");
  }

  // 编号 220034
  // 不可用的Comment（用户点击被删除的Comment后，进入其评论详情页的报错）
  String get unavailableComment {
    return Intl.message("Unavailable Comment", name: "unavailableComment");
  }

  // 编号 220035
  // 帖子详情页的Title
  String get momentDetails {
    return Intl.message("Details", name: "momentDetails");
  }

  // 编号 220036
  // 评论详情页的Title
  String get commentsPageTitle {
    return Intl.message("Comments", name: "commentsPageTitle");
  }

  // 编号 220039
  // 发送帖子太频繁，点击发帖后，toast提示
  String get sendOftenMoment {
    return Intl.message("Moments sent too often, please take a break", name: "sendOftenMoment");
  }

  // 编号 220040
  // 你的Moment正在发送，请稍等（点击自己的moment正文）
  String get showPendingMomentDetailNotAllowed {
    return Intl.message("Your moment is sending, please wait", name: "showPendingMomentDetailNotAllowed");
  }

  // 编号 220042
  // 喜欢了这条Moment的人
  String get whoLikedMoment {
    return Intl.message("Who liked this moment", name: "whoLikedMoment");
  }

  // 编号 220043
  // 你的Moment正在发送，稍后再发送(用于新建Moment)
  String get momentIsUploading {
    return Intl.message("Your last moment is sending, please wait", name: "momentIsUploading");
  }

  // 编号 220044
  // 你的Moment正在发送，稍后再点赞
  String get likePendingMomentNotAllowed {
    return Intl.message("Your moment is sending, like later", name: "likePendingMomentNotAllowed");
  }

  // 编号 220045
  // 你的Moment正在发送，稍后再评论
  String get commentPendingMomentNotAllowed {
    return Intl.message("Your moment is sending, comment later", name: "commentPendingMomentNotAllowed");
  }

  // 编号 220046
  // Moment没有发送成功
  String get momentSentFailed {
    return Intl.message("Moment not sent, please give it another try", name: "momentSentFailed");
  }

  // 编号 220047
  // 重新发送
  String get resendMoment {
    return Intl.message("Resend", name: "resendMoment");
  }

  // 编号 220048
  // 丢弃
  String get discardMoment {
    return Intl.message("Discard", name: "discardMoment");
  }

  // 编号 220049
  // 相册
  String get albumMoment {
    return Intl.message("Album", name: "albumMoment");
  }

  // 编号 220050
  // 相机拍摄
  String get camera {
    return Intl.message("Camera", name: "camera");
  }

  // 编号 220051
  // 发送Moment-编辑时点击退出的 Dialog 提示标题
  String get discardEditMomentDesc {
    return Intl.message("Current moment will be discarded if you choose to leave", name: "discardEditMomentDesc");
  }

  // 编号 220052
  // 发送Moment-编辑时点击退出的 Dialog 选项（需要有警示色）
  String get discardEditMoment {
    return Intl.message("Discard and Leave", name: "discardEditMoment");
  }

  // 编号 220053
  // 点击自己评论时弹出的按钮按钮文案（仅主态才能看到)
  String get deleteComment {
    return Intl.message("Delete Comment", name: "deleteComment");
  }

  // 编号 220054
  // 确认删除本条Moment的 Dialog 标题
  String get deleteMomentTitle {
    return Intl.message("Delete moment?", name: "deleteMomentTitle");
  }

  // 编号 220055
  // 进入话题聚合页时，发现话题不可用的toast提示
  String get unavailableTopic {
    return Intl.message("Unavailable Topic", name: "unavailableTopic");
  }

  // 编号 220056
  // 置顶的2、4位置的官方Moments
  String get momentOfficialTag {
    return Intl.message("Pinned Official Moment", name: "momentOfficialTag");
  }

  // 编号 220057
  // 最近的
  String get imagePickerRecent {
    return Intl.message("Recent", name: "imagePickerRecent");
  }

  // 编号 220058
  // 最多选择多少张照片
  String imagePickerMaxSelect(howMany) {
    return Intl.message("$howMany photos maximum", name: "imagePickerMaxSelect", args: [howMany]);
  }

  // 编号 220059
  // 
  String fastPostTitle(userName) {
    return Intl.message("Hi $userName, post a selfie!\nIt might attract the attention of the right people for you.", name: "fastPostTitle", args: [userName]);
  }

  // 编号 220060
  // 
  String get fastPostCardTitle {
    return Intl.message("Post My Selfie", name: "fastPostCardTitle");
  }

  // 编号 220061
  // 
  String get fastPostCardFailureTitle {
    return Intl.message("Not posted yet. Please try again.", name: "fastPostCardFailureTitle");
  }

  // 编号 220062
  // 
  String get fastPostSuccess {
    return Intl.message("Your photo has been posted", name: "fastPostSuccess");
  }

  // 编号 220063
  // 
  String get fastPostCardSendNowTitle {
    return Intl.message("Send Now", name: "fastPostCardSendNowTitle");
  }

  // 编号 180001
  // 删除页面的标题，用户删除操作不可挽回
  String get titleOfDeleteAccount {
    return Intl.message("Account Deletion Is Irreversible!", name: "titleOfDeleteAccount");
  }

  // 编号 180002
  // 挽回劝说1
  String get reasonOfStay1 {
    return Intl.message("You will not be able to reactivate your account or retrieve any profiles, messages or the matches that you have on this app", name: "reasonOfStay1");
  }

  // 编号 180003
  // 挽回劝说2
  String get reasonOfStay2 {
    return Intl.message("Do you know these people? How heartbroken they will be if they want to date you but get informed you are unavailable.", name: "reasonOfStay2");
  }

  // 编号 180004
  // 保留我的账号
  String get keepAccount {
    return Intl.message("Keep My Account", name: "keepAccount");
  }

  // 编号 180006
  // 去反馈问题
  String get becomeVipNow {
    return Intl.message("Become VIP Now", name: "becomeVipNow");
  }

  // 编号 180007
  // 选择Logout
  String get goToLogoutp {
    return Intl.message("Keep Account & Log Out", name: "goToLogoutp");
  }

  // 编号 180008
  // 直接跳转至feedback
  String get goToFeedback {
    return Intl.message("Feedback", name: "goToFeedback");
  }

  // 编号 180009
  // 要求填写删除原因的正文
  String get reasonSelectTitle {
    return Intl.message("It will be greatly appreciated if you share your reasons for leaving to help us improve WooPlus", name: "reasonSelectTitle");
  }

  // 编号 180010
  // 删除账号-原因1
  String get dacReasonText1 {
    return Intl.message("Boring app with no cool features", name: "dacReasonText1");
  }

  // 编号 180011
  // 删除账号-说明1的Title
  String get dacReasonTitle1 {
    return Intl.message("We have more features to come!", name: "dacReasonTitle1");
  }

  // 编号 180012
  // 删除账号-说明1的正文
  String get dacReasonContent1 {
    return Intl.message("On WooPlus, you can check out nearby singles in For You, browse profiles within your preference in Daily Picks, find out who liked you and chat with people you like... Besides, we are always coming up with fun new features. Please stay tuned.", name: "dacReasonContent1");
  }

  // 编号 180013
  // 删除账号-原因2
  String get dacReasonText2 {
    return Intl.message("I did not find anyone I was interested in", name: "dacReasonText2");
  }

  // 编号 180014
  // 删除账号-说明2的Title
  String get dacReasonTitle2 {
    return Intl.message("Someone might have liked you already!", name: "dacReasonTitle2");
  }

  // 编号 180015
  // 删除账号-说明2的正文
  String get dacReasonContent2 {
    return Intl.message("It will be a shame if your love appears in the next second but you are not here anymore", name: "dacReasonContent2");
  }

  // 编号 180016
  // 删除账号-原因3
  String get dacReasonText3 {
    return Intl.message("Need VIP to chat", name: "dacReasonText3");
  }

  // 编号 180017
  // 删除账号-说明3的Title
  String get dacReasonTitle3 {
    return Intl.message("Give it a shot?", name: "dacReasonTitle3");
  }

  // 编号 180018
  // 删除账号-说明3的正文
  String get dacReasonContent3 {
    return Intl.message("We offer premium services for our VIP members, and there will be VIP discounts available. Are you sure to give up?", name: "dacReasonContent3");
  }

  // 编号 180019
  // 删除账号-原因4
  String get dacReasonText4 {
    return Intl.message("I've found someone", name: "dacReasonText4");
  }

  // 编号 180020
  // 删除账号-说明4的Title
  String get dacReasonTitle4 {
    return Intl.message("Congrats!", name: "dacReasonTitle4");
  }

  // 编号 180021
  // 删除账号-说明4的正文
  String get dacReasonContent4 {
    return Intl.message("Since all message history will be gone after deletion, we recommend you to keep your account and just log out.", name: "dacReasonContent4");
  }

  // 编号 180022
  // 删除账号-原因5
  String get dacReasonText5 {
    return Intl.message("Other", name: "dacReasonText5");
  }

  // 编号 180023
  // 删除账号-说明5的Title
  String get dacReasonTitle5 {
    return Intl.message("We are always working to make WooPlus better", name: "dacReasonTitle5");
  }

  // 编号 180024
  // 删除账号-说明5的正文
  String get dacReasonContent5 {
    return Intl.message("We hope you can share your suggestions and concerns with us in feedback. We will get to them at once. Thank you.", name: "dacReasonContent5");
  }

  // 编号 180025
  // 账号删除成功的提示（用户自己删除账号）
  String get deleteAccountDialogTitle {
    return Intl.message("Account Deleted", name: "deleteAccountDialogTitle");
  }

  // 编号 180026
  // 账号删除成功的正文（用户自己删除账号）
  String get deleteAccountDialogMsg {
    return Intl.message("Thank you for choosing us in the first place. You are always welcomed at WooPlus.", name: "deleteAccountDialogMsg");
  }

  // 编号 180027
  // 用户账号在后台被删除后弹出Dialog的标题（违规或用户要求）
  String get deleteAccountByWooPlusDialogTitle {
    return Intl.message("Account Unavailable", name: "deleteAccountByWooPlusDialogTitle");
  }

  // 编号 180028
  // 用户账号在后台被删除后弹出Dialog的正文（违规或用户要求）
  String get deleteAccountByWooPlusDialogMsg {
    return Intl.message("Your account has been deleted by your request or due to the violation of our Terms", name: "deleteAccountByWooPlusDialogMsg");
  }

  // 编号 180030
  // 删除账号-主文案
  String get deleteAccountNoticeDialogTitle {
    return Intl.message("Sure to delete your account?", name: "deleteAccountNoticeDialogTitle");
  }

  // 编号 180031
  // 删除账号-找到人了-辅助文案
  String get deleteAccountNoticeKeepAccount {
    return Intl.message("Since all message history will be gone after deletion, we recommend you to keep your account and just log out.", name: "deleteAccountNoticeKeepAccount");
  }

  // 编号 180032
  // 删除账号-无人欣赏-辅助文案
  String get deleteAccountNoticeMayLostPeople {
    return Intl.message("Someone might have liked you already! It will be a shame if your love appears in the next second but you are not here anymore.", name: "deleteAccountNoticeMayLostPeople");
  }

  // 编号 180033
  // 删除账号-Other-辅助文案
  String get deleteAccountNoticeOther {
    return Intl.message("We would really appreciate it if you could share your opinions with us in Feedback so we could make WooPlus better.", name: "deleteAccountNoticeOther");
  }

  // 编号 190001
  // 举报-profile-Inappropriate photos
  String get rrPhotoTitle {
    return Intl.message("Inappropriate Photo", name: "rrPhotoTitle");
  }

  // 编号 190002
  // 举报-profile-Inappropriate photos-FakePhoto
  String get rrPhoto10101 {
    return Intl.message("Fake photo", name: "rrPhoto10101");
  }

  // 编号 190003
  // 举报-profile-Inappropriate photos-Porn
  String get rrPhoto10102 {
    return Intl.message("Porn", name: "rrPhoto10102");
  }

  // 编号 190004
  // 举报-profile-Inappropriate photos-Wrong gender
  String get rrPhoto10104 {
    return Intl.message("Wrong gender", name: "rrPhoto10104");
  }

  // 编号 190005
  // 举报-profile-Inappropriate photos-Underage
  String get rrPhoto10103 {
    return Intl.message("Age < 18", name: "rrPhoto10103");
  }

  // 编号 190006
  // 举报-profile-Inappropriate photos-Not showing face
  String get rrPhoto10105 {
    return Intl.message("Not showing face", name: "rrPhoto10105");
  }

  // 编号 190007
  // 举报-profile-Inappropriate photos-Rude / Violent
  String get rrPhoto10106 {
    return Intl.message("Rude/Violent", name: "rrPhoto10106");
  }

  // 编号 190011
  // 举报-Messages-Inappropriate messages
  String get rrMessageTitle {
    return Intl.message("Inappropriate Messages", name: "rrMessageTitle");
  }

  // 编号 190012
  // 举报-Messages-Unsolicited Sexual Content
  String get rrMessage10201 {
    return Intl.message("Unsolicited sexual content", name: "rrMessage10201");
  }

  // 编号 190013
  // 举报-Messages-Harassment
  String get rrMessage10202 {
    return Intl.message("Harassment", name: "rrMessage10202");
  }

  // 编号 190014
  // 举报-Messages-Rude / Violent
  String get rrMessage10203 {
    return Intl.message("Rude/Violent", name: "rrMessage10203");
  }

  // 编号 190015
  // 举报-Messages-Other
  String get rrMessage10200 {
    return Intl.message("Other", name: "rrMessage10200");
  }

  // 编号 190021
  // 举报-Messages-ScamTItle
  String get rrFeelsLikeScamTitle {
    return Intl.message("Feels Like Scam", name: "rrFeelsLikeScamTitle");
  }

  // 编号 190022
  // 举报-Messages-Scam-AskforMomey
  String get rrFeelsLikeScam10011 {
    return Intl.message("Asking for money", name: "rrFeelsLikeScam10011");
  }

  // 编号 190023
  // 举报-Messages-Scam-Selling Photos / Videos
  String get rrFeelsLikeScam10012 {
    return Intl.message("Selling photos/videos", name: "rrFeelsLikeScam10012");
  }

  // 编号 190024
  // 举报-Messages-Scam-Prostitution
  String get rrFeelsLikeScam10013 {
    return Intl.message("Prostitution", name: "rrFeelsLikeScam10013");
  }

  // 编号 190025
  // 举报-Messages-Scam-Other
  String get rrFeelsLikeScam10010 {
    return Intl.message("Other", name: "rrFeelsLikeScam10010");
  }

  // 编号 190026
  // 举报feels like scam下方选项
  String get rrFeelsLikeScam10014 {
    return Intl.message("Using fake photos", name: "rrFeelsLikeScam10014");
  }

  // 编号 190030
  // 举报-Common-OtherTitle
  String get rrOtherTitle {
    return Intl.message("Other", name: "rrOtherTitle");
  }

  // 编号 190031
  // 举报-Common-ReasonContent
  String get rrOther10000 {
    return Intl.message("Tell us why you are reporting this person", name: "rrOther10000");
  }

  // 编号 190032
  // 举报-Common-Tips
  String get rrOtherTips {
    return Intl.message("(At least 2 letters)", name: "rrOtherTips");
  }

  // 编号 190035
  // 举报-Moment-Inappropriate content
  String get rrMomentGroup1Title {
    return Intl.message("Inappropriate Content", name: "rrMomentGroup1Title");
  }

  // 编号 190036
  // 举报-Moment-Porn
  String get rrMoment20301 {
    return Intl.message("Porn", name: "rrMoment20301");
  }

  // 编号 190038
  // 举报-Moment-Rude / Violent
  String get rrMoment20303 {
    return Intl.message("Rude/Violent", name: "rrMoment20303");
  }

  // 编号 190039
  // 举报-Moment-Other
  String get rrMoment20300 {
    return Intl.message("Other", name: "rrMoment20300");
  }

  // 编号 190044
  // 举报-Moment-Scam-Other
  String get rrMoment20310 {
    return Intl.message("Other", name: "rrMoment20310");
  }

  // 编号 190048
  // 举报> profile> Inappropriate video
  String get rrVideoTitle {
    return Intl.message("Inappropriate Video", name: "rrVideoTitle");
  }

  // 编号 190049
  // 举报> profile > Inappropriate video> Porn
  String get rrVideo40001 {
    return Intl.message("Porn", name: "rrVideo40001");
  }

  // 编号 190050
  // 举报> profile > Inappropriate video> Rude/Violent
  String get rrVideo40002 {
    return Intl.message("Rude/Violent", name: "rrVideo40002");
  }

  // 编号 190051
  // 举报> profile > Inappropriate video> Fake
  String get rrVideo40003 {
    return Intl.message("Fake video", name: "rrVideo40003");
  }

  // 编号 190052
  // 举报> profile > Inappropriate video> Other
  String get rrVideo40000 {
    return Intl.message("Other", name: "rrVideo40000");
  }

  // 编号 190053
  // 举报成功Toast提示文案
  String get Common_reportSuccess_ToastText {
    return Intl.message("Report has been submitted for a thorough review. Thank you for helping us keep WooPlus safe.", name: "Common_reportSuccess_ToastText");
  }

  // 编号 190054
  // 
  String get Common_reportSuccessSortTxt_ToastText {
    return Intl.message("Report submitted", name: "Common_reportSuccessSortTxt_ToastText");
  }

  // 编号 200001
  // iOS - 权限获取的解释文案-Location
  String get locationUsedMsg {
    return Intl.message("Your location will be used for recommending more singles nearby to you", name: "locationUsedMsg");
  }

  // 编号 200002
  // iOS - 权限获取的解释文案-Location-失败后的引导-标题
  String get titleOfShareLocationAfterDenied {
    return Intl.message("Turn Location On", name: "titleOfShareLocationAfterDenied");
  }

  // 编号 200003
  // iOS - 权限获取的解释文案-Location-失败后的引导-正文 (WooPlus手机定位服务已开启)
  String get textOfShareLocationAfterDenied {
    return Intl.message("To recommend you people nearby, WooPlus needs to access your location", name: "textOfShareLocationAfterDenied");
  }

  // 编号 200005
  // iOS - 权限获取的解释文案-Notification-失败后的引导-标题
  String get titleOfTurnOnNotificationAfterDenied {
    return Intl.message("Turn on Notification", name: "titleOfTurnOnNotificationAfterDenied");
  }

  // 编号 200006
  // iOS - 权限获取的解释文案-Notification-失败后的引导
  String get textOfTurnOnNotificationAfterDenied {
    return Intl.message("To receive Notifications, please allow Notifications permission in Settings > WooPlus > Notifications", name: "textOfTurnOnNotificationAfterDenied");
  }

  // 编号 200008
  // iOS - 权限获取的解释文案-Photo-失败后的引导-标题
  String get titleOfPhotoAccessAfterDenied {
    return Intl.message("Allow Photos Access", name: "titleOfPhotoAccessAfterDenied");
  }

  // 编号 200009
  // iOS - 权限获取的解释文案-Photo-失败后的引导 (iOS13 及以下)
  String get textOfPhotoAccessAfterDenied {
    return Intl.message("To use your Photos, please allow photos permission in Settings > WooPlus > Photos > Selected Photos or All Photos", name: "textOfPhotoAccessAfterDenied");
  }

  // 编号 200011
  // iOS - 权限获取的解释文案-Camera-失败后的引导-标题
  String get titleOfCameraAccessAfterDenied {
    return Intl.message("Allow Camera Access", name: "titleOfCameraAccessAfterDenied");
  }

  // 编号 200012
  // iOS - 权限获取的解释文案-Camera-失败后的引导
  String get textOfCameraAccessAfterDenied {
    return Intl.message("To continue, please allow camera access in Settings > WooPlus > Camera", name: "textOfCameraAccessAfterDenied");
  }

  // 编号 200014
  // iOS - 权限获取的解释文案-Microphone-失败后的引导-标题
  String get titleOfMicrophoneAccessAfterDenied {
    return Intl.message("Allow Microphone Access", name: "titleOfMicrophoneAccessAfterDenied");
  }

  // 编号 200015
  // iOS - 权限获取的解释文案-Microphone-失败后的引导
  String get textOfMicrophoneAccessAfterDenied {
    return Intl.message("To send voice messages, please allow microphone access in Settings > WooPlus > Microphone", name: "textOfMicrophoneAccessAfterDenied");
  }

  // 编号 200016
  // iOS - 权限获取的解释文案-Location-失败后的引导-正文(手机定位服务未开启)
  String get textOfShareLocationServiceOff {
    return Intl.message("To meet people nearby, please allow location access in Settings > WooPlus > Location > While Using the App", name: "textOfShareLocationServiceOff");
  }

  // 编号 200017
  // iOS - Dialog的引导指手机文案-Location-失败后的引导-正文(手机定位服务未开启)
  String get openSettingGps {
    return Intl.message("Please go to Settings > Privacy > Location Services > Enable Location While Using the App", name: "openSettingGps");
  }

  // 编号 200018
  // Android - 对存储权限的预授权提示-标题
  String get permissionStorageTitle {
    return Intl.message("Please Grant Storage Permission", name: "permissionStorageTitle");
  }

  // 编号 200019
  // Android - 对存储权限的预授权提示-正文
  String get permissionStorageMsg {
    return Intl.message("So we can cache pictures and reduce your data consumption. Please rest assured, WooPlus won’t be able to collect any personal information without your permission.", name: "permissionStorageMsg");
  }

  // 编号 200020
  // Android - 对存储权限的预授权提示-继续按钮
  String get continues {
    return Intl.message("Continue", name: "continues");
  }

  // 编号 200021
  // Android - Dialog的引导文案-Storage-未授权且不再提醒后的提示-正文
  String get permissionStorageGrant {
    return Intl.message("Please grant Storage Permission to continue", name: "permissionStorageGrant");
  }

  // 编号 200022
  // Android - Dialog的引导文案-Microphone-未授权且不再提醒后的提示-正文
  String get permissionMicGrant {
    return Intl.message("Please grant Microphone Permission to continue", name: "permissionMicGrant");
  }

  // 编号 200023
  // Android - Dialog的引导文案-Camera-未授权且不再提醒后的提示-正文
  String get permissionCameraGrant {
    return Intl.message("Please grant Camera Permission to continue", name: "permissionCameraGrant");
  }

  // 编号 200024
  // Android - Dialog的引导文案-Location-未授权且不再提醒后的提示-正文
  String get permissionLocationGrant {
    return Intl.message("Please grant Location Permission to continue", name: "permissionLocationGrant");
  }

  // 编号 240000
  // 引流弹窗-主文案
  String get zaftigxDialogTitle {
    return Intl.message("Exclusive for WooPlus'\nLoyal Users", name: "zaftigxDialogTitle");
  }

  // 编号 240001
  // 引流弹窗-说明文案
  String get zaftigxDialogDesc {
    return Intl.message("Get the first chance to win \$25 bonus in our new app Sheine", name: "zaftigxDialogDesc");
  }

  // 编号 240002
  // 引导弹窗-按钮文案
  String get zaftigxDialogConfirm {
    return Intl.message("Tap to Win", name: "zaftigxDialogConfirm");
  }

  // 编号 240003
  // 引流弹窗-Z项目slogan
  String get zaftigxDialogIntroduction {
    return Intl.message("Best Clothing Deals for Beauty", name: "zaftigxDialogIntroduction");
  }

  // 编号 240004
  // 闪屏广告-跳过按钮
  String get zaftigxFlashSkip {
    return Intl.message("Skip", name: "zaftigxFlashSkip");
  }

  // 编号 240005
  // 闪屏广告按钮文案-加入
  String get zaftigxFlashJoinIn {
    return Intl.message("Join in", name: "zaftigxFlashJoinIn");
  }

  // 编号 250000
  // profile引导用户拍摄视频
  String get avBannerTakeVideo {
    return Intl.message("Add a video to your profile and draw attentions", name: "avBannerTakeVideo");
  }

  // 编号 250001
  // 看完其他用户视频后拍摄button
  String get filmMyVideo {
    return Intl.message("Film My Video", name: "filmMyVideo");
  }

  // 编号 250002
  // 视频介绍
  String get avTakeVideoBrife {
    return Intl.message("Film a video to view others', get a badge and let your profile stand out", name: "avTakeVideoBrife");
  }

  // 编号 250003
  // 开始
  String get avTakeVideoStart {
    return Intl.message("Let's Start", name: "avTakeVideoStart");
  }

  // 编号 250004
  // 无法连接前置摄像头错误提示
  String get avNoFrontCamera {
    return Intl.message("Cannot connect to the front camera", name: "avNoFrontCamera");
  }

  // 编号 250005
  // 内存不足错误提示
  String get avSpaceNotEnough {
    return Intl.message("Cannot record video due to not having enough available storage. You can manage your storage in Settings.", name: "avSpaceNotEnough");
  }

  // 编号 250006
  // 确认头像
  String get avConfirmMainPhoto {
    return Intl.message("To continue, please make sure this is a photo of yourself with your face clearly visible", name: "avConfirmMainPhoto");
  }

  // 编号 250007
  // 进入视频拍摄时，提示面对摄像头
  String get avFaceTheCamera {
    return Intl.message("Please face the camera...", name: "avFaceTheCamera");
  }

  // 编号 250008
  // 使用原主图
  String get avContinueWithMainPhoto {
    return Intl.message("Continue With This Photo", name: "avContinueWithMainPhoto");
  }

  // 编号 250009
  // 更换主图
  String get avChangeMainPhoto {
    return Intl.message("Change Main Photo", name: "avChangeMainPhoto");
  }

  // 编号 250012
  // 视频提交成功
  String get avUploadComplete {
    return Intl.message("Well done! You will get the badge once the video is approved. You can check your video in your profile.", name: "avUploadComplete");
  }

  // 编号 250013
  // 视频拍摄中持续2s未检测到人脸
  String get avRecordFaceLostAlert {
    return Intl.message("Please keep your face toward the camera throughout the video", name: "avRecordFaceLostAlert");
  }

  // 编号 250014
  // 重拍按钮
  String get avRecordFaceLostAlertRetake {
    return Intl.message("Retake", name: "avRecordFaceLostAlertRetake");
  }

  // 编号 250015
  // 重拍提示正文
  String get avRecordReturnAlert {
    return Intl.message("You can go back and take a new video, but this one will be discarded", name: "avRecordReturnAlert");
  }

  // 编号 250016
  // 返回重拍button
  String get avRecordReturnAlertRetake {
    return Intl.message("Go Back and Retake", name: "avRecordReturnAlertRetake");
  }

  // 编号 250017
  // 继续使用原视频button
  String get avRecordReturnAlertContinue {
    return Intl.message("Continue With This One", name: "avRecordReturnAlertContinue");
  }

  // 编号 250018
  // 浏览视频时长按出现选项1
  String get avFilmNewVideo {
    return Intl.message("Film a New Video", name: "avFilmNewVideo");
  }

  // 编号 250019
  // 浏览视频时长按出现选项2
  String get avSaveVideo {
    return Intl.message("Save the Video", name: "avSaveVideo");
  }

  // 编号 250020
  // 浏览视频时长按出现选项3
  String get avHideVideo {
    return Intl.message("Don't Show It in My Profile", name: "avHideVideo");
  }

  // 编号 250021
  // 隐藏视频对话框补充说明
  String get avHideVideoAlert {
    return Intl.message("You won't be able to view other's videos and might miss the opportunity to get more likes", name: "avHideVideoAlert");
  }

  // 编号 250022
  // 隐藏视频对话框选项
  String get avHideVideoAlertConfirm {
    return Intl.message("Don't Show It", name: "avHideVideoAlertConfirm");
  }

  // 编号 250023
  // 隐藏视频对话框选项
  String get avHideVideoAlertCancel {
    return Intl.message("Keep It", name: "avHideVideoAlertCancel");
  }

  // 编号 250024
  // 隐藏视频后点击徽章对话框补充说明
  String get avVideoBadgeBrife {
    return Intl.message("Your badge is hidden right now. Show it to make your profile stand out!", name: "avVideoBadgeBrife");
  }

  // 编号 250026
  // 提交新视频补充说明
  String get avRetakeVideoBrife {
    return Intl.message("If you refilm, your current video will be replaced, and your badge will be hidden until a new video is approved", name: "avRetakeVideoBrife");
  }

  // 编号 250027
  // 认证通过用户点击徽章，徽章介绍
  String get avBadgeTip {
    return Intl.message("This is a video badge. People whose videos are approved will have it lit up and get more likes!", name: "avBadgeTip");
  }

  // 编号 250028
  // 视频在审核中点击重拍视频
  String get avInReviewTakeNewVideo {
    return Intl.message("Your video is under review. You can take a new one after that.", name: "avInReviewTakeNewVideo");
  }

  // 编号 250029
  // 认证成功进入App气泡
  String get avNoticeGotNewBadge {
    return Intl.message("WooHoo! You just got the badge.", name: "avNoticeGotNewBadge");
  }

  // 编号 250030
  // 认证失败进入App提示
  String get avBannerVideoNotApprove {
    return Intl.message("Video disapproved. Try again to get the badge.", name: "avBannerVideoNotApprove");
  }

  // 编号 250031
  // 认证成功wooplus消息
  String get verifiedSuccessMsg {
    return Intl.message("Congrats! 👏 Your video has passed the review and the badge has been added to your profile.", name: "verifiedSuccessMsg");
  }

  // 编号 250032
  // 认证失败wooplus消息
  String get verifiedFailMsg {
    return Intl.message("Your video didn't pass the review. Please try again by uploading a photo and video of yourself.", name: "verifiedFailMsg");
  }

  // 编号 250033
  // 新上传头像审核未通过，wooplus消息
  String get newPhotoWasDisapproved {
    return Intl.message("Your new photo was disapproved. For your main photo, it is only accepted with a clear image of your full face.", name: "newPhotoWasDisapproved");
  }

  // 编号 250034
  // 取消隐藏视频
  String get avShowMyVideo {
    return Intl.message("Show My Video", name: "avShowMyVideo");
  }

  // 编号 250035
  // 取消隐藏视频toast
  String get avToastVideoIsShown {
    return Intl.message("Your video is shown", name: "avToastVideoIsShown");
  }

  // 编号 250036
  // 被要求强制认证弹窗
  String get forceVerifiedTip {
    return Intl.message("Take a second to verify your photo and get more likes!", name: "forceVerifiedTip");
  }

  // 编号 250037
  // 强制认证审核中弹窗
  String get avYourVideoIsUnderReview {
    return Intl.message("Your video is under review. You'll get notified once it's approved.", name: "avYourVideoIsUnderReview");
  }

  // 编号 250038
  // 重传主头后对话框提示
  String get firstReplaceNewMainPhotoAlert {
    return Intl.message("This will be your new main photo after it's approved", name: "firstReplaceNewMainPhotoAlert");
  }

  // 编号 250039
  // 主头未通过审核，profile气泡
  String get noticeMainPhotoApproved {
    return Intl.message("Your new main photo has been approved", name: "noticeMainPhotoApproved");
  }

  // 编号 250040
  // 主头通过审核，profile气泡
  String get noticeMainPhotoNotApproved {
    return Intl.message("Your new main photo was not approved", name: "noticeMainPhotoNotApproved");
  }

  // 编号 250041
  // 视频认证在审核中，点击主图提示
  String get avVideoInReviewCantChangePhoto {
    return Intl.message("You can change main photo after the review of your video", name: "avVideoInReviewCantChangePhoto");
  }

  // 编号 250042
  // 图片、视频在审核中
  String get avInReview {
    return Intl.message("In Review", name: "avInReview");
  }

  // 编号 250043
  // 视频上传时返回对话框补充文案
  String get avUploadFailedExitAlert {
    return Intl.message("Your video will be discarded if you choose to leave now", name: "avUploadFailedExitAlert");
  }

  // 编号 250044
  // 确认离开
  String get avUploadFailedExitAlertConfirm {
    return Intl.message("Still Leave", name: "avUploadFailedExitAlertConfirm");
  }

  // 编号 250045
  // 视频上传出错
  String get avSomethingWrong {
    return Intl.message("Something went wrong, try again later", name: "avSomethingWrong");
  }

  // 编号 250046
  // 隐藏视频对话框正文
  String get avHideVideoTitle {
    return Intl.message("Sure not to show the video?", name: "avHideVideoTitle");
  }

  // 编号 250047
  // 隐藏视频后点击徽章标题
  String get avShowBadgeTitle {
    return Intl.message("Show your badge?", name: "avShowBadgeTitle");
  }

  // 编号 250048
  // 展示徽章
  String get avShowBadgeConfirm {
    return Intl.message("Show the Badge", name: "avShowBadgeConfirm");
  }

  // 编号 250049
  // 继续观看视频（无视频或视频被隐藏的用户观看3s视频后提示）
  String get avContinueViewing {
    return Intl.message("Continue Viewing", name: "avContinueViewing");
  }

  // 编号 250050
  // 将会展示你的视频（视频隐藏的用户)
  String get avContinueWithShowVideo {
    return Intl.message("This will let your video be shown in your profile", name: "avContinueWithShowVideo");
  }

  // 编号 250051
  // 需要自己拍摄视频（无视频用户）
  String get avContinueWithTakeVideo {
    return Intl.message("To continue viewing, film your own video too", name: "avContinueWithTakeVideo");
  }

  // 编号 250052
  // 视频展示后，倒计时20分钟，才能再次隐藏视频
  String hideVideoInCoolDownAlert(time) {
    return Intl.message("Once your video is shown, you can hide it after 20 minutes. $time minutes left now.", name: "hideVideoInCoolDownAlert", args: [time]);
  }

  // 编号 260000
  // 
  String get likesYou {
    return Intl.message("Likes You", name: "likesYou");
  }

  // 编号 260001
  // Free Trial弹窗主文案
  String get unlockLikesYou {
    return Intl.message("Unlock Likes You", name: "unlockLikesYou");
  }

  // 编号 260002
  // Free Trial弹窗补充文案
  String get likesYouUpgradedTips {
    return Intl.message("Into You has been upgraded to Likes You! We are offering you a free trial. (Available for 12h) Join to unlock and see all the likes you received now!", name: "likesYouUpgradedTips");
  }

  // 编号 260003
  // Free Trial弹窗button文案1
  String get unlockThemAll {
    return Intl.message("Unlock Them All", name: "unlockThemAll");
  }

  // 编号 260004
  // Free Trial弹窗button文案2
  String get goodButtonTitle {
    return Intl.message("I'm Good", name: "goodButtonTitle");
  }

  // 编号 260005
  // Free Trial 倒计时button文案
  String endingTime(countdown) {
    return Intl.message("Ends in $countdown", name: "endingTime", args: [countdown]);
  }

  // 编号 260006
  // Likes You里点击带new的profile弹出的购买页文案
  String get whoLikedYou {
    return Intl.message("Check out who liked you while it's fresh", name: "whoLikedYou");
  }

  // 编号 260007
  // Likes You里点击带button或向下滑的profile弹出的购买页文案
  String get likesNumber {
    return Intl.message("You've been liked! Stop waiting and explore the possibilities now!", name: "likesNumber");
  }

  // 编号 260008
  // 幸运抽奖入口button
  String get luckyDraw {
    return Intl.message("Lucky Draw", name: "luckyDraw");
  }

  // 编号 260009
  // 抽奖卡片里是可match的用户时button
  String get matchChat {
    return Intl.message("Match & Chat", name: "matchChat");
  }

  // 编号 260010
  // 关闭卡片页面确认弹窗主文案
  String get sureToLeave {
    return Intl.message("Sure to leave?", name: "sureToLeave");
  }

  // 编号 260011
  // 关闭卡片页面确认弹窗说明文案
  String stillLeaveTips(userName) {
    return Intl.message("You might miss the chance to connect with $userName now. And you have to wait till tomorrow to draw again.", name: "stillLeaveTips", args: [userName]);
  }

  // 编号 260012
  // 关闭卡片页面确认弹窗button文案
  String get letMeThink {
    return Intl.message("Let Me Think", name: "letMeThink");
  }

  // 编号 260013
  // Lucky draw抽到VIP折扣卡标题
  String get luckyDay {
    return Intl.message("It's Your Lucky Day", name: "luckyDay");
  }

  // 编号 260014
  // Lucky draw抽到VIP折扣卡说明
  String get unlockChanceTips {
    return Intl.message("You get a chance to unlock all those who liked you and more at a favorable price!", name: "unlockChanceTips");
  }

  // 编号 260015
  // 关闭VIP折扣卡确认弹窗主文案
  String get vipCheckTips {
    return Intl.message("Special offer not claimed, check again?", name: "vipCheckTips");
  }

  // 编号 260016
  // 关闭VIP折扣卡确认弹窗说明文案
  String get darwAgainTips {
    return Intl.message("Unlock all those who liked you at a better price! Or you have to wait till tomorrow to draw again.", name: "darwAgainTips");
  }

  // 编号 260017
  // 移除
  String get removeButtonTitle {
    return Intl.message("Remove", name: "removeButtonTitle");
  }

  // 编号 260018
  // 移除Likes You里的人弹窗主文案
  String removeUser(userName) {
    return Intl.message("Remove $userName from Likes You?", name: "removeUser", args: [userName]);
  }

  // 编号 260019
  // VIP进入可match卡片时气泡
  String likeBackTips(userName) {
    return Intl.message("$userName likes you. Like back and match now!", name: "likeBackTips", args: [userName]);
  }

  // 编号 260020
  // VIP进入已match卡片时气泡
  String get startChatting {
    return Intl.message("You've already matched. Start chatting now!", name: "startChatting");
  }

  // 编号 260021
  // VIP没有喜欢了我的人下方文案
  String get completeProfileTips {
    return Intl.message("No likes...Yet. Do your endeavor to make your profile more appealing to receive more likes.", name: "completeProfileTips");
  }

  // 编号 260022
  // 模糊卡片随机滚动文案1
  String crushTips(userName) {
    return Intl.message("$userName has a crush on you 100%! 💘", name: "crushTips", args: [userName]);
  }

  // 编号 260023
  // 模糊卡片随机滚动文案2
  String checkOutTips(gender, userName) {
    return Intl.gender(gender, male: "Maybe $userName is the one. Check him out!", female: "Maybe $userName is the one. Check her out! ", other: "Maybe $userName is the one", name: 'checkOutTips', args: [gender, userName]);
  }

  // 编号 260024
  // 模糊卡片随机滚动文案3
  String gugeLike(userName) {
    return Intl.message("$userName sent you a HUGE like. Tap and See!", name: "gugeLike", args: [userName]);
  }

  // 编号 260025
  // 模糊卡片随机滚动文案4
  String attentionTips(userName) {
    return Intl.message("$userName wants your attention!", name: "attentionTips", args: [userName]);
  }

  // 编号 260026
  // 模糊卡片随机滚动文案5
  String likeSomeOneBackTips(gender, userName) {
    return Intl.gender(gender, male: "$userName, a hottie liked you. Like him back? 😉", female: "$userName, a hottie liked you. Like her back? 😉", other: "$userName, a hottie liked you. Like back? 😉", name: 'likeSomeOneBackTips', args: [gender, userName]);
  }

  // 编号 260027
  // 在likes you页面有新likes时，提醒刷新
  String get likeYouNewDataToRefresh {
    return Intl.message("New Likes! Tap to refresh.", name: "likeYouNewDataToRefresh");
  }

  // 编号 260028
  // 不可用likes被移除后，VIP说明文案
  String get likeYouDataDelete {
    return Intl.message("Unavailable users removed. Check out those who are still waiting here. 🥰", name: "likeYouDataDelete");
  }

  // 编号 260029
  // 不可用likes被移除后，普通用户说明文案
  String get likeYouDataDeleteToast {
    return Intl.message("Unavailable users removed", name: "likeYouDataDeleteToast");
  }

  // 编号 260100
  // 感恩节促销页标题
  String get thanksgivingSpecialTips {
    return Intl.message("Thanksgiving Special Offer", name: "thanksgivingSpecialTips");
  }

  // 编号 260101
  // 感恩节的闹钟Notification的标题
  String get thanksgivingBeginsTips {
    return Intl.message("Thanksgiving Special Offer", name: "thanksgivingBeginsTips");
  }

  // 编号 260102
  // 感恩节的闹钟Notification的正文
  String get thanksgivingSpecialForYouTips {
    return Intl.message("Here's our Thanksgiving Special just for you!", name: "thanksgivingSpecialForYouTips");
  }

  // 编号 260107
  // 活动暂未开始，稍后查看
  String get eventsNotStart {
    return Intl.message("The event hasn't started. Check it out later.", name: "eventsNotStart");
  }

  // 编号 270001
  // IAE活动页[抽卡]按钮
  String get eventsBtnShoot {
    return Intl.message("Shoot Your Shot", name: "eventsBtnShoot");
  }

  // 编号 270002
  // IAE卡片弹窗[不感兴趣]按钮
  String get eventsBtnNotInterst {
    return Intl.message("Not Interested", name: "eventsBtnNotInterst");
  }

  // 编号 270003
  // IAE卡片页[机会已用尽]按钮
  String get eventsOutOf {
    return Intl.message("Out of Chances", name: "eventsOutOf");
  }

  // 编号 280001
  // 礼盒文案
  String get christmasPushTitle {
    return Intl.message("Merry Christmas!", name: "christmasPushTitle");
  }

  // 编号 280003
  // 礼盒文案
  String get newYearPushTitle {
    return Intl.message("Happy New Year!", name: "newYearPushTitle");
  }

  // 编号 280009
  // 骨折价商品限时说明文案
  String saleTime(time) {
    return Intl.message("8:00~$time PM Only", name: "saleTime", args: [time]);
  }

  // 编号 280010
  // 贺卡保存按钮
  String get saveToAlbum {
    return Intl.message("Save to album", name: "saveToAlbum");
  }

  // 编号 280011
  // 今日促销购买页剩余促销商品说明文案
  String get saleProgressBarTitleToday {
    return Intl.message("Today's time-limited offers remaining", name: "saleProgressBarTitleToday");
  }

  // 编号 280012
  // 昨天促销购买页剩余促销商品说明文案
  String get saleProgressBarTitleYesterday {
    return Intl.message("Yesterday's time-limited offers were sold out", name: "saleProgressBarTitleYesterday");
  }

  // 编号 280013
  // 设置本地闹钟toast文案（当日晚8点前）
  String get saleProductToast {
    return Intl.message("An alarm is set for you at 8pm tonight, so remember to seize the time-limited offer then", name: "saleProductToast");
  }

  // 编号 280026
  // 设置本地闹钟toast文案（当日晚8点后）
  String get saleProductToastTomorrow {
    return Intl.message("An alarm is set for you at 8pm tomorrow, so remember to seize the time-limited offer then", name: "saleProductToastTomorrow");
  }

  // 编号 280014
  // 活动促销时段内前台HUD提示文案
  String get festivalNotifyHUDContent {
    return Intl.message("A time-limited offer is waiting for you: the lowest price of the year! Check it out!", name: "festivalNotifyHUDContent");
  }

  // 编号 280015
  // 活动未开启前通过IAE进入App的弹窗文案
  String get festivalClickIOSEventNormalDialogContent {
    return Intl.message("The event will begin in 36 hours.\nRemember to come in time.", name: "festivalClickIOSEventNormalDialogContent");
  }

  // 编号 280016
  // 已参加过活动的用户通过IAE进入App的弹窗文案
  String get festivalClickIOSEventVipDialogContent {
    return Intl.message("You have already participated in this event.\nWe will inform you of more events in the future.", name: "festivalClickIOSEventVipDialogContent");
  }

  // 编号 280017
  // 贺卡页滚动提示文案
  String get swipeToSurprise {
    return Intl.message("SWIPE TO SURPRISE", name: "swipeToSurprise");
  }

  // 编号 280018
  // 促销购买页Title文案
  String get christmasTitle {
    return Intl.message("Christmas Special Offer", name: "christmasTitle");
  }

  // 编号 280019
  // 促销购买页Title文案
  String get newYearTitle {
    return Intl.message("New Year Special Offer", name: "newYearTitle");
  }

  // 编号 280019
  // 产品首次订阅价格/产品首次订阅月数
  String onlyPerMonth(averageprice) {
    return Intl.message("Only $averageprice per month", name: "onlyPerMonth", args: [averageprice]);
  }

  // 编号 280021
  // 前3月为推介价XXX，然后为每3月价格XXX
  String promotionPriceDesc3Month(introductoryPrice, originalPrice) {
    return Intl.message("$introductoryPrice for first 3 months, then $originalPrice per 3 months", name: "promotionPriceDesc3Month", args: [introductoryPrice, originalPrice]);
  }

  // 编号 280022
  // 
  String get saveSuccessfully {
    return Intl.message("Save successfully", name: "saveSuccessfully");
  }

  // 编号 280023
  // 
  String get saveFail {
    return Intl.message("Failed to save, please try again", name: "saveFail");
  }

  // 编号 280024
  // 圣诞本地推送文案
  String christmasPush(userName) {
    return Intl.message("Hey, $userName, our Christmas sale is on for a limited time! Don't miss out on the lowest prices of the year. Grab it now!", name: "christmasPush", args: [userName]);
  }

  // 编号 280025
  // 新年本地推送文案
  String newYearPush(userName) {
    return Intl.message("Happy New Year, $userName, we've got a limited-time discount: the lowest prices of the year on our memberships for you. Check it out!", name: "newYearPush", args: [userName]);
  }

  // 编号 280026
  // 礼盒文案
  String get valentinePushTitle {
    return Intl.message("Happy Valentine's Day!", name: "valentinePushTitle");
  }

  // 编号 280028
  // 促销购买页Title文案
  String get valentineTitle {
    return Intl.message("Valentine's Day Special Offer", name: "valentineTitle");
  }

  // 编号 280029
  // 情人节本地推送文案
  String valentinePush(userName) {
    return Intl.message("Hey, $userName, our Valentine's Day sale is on for a limited time! Don't miss out on the lowest prices of the year. Grab it now!", name: "valentinePush", args: [userName]);
  }

  // 编号 280030
  // me页面促销开关提醒
  String get promotionSaleTip {
    return Intl.message("Allow WooPlus to notify you of special offers and promotions and much more!", name: "promotionSaleTip");
  }

  // 编号 280031
  // me页面促销开关提醒，打开后的toast
  String get promotionSaleOpenTip {
    return Intl.message("You'll be notified when there’s a great deal", name: "promotionSaleOpenTip");
  }

  // 编号 280032
  // 取消购买后促销抽优惠券页面的title
  String purchaseRetentionTitle(price) {
    return Intl.message("Grab your exclusive gift, up to $price！", name: "purchaseRetentionTitle", args: [price]);
  }

  // 编号 280033
  // 取消购买后促销抽优惠券页面,抽出优惠券后的提醒文案
  String get purchaseRetentionCongrats {
    return Intl.message("Congrats! You picked our biggest gift, use it as the time-limited voucher for VIP membership!", name: "purchaseRetentionCongrats");
  }

  // 编号 280034
  // 取消购买后促销抽优惠券页面，购买按钮
  String get purchaseRetentionUseBtn {
    return Intl.message("Use It Now", name: "purchaseRetentionUseBtn");
  }

  // 编号 280035
  // 取消购买后促销抽优惠券页面，倒计时文案
  String purchaseRetentionExpiredTime(time) {
    return Intl.message("Voucher expired in $time", name: "purchaseRetentionExpiredTime", args: [time]);
  }

  // 编号 280036
  // 活动结束点击button，toast提示
  String get purchaseRetentionExpiredToast {
    return Intl.message("Special offer ended. Stay tuned for more promotions in the future!", name: "purchaseRetentionExpiredToast");
  }

  // 编号 280037
  // 复活节本地推送文案
  String easterPush(userName) {
    return Intl.message("Hey, $userName, our Easter sale is on for a limited time! Don't miss out on the lowest prices of the year. Grab it now!", name: "easterPush", args: [userName]);
  }

  // 编号 280038
  // 复活节礼盒标题
  String get easterPushTitle {
    return Intl.message("Happy Easter!", name: "easterPushTitle");
  }

  // 编号 280043
  // 复活节促销购买页标题
  String get easterTitle {
    return Intl.message("Easter Day Special Offer", name: "easterTitle");
  }

  // 编号 280044
  // 促销购买页Title文案
  String get summerDayTitle {
    return Intl.message("Summer Date Special Offer", name: "summerDayTitle");
  }

  // 编号 280045
  // 推送 title
  String get summerDayPushTitle {
    return Intl.message("Get Ready for Your Summer Date!", name: "summerDayPushTitle");
  }

  // 编号 280046
  // 夏日约会节本地推送文案
  String summerDayPushContent(userName) {
    return Intl.message("Hey, $userName, our Summer Date is on for a limited time! Don't miss out on the lowest prices of the year. Grab it now!", name: "summerDayPushContent", args: [userName]);
  }

  // 编号 280047
  // 
  String get ForYou_inviteFollow_PageText1 {
    return Intl.message("Want the second chance to say hi?", name: "ForYou_inviteFollow_PageText1");
  }

  // 编号 280048
  // 
  String get ForYou_inviteFollow_PageText2 {
    return Intl.message("Just like WooPlus page on Facebook to unlock it. Stay tuned for more amazing content!", name: "ForYou_inviteFollow_PageText2");
  }

  // 编号 280049
  // 
  String get ForYou_inviteFollowSure_Button {
    return Intl.message("Like WooPlus Page Now", name: "ForYou_inviteFollowSure_Button");
  }

  // 编号 280050
  // 
  String get ForYou_inviteFollowGetVip_PageText2 {
    return Intl.message("Or get VIP to send Say Hi and more", name: "ForYou_inviteFollowGetVip_PageText2");
  }

  // 编号 280051
  // 
  String get ForYou_followSuccess_BubbleText1 {
    return Intl.message("Thanks for following. Enjoy the free Say Hi now.", name: "ForYou_followSuccess_BubbleText1");
  }

  // 编号 280053
  // 
  String get Sign_EmailInputHint_ItemText {
    return Intl.message("Enter Your Email", name: "Sign_EmailInputHint_ItemText");
  }

  // 编号 280054
  // 
  String get Sign_PasswordInputHint_ItemText {
    return Intl.message("Enter Your Password", name: "Sign_PasswordInputHint_ItemText");
  }

  // 编号 280055
  // 
  String get Sign_SignUpEmailExist_AppBarTitle {
    return Intl.message("This Email Is Taken", name: "Sign_SignUpEmailExist_AppBarTitle");
  }

  // 编号 280056
  // 
  String get Sign_TryNewEmail_AppBarTitle {
    return Intl.message("Try Another Email", name: "Sign_TryNewEmail_AppBarTitle");
  }

  // 编号 280057
  // 
  String get Sign_SignUpEmailExistWarning_PageText2 {
    return Intl.message("This email is taken. Try another or", name: "Sign_SignUpEmailExistWarning_PageText2");
  }

  // 编号 280058
  // 
  String get Sign_SignInExistEmail_Button {
    return Intl.message("Log In", name: "Sign_SignInExistEmail_Button");
  }

  // 编号 280059
  // 
  String Sign_SignUpEmailExist_PageText1(email) {
    return Intl.message("$email exists already. Try another to continue.", name: "Sign_SignUpEmailExist_PageText1", args: [email]);
  }

  // 编号 280060
  // 
  String get Sign_SignInEmailNotExist_AppBarTitle {
    return Intl.message("Account Doesn't Exist", name: "Sign_SignInEmailNotExist_AppBarTitle");
  }

  // 编号 280061
  // 
  String get Sign_SignInEmailNotExistWarning_PageText2 {
    return Intl.message("Couldn't find a WooPlus account under this email. Try another or", name: "Sign_SignInEmailNotExistWarning_PageText2");
  }

  // 编号 280062
  // 
  String get Sign_SignUpExistEmail_Button {
    return Intl.message("Sign Up", name: "Sign_SignUpExistEmail_Button");
  }

  // 编号 280063
  // 
  String get Sign_LastStep_PageText1 {
    return Intl.message("One last step to go\nyour display name", name: "Sign_LastStep_PageText1");
  }

  // 编号 280064
  // 
  String get Sign_SignInExistAccount_Button {
    return Intl.message("Log In", name: "Sign_SignInExistAccount_Button");
  }

  // 编号 280065
  // 
  String get Sign_NameInputHint_ItemText {
    return Intl.message("Enter Your Display Name", name: "Sign_NameInputHint_ItemText");
  }

  // 编号 280066
  // 
  String Sign_LastSignInWelcome_PageText1(userName) {
    return Intl.message("$userName, we miss you already!", name: "Sign_LastSignInWelcome_PageText1", args: [userName]);
  }

  // 编号 280067
  // 
  String get Profile_AddInterests_Button {
    return Intl.message("Add Interests", name: "Profile_AddInterests_Button");
  }

  // 编号 280068
  // 
  String get Sign_ConfirmationCodeInputHint_ItemText {
    return Intl.message("Enter Your Confirmation Code", name: "Sign_ConfirmationCodeInputHint_ItemText");
  }

  // 编号 280069
  // 
  String get Sign_AppleSignInError_ToastText {
    return Intl.message("Something went wrong with Apple. Try it again.", name: "Sign_AppleSignInError_ToastText");
  }

  // 编号 280070
  // 
  String get Sign_GoogleSignInError_ToastText {
    return Intl.message("Something went wrong with Google. Try it again.", name: "Sign_GoogleSignInError_ToastText");
  }

  // 编号 280071
  // 
  String get Purchase_AutumnDayTitle_AppBarTitle {
    return Intl.message("\"Fall\" in love Special Offer", name: "Purchase_AutumnDayTitle_AppBarTitle");
  }

  // 编号 280072
  // 
  String get Purchase_AutumnDayPushTitle_PageText1 {
    return Intl.message("\"Fall\" in love on WooPlus!", name: "Purchase_AutumnDayPushTitle_PageText1");
  }

  // 编号 280073
  // 
  String get Purchase_AutumnDayPushContent_PageText2 {
    return Intl.message("This is a \"Fall\" in love gift from WooPlus, open and see what's in it!", name: "Purchase_AutumnDayPushContent_PageText2");
  }

  // 编号 280074
  // 
  String get Setting_CancelSubscription_Button {
    return Intl.message("Cancel Subscription", name: "Setting_CancelSubscription_Button");
  }

  // 编号 280075
  // 
  String get Purchase_CancelSubscriptionTitle_DialogText1 {
    return Intl.message("Sure you want to cancel?", name: "Purchase_CancelSubscriptionTitle_DialogText1");
  }

  // 编号 280076
  // 
  String get Purchase_CancelSubscriptionDescription_DialogText2 {
    return Intl.message("All VIP privileges including unlimited messages, seeing profiles of who liked you, and more will be removed when this billing period ends", name: "Purchase_CancelSubscriptionDescription_DialogText2");
  }

  // 编号 280077
  // 
  String get Purchase_CancelSubscriptionConfirm_Button {
    return Intl.message("Confirm", name: "Purchase_CancelSubscriptionConfirm_Button");
  }

  // 编号 280078
  // 
  String get Purchase_CancelSubscriptionKeep_Button {
    return Intl.message("Keep My VIP Privileges", name: "Purchase_CancelSubscriptionKeep_Button");
  }

  // 编号 280079
  // 
  String get Profile_LikeManyTimes_ToastText {
    return Intl.message("Like already sent. Maybe try sending messages to increase the odds.", name: "Profile_LikeManyTimes_ToastText");
  }

  // 编号 280080
  // 
  String get Purchase_HalloweenTitle_AppBarTitle {
    return Intl.message("Halloween Un-Ghost Offer", name: "Purchase_HalloweenTitle_AppBarTitle");
  }

  // 编号 280081
  // 
  String get Purchase_HalloweenPushTitle_PageText1 {
    return Intl.message("Happy Halloween!", name: "Purchase_HalloweenPushTitle_PageText1");
  }

  // 编号 280082
  // 
  String get Purchase_HalloweenPushContent_PageText2 {
    return Intl.message("This is an \"Un-Ghost\" gift from WooPlus, open and see what's in it!", name: "Purchase_HalloweenPushContent_PageText2");
  }

  // 编号 280083
  // 
  String get Purchase_ThanksgivingTitle_AppBarTitle {
    return Intl.message("Thanksgiving Holiday Offer", name: "Purchase_ThanksgivingTitle_AppBarTitle");
  }

  // 编号 280084
  // 
  String get Purchase_ThanksgivingPushTitle_PageText1 {
    return Intl.message("Happy Thanksgiving!", name: "Purchase_ThanksgivingPushTitle_PageText1");
  }

  // 编号 280085
  // 
  String get Purchase_ThanksgivingPushContent_PageText2 {
    return Intl.message("This is a Thanksgiving gift from WooPlus, open and see what's in it!", name: "Purchase_ThanksgivingPushContent_PageText2");
  }

  // 编号 280086
  // 
  String get Moment_SelfContentShowMore_ItemText {
    return Intl.message("Show More", name: "Moment_SelfContentShowMore_ItemText");
  }

  // 编号 280087
  // 
  String get Moment_SelfContentShowLess_ItemText {
    return Intl.message("Show Less", name: "Moment_SelfContentShowLess_ItemText");
  }

  // 编号 280088
  // 
  String Common_ReportFeedbackMessage_ItemText(userName, reportUserName) {
    return Intl.message("REPORT RECEIVED\n\nDear user, \n\nI'm $userName, WooPlus moderator. Your report against $reportUserName has been received and I will be reviewing it. Measures will be taken accordingly.\n\nNote: It might take a while to go through the details. Thank you for your time. We wish you all the best on WooPlus.", name: "Common_ReportFeedbackMessage_ItemText", args: [userName, reportUserName]);
  }

  // 编号 280089
  // 
  String get Common_ReportTooOftenTips_ItemText {
    return Intl.message("You're reporting too often. Try it later.", name: "Common_ReportTooOftenTips_ItemText");
  }

  // 编号 280090
  // 
  String get Purchase_RewindLike_ItemTitle {
    return Intl.message("Unlimited Rewinds", name: "Purchase_RewindLike_ItemTitle");
  }

  // 编号 280091
  // 
  String get Purchase_RewindLike_ItemText {
    return Intl.message("Go back and try again!", name: "Purchase_RewindLike_ItemText");
  }

  // 编号 280092
  // 
  String Common_ReportResultFeedbackMessage_ItemText(reportUserName, reportDate) {
    return Intl.message("REPORT FEEDBACK\n\nDear user,\n\nUser: $reportUserName you reported on $reportDate has been permanently banned by WooPlus. Thank you for helping keep WooPlus a positive community.", name: "Common_ReportResultFeedbackMessage_ItemText", args: [reportUserName, reportDate]);
  }

  // 编号 280093
  // 
  String ForYou_LikeGuideTip_BubbleText1(gender, ) {
    return Intl.gender(gender, male: "Interested in him?\n Like him.", female: "Interested in her?\n Like her.", other: "Interested?\n Like now.", name: 'ForYou_LikeGuideTip_BubbleText1', args: [gender, ]);
  }

  // 编号 280094
  // 
  String ForYou_PassGuideTip_BubbleText1(gender, ) {
    return Intl.gender(gender, male: "Not your type?\n Pass him.", female: "Not your type?\n Pass her.", other: "Not your type?\n Pass.", name: 'ForYou_PassGuideTip_BubbleText1', args: [gender, ]);
  }

  // 编号 280095
  // 
  String ForYou_LikeIntro_HudText1(userName) {
    return Intl.message("If $userName likes you too, you two will match and chat free", name: "ForYou_LikeIntro_HudText1", args: [userName]);
  }

  // 编号 280096
  // 
  String ForYou_PassIntro_HudText1(userName) {
    return Intl.message("$userName will not be recommended to you in For You in a period of time", name: "ForYou_PassIntro_HudText1", args: [userName]);
  }

  // 编号 280097
  // 
  String ForYou_SayHiGuideContent_DialogText1(userName) {
    return Intl.message("Send Greeting to $userName", name: "ForYou_SayHiGuideContent_DialogText1", args: [userName]);
  }

  // 编号 280098
  // 
  String get ForYou_SayHiGuideSure_ActionListText {
    return Intl.message("Greeting Now", name: "ForYou_SayHiGuideSure_ActionListText");
  }

  // 编号 280099
  // 
  String get ForYou_SayHiGuideCancel_ActionListText {
    return Intl.message("Cancel", name: "ForYou_SayHiGuideCancel_ActionListText");
  }

  // 编号 280100
  // 
  String get Sign_ContinueWithPhone_Button {
    return Intl.message("Continue With Phone", name: "Sign_ContinueWithPhone_Button");
  }

  // 编号 280101
  // 
  String get Sign_PhoneInputTitle_ItemText {
    return Intl.message("Phone number", name: "Sign_PhoneInputTitle_ItemText");
  }

  // 编号 280102
  // 
  String get Sign_SignInEmailNotExistWarning2_PageText2 {
    return Intl.message("Couldn’t find a WooPlus account linking to this email. Please try an existing email.", name: "Sign_SignInEmailNotExistWarning2_PageText2");
  }

  // 编号 280103
  // 
  String get Sign_CountryCodeSelectTitle_PageText1 {
    return Intl.message("Country / Region", name: "Sign_CountryCodeSelectTitle_PageText1");
  }

  // 编号 280104
  // 
  String get Sign_CountryCodeSearchHint_PageText2 {
    return Intl.message("Country / Area code", name: "Sign_CountryCodeSearchHint_PageText2");
  }

  // 编号 280105
  // 
  String get Sign_CountryCodeSearchEmpty_PageText2 {
    return Intl.message("Couldn't find that country, \n please try again", name: "Sign_CountryCodeSearchEmpty_PageText2");
  }

  // 编号 280106
  // 
  String get Sign_PhoneInputHelperText_PageText2 {
    return Intl.message("By continuing, you agree to receive a text message from WooPlus for account authentication", name: "Sign_PhoneInputHelperText_PageText2");
  }

  // 编号 280107
  // 
  String get Sign_PhoneCodeResend_PageText2 {
    return Intl.message("Resend", name: "Sign_PhoneCodeResend_PageText2");
  }

  // 编号 280108
  // 
  String Sign_PhoneCodeResendRemain_PageText2(second) {
    return Intl.message("Resend code in $second s", name: "Sign_PhoneCodeResendRemain_PageText2", args: [second]);
  }

  // 编号 280109
  // 
  String get Sign_PhoneCodeEnterTip_PageText1 {
    return Intl.message("Enter verification code", name: "Sign_PhoneCodeEnterTip_PageText1");
  }

  // 编号 280110
  // 
  String get Sign_PhoneCodeSentTo_PageText2 {
    return Intl.message("sent to", name: "Sign_PhoneCodeSentTo_PageText2");
  }

  // 编号 280111
  // 
  String get Sign_SignInPhoneNotExistWarning_PageText2 {
    return Intl.message("Couldn't found a WooPlus account linking to this number. Please try another one.", name: "Sign_SignInPhoneNotExistWarning_PageText2");
  }

  // 编号 280112
  // 
  String get Sign_PhoneCodeVerifyFailed_PageText2 {
    return Intl.message("Invalid or expired verification code. Please try again.", name: "Sign_PhoneCodeVerifyFailed_PageText2");
  }

  // 编号 280113
  // 
  String get Sign_PhoneCodeSendTooOften_ToastText {
    return Intl.message("You're trying too often", name: "Sign_PhoneCodeSendTooOften_ToastText");
  }

  // 编号 280114
  // 
  String get Sign_LastLoggedInPhoneNotExist_ItemText {
    return Intl.message("Couldn't found a WooPlus account linking to this number.", name: "Sign_LastLoggedInPhoneNotExist_ItemText");
  }

  // 编号 280115
  // 
  String get Purchase_iOSPromotionHadUse_PageText2 {
    return Intl.message("This Apple ID has previously enjoyed an introductory offer. That’s why it shows the full subscription price here.", name: "Purchase_iOSPromotionHadUse_PageText2");
  }

  // 编号 280116
  // 
  String ForYou_LikeIntro_DialogText1(userName) {
    return Intl.message("Like $userName?", name: "ForYou_LikeIntro_DialogText1", args: [userName]);
  }

  // 编号 280117
  // 
  String get Chat_IreneIntro_pageText1 {
    return Intl.message("I'm Irene, your love advisor.😊\nI'm here to assist you on your love journey.", name: "Chat_IreneIntro_pageText1");
  }

  // 编号 280118
  // 
  String get Chat_IreneItemToday_ItemText {
    return Intl.message("Today", name: "Chat_IreneItemToday_ItemText");
  }

  // 编号 280119
  // 
  String Chat_IreneItemDays_ItemText(howMany) {
    return Intl.plural(howMany, one: "1 Day Ago", other: "$howMany Days Ago", name: 'Chat_IreneItemDays_ItemText', args: [howMany]);
  }

  // 编号 280120
  // 
  String Chat_IreneItemWeeks_ItemText(howMany) {
    return Intl.plural(howMany, one: "1 Week Ago", other: "$howMany Weeks Ago", name: 'Chat_IreneItemWeeks_ItemText', args: [howMany]);
  }

  // 编号 280121
  // 
  String Chat_IreneItemPerviousMatch_ItemText(userName) {
    return Intl.message("Previous match with $userName", name: "Chat_IreneItemPerviousMatch_ItemText", args: [userName]);
  }

  // 编号 280122
  // 
  String get Chat_IreneItemRestartChat_ItemText {
    return Intl.message("Restart the Chat", name: "Chat_IreneItemRestartChat_ItemText");
  }

  // 编号 280123
  // 
  String Chat_IreneItemChatEnd_ItemText(userName) {
    return Intl.message("Chat ended by $userName", name: "Chat_IreneItemChatEnd_ItemText", args: [userName]);
  }

  // 编号 280124
  // 
  String get Chat_IreneItemViewHistory_ItemText {
    return Intl.message("View the Chat History", name: "Chat_IreneItemViewHistory_ItemText");
  }

  // 编号 280125
  // 
  String get Chat_IreneDeleteTitle_DialogText1 {
    return Intl.message("Are you sure to delete this?", name: "Chat_IreneDeleteTitle_DialogText1");
  }

  // 编号 280126
  // 
  String Chat_IreneDeleteHistoryContent_DialogText2(userName) {
    return Intl.message("Your chat history with $userName will be permanently deleted", name: "Chat_IreneDeleteHistoryContent_DialogText2", args: [userName]);
  }

  // 编号 280127
  // 
  String Chat_RestartExpiredMatch_ItemText(userName) {
    return Intl.message("It's been a while since you matched with $userName. Send a message to restart the chat.", name: "Chat_RestartExpiredMatch_ItemText", args: [userName]);
  }

  // 编号 280128
  // 
  String Chat_ChatEndedMessageTip_ItemText(gender, userName) {
    return Intl.gender(gender, male: "$userName just ended the chat and you will not be able to message him for a period of time.", female: "$userName just ended the chat and you will not be able to message her for a period of time.", other: "$userName just ended the chat and you will not be able to message him for a period of time.", name: 'Chat_ChatEndedMessageTip_ItemText', args: [gender, userName]);
  }

  // 编号 280129
  // 
  String Chat_IreneChatEndedMessageTip_ItemText(gender, userName) {
    return Intl.gender(gender, male: "$userName ended the chat and you will not be able to message him for a period of time.", female: "$userName ended the chat and you will not be able to message her for a period of time.", other: "$userName ended the chat and you will not be able to message him for a period of time.", name: 'Chat_IreneChatEndedMessageTip_ItemText', args: [gender, userName]);
  }

  // 编号 280130
  // 
  String Chat_ChatEndedSheetTitle_DialogText1(userName) {
    return Intl.message("End the Chat with $userName", name: "Chat_ChatEndedSheetTitle_DialogText1", args: [userName]);
  }

  // 编号 280131
  // 
  String Chat_ChatEndedSheetContent_DialogText2(userName) {
    return Intl.message("$userName will not be able to send you any messages for a while, and your chat history will be permanently deleted", name: "Chat_ChatEndedSheetContent_DialogText2", args: [userName]);
  }

  // 编号 280132
  // 
  String get Chat_ChatEndedSure_ActionListText {
    return Intl.message("End the Chat", name: "Chat_ChatEndedSure_ActionListText");
  }

  // 编号 280133
  // 
  String Chat_ChatEndedTip_ToastText(userName) {
    return Intl.message("Your chat with $userName has been ended", name: "Chat_ChatEndedTip_ToastText", args: [userName]);
  }

  // 编号 280134
  // 
  String get Chat_UnableSendMessageTitle_DialogText1 {
    return Intl.message("Unable to send a message", name: "Chat_UnableSendMessageTitle_DialogText1");
  }

  // 编号 280135
  // 
  String Chat_UnableSendMessageContent_DialogText1(gender, userName) {
    return Intl.gender(gender, male: "Your chat with $userName was recently ended and you are unable to send messages to him for a period of time. ", female: "Your chat with $userName was recently ended and you are unable to send messages to her for a period of time.", other: "Your chat with $userName was recently ended and you are unable to send messages to him for a period of time.", name: 'Chat_UnableSendMessageContent_DialogText1', args: [gender, userName]);
  }

  // 编号 280136
  // 进入一个需要金币功能页面主文案
  String get Purchase_ExchangePageTitle_PageText1 {
    return Intl.message("This feature requires \n new tokens", name: "Purchase_ExchangePageTitle_PageText1");
  }

  // 编号 280137
  // 进入一个需要金币功能页面辅助文案
  String Purchase_ExchangePageTipDes_PageText2(num) {
    return Intl.plural(num, one: "We upgraded our token system and your one coin will be transferred to diamonds at a certain ratio", other: "We upgraded our token system and your $num coins will be transferred to diamonds at a certain ratio", name: 'Purchase_ExchangePageTipDes_PageText2', args: [num]);
  }

  // 编号 280138
  // 直接从Me, 钻石页面进入，主文案
  String get Purchase_ExchangePageMeTitle_PageText1 {
    return Intl.message("Token system upgraded", name: "Purchase_ExchangePageMeTitle_PageText1");
  }

  // 编号 280139
  // 直接从Me, 钻石页面进入，辅助文案
  String Purchase_ExchangePageMeTipDes_PageText2(num) {
    return Intl.plural(num, one: "Your one coin will be transferred to diamonds at a certain ratio", other: "Your $num coins will be transferred to diamonds at a certain ratio", name: 'Purchase_ExchangePageMeTipDes_PageText2', args: [num]);
  }

  // 编号 280140
  // 
  String get Purchase_Continue_Button {
    return Intl.message("Continue", name: "Purchase_Continue_Button");
  }

  // 编号 280141
  // 兑换中
  String get Purchase_ExchangePageInExchange_PageText2 {
    return Intl.message("Transferring", name: "Purchase_ExchangePageInExchange_PageText2");
  }

  // 编号 280142
  // 兑换中辅助文案
  String get Purchase_ExchangePageInExchangeDes_PageText2 {
    return Intl.message("Please wait a few seconds", name: "Purchase_ExchangePageInExchangeDes_PageText2");
  }

  // 编号 280143
  // 使用钻石你可以
  String get Purchase_ExchangePageDiamondCan_PageText2 {
    return Intl.message("With diamonds, you can", name: "Purchase_ExchangePageDiamondCan_PageText2");
  }

  // 编号 280144
  // 钻石功能1
  String get Purchase_ExchangePageUseTip1_PageText2 {
    return Intl.message("Send greetings with a personalized text", name: "Purchase_ExchangePageUseTip1_PageText2");
  }

  // 编号 280145
  // 钻石功能2
  String get Purchase_ExchangePageUseTip2_PageText2 {
    return Intl.message("Buy gifts for people you like to get their attention", name: "Purchase_ExchangePageUseTip2_PageText2");
  }

  // 编号 280146
  // 钻石功能3
  String get Purchase_ExchangePageUseTip3_PageText2 {
    return Intl.message("Increase your profile exposure rate", name: "Purchase_ExchangePageUseTip3_PageText2");
  }

  // 编号 280147
  // 兑换成功主文案
  String get Purchase_ExchangePageExchangeDone_PageText2 {
    return Intl.message("Transfer succeeded", name: "Purchase_ExchangePageExchangeDone_PageText2");
  }

  // 编号 280148
  // 兑换成功辅助文案
  String get Purchase_ExchangePageCheckUse_PageText2 {
    return Intl.message("Enjoy our new diamond system to the fullest!", name: "Purchase_ExchangePageCheckUse_PageText2");
  }

  // 编号 280149
  // 已经加入你的账号
  String get Purchase_ExchangePageExchangeToAccount_PageText2 {
    return Intl.message("added to your account", name: "Purchase_ExchangePageExchangeToAccount_PageText2");
  }

  // 编号 280150
  // 钻石商店title
  String get Purchase_BuyDiamondTitle_AppBarTitle {
    return Intl.message("Diamond Store", name: "Purchase_BuyDiamondTitle_AppBarTitle");
  }

  // 编号 280151
  // 余额
  String get Purchase_BuyDiamondCountTitle_PageText2 {
    return Intl.message("Balance", name: "Purchase_BuyDiamondCountTitle_PageText2");
  }

  // 编号 280152
  // 
  String get Purchase_BuyDiamondMostPopular_PageText2 {
    return Intl.message("Most popular", name: "Purchase_BuyDiamondMostPopular_PageText2");
  }

  // 编号 280153
  // 
  String get Purchase_BuyDiamondBestValue_PageText2 {
    return Intl.message("Best value", name: "Purchase_BuyDiamondBestValue_PageText2");
  }

  // 编号 280154
  // 购买vip每月免费得xx钻石
  String Purchase_BuyDiamondJoinVipIntro_ItemText(num) {
    return Intl.message("Join VIP and get $num @DIAMONDS@ \n monthly for free", name: "Purchase_BuyDiamondJoinVipIntro_ItemText", args: [num]);
  }

  // 编号 280155
  // 一次性offer
  String get Purchase_BuyDiamondOneTime_PageText2 {
    return Intl.message("One time offer", name: "Purchase_BuyDiamondOneTime_PageText2");
  }

  // 编号 280156
  // vip功能1
  String get Purchase_BuyDiamondVIPDescribe1_ItemText {
    return Intl.message("Fine tune\n your\n search", name: "Purchase_BuyDiamondVIPDescribe1_ItemText");
  }

  // 编号 280157
  // vip功能2
  String get Purchase_BuyDiamondVIPDescribe2_ItemText {
    return Intl.message("See who\n liked\n you", name: "Purchase_BuyDiamondVIPDescribe2_ItemText");
  }

  // 编号 280158
  // vip功能3
  String get Purchase_BuyDiamondVIPDescribe3_ItemText {
    return Intl.message("Send\n unlimited\n messages", name: "Purchase_BuyDiamondVIPDescribe3_ItemText");
  }

  // 编号 280159
  // 购买钻石
  String get Purchase_BuyDiamonds_Button {
    return Intl.message("Buy diamonds", name: "Purchase_BuyDiamonds_Button");
  }

  // 编号 280160
  // 余额
  String get Purchase_BuyDiamondsRemain_PageText2 {
    return Intl.message("Balance:", name: "Purchase_BuyDiamondsRemain_PageText2");
  }

  // 编号 280161
  // 充值成功
  String get Purchase_BuySuccerdedTip1_PageText2 {
    return Intl.message("Top up succeeded", name: "Purchase_BuySuccerdedTip1_PageText2");
  }

  // 编号 280162
  // 钻石充值成功
  String Purchase_BuySuccerdedTip2_PageText2(num) {
    return Intl.message("$num @DIAMONDS@ added to your account", name: "Purchase_BuySuccerdedTip2_PageText2", args: [num]);
  }

  // 编号 280164
  // Boost中
  String get DailyPicks_ProfileInBoost_PageText2 {
    return Intl.message("Profile boosting", name: "DailyPicks_ProfileInBoost_PageText2");
  }

  // 编号 280165
  // 也想出现在这里吗（boost）
  String get DailyPicks_ProfileBoostInvite_PageText2 {
    return Intl.message("Wanna be in the spotlight?", name: "DailyPicks_ProfileBoostInvite_PageText2");
  }

  // 编号 280166
  // 试一试
  String get DailyPicks_ProfileBoostTry_PageText1 {
    return Intl.message("Try Boost", name: "DailyPicks_ProfileBoostTry_PageText1");
  }

  // 编号 280167
  // Boost功能说明
  String get DailyPicks_ProfileBoostIntro_DialogText2 {
    return Intl.message("Be displayed ahead of everyone else for 24 hours and increase profile exposure rate.", name: "DailyPicks_ProfileBoostIntro_DialogText2");
  }

  // 编号 280168
  // Boost购买Button
  String DailyPicks_ProfileBoostCost_DialogText2(num) {
    return Intl.message("Boost 24 hours with $num @DIAMONDS@", name: "DailyPicks_ProfileBoostCost_DialogText2", args: [num]);
  }

  // 编号 280169
  // 正在boost中，你的boost正在生效中
  String get DailyPicks_ProfileBoostHadDone_DialogText2 {
    return Intl.message("Your profile is being viewed by more people. A boost report will be sent to you when your boost ended.", name: "DailyPicks_ProfileBoostHadDone_DialogText2");
  }

  // 编号 280170
  // Boost report
  String get DailyPicks_ProfileBoostReport_AppBarTittle {
    return Intl.message("Boost Report", name: "DailyPicks_ProfileBoostReport_AppBarTittle");
  }

  // 编号 280171
  // Boost report里进入你profile的人
  String get DailyPicks_ProfileBoostReportCheckYou_ItemGroupTitle {
    return Intl.message("PEOPLE VIEWED YOUR PROFILE", name: "DailyPicks_ProfileBoostReportCheckYou_ItemGroupTitle");
  }

  // 编号 280172
  // 全部
  String get DailyPicks_ProfileBoostReportAll_ItemGroupTitle {
    return Intl.message("ALL", name: "DailyPicks_ProfileBoostReportAll_ItemGroupTitle");
  }

  // 编号 280173
  // Boost report
  String DailyPicks_ProfileBoostReportCount_ItemText(howMany) {
    return Intl.plural(howMany, zero: "No profile views via Boost", one: "You got 1 profile view via Boost", other: "You got $howMany profile views via Boost", name: 'DailyPicks_ProfileBoostReportCount_ItemText', args: [howMany]);
  }

  // 编号 280175
  // Boost report 查看更多
  String get DailyPicks_ProfileBoostReportGetDetail_Button {
    return Intl.message("More details", name: "DailyPicks_ProfileBoostReportGetDetail_Button");
  }

  // 编号 280176
  // 点击Report右上角三个点删除
  String get DailyPicks_ProfileBoostReportDeleteContent_DialogText2 {
    return Intl.message("The boost report will be deleted", name: "DailyPicks_ProfileBoostReportDeleteContent_DialogText2");
  }

  // 编号 280177
  // 尝试Boost
  String get DailyPicks_ProfileBoostTryBoost_DialogText1 {
    return Intl.message("Try Boost, pin to the top", name: "DailyPicks_ProfileBoostTryBoost_DialogText1");
  }

  // 编号 280178
  // Report剩余时间
  String DailyPicks_ProfileBoostTimeRemaining_DialogText1(time) {
    return Intl.message("$time Remaining", name: "DailyPicks_ProfileBoostTimeRemaining_DialogText1", args: [time]);
  }

  // 编号 280179
  // SayHi
  String Chat_SayhiSendTip_DialogText1(userName) {
    return Intl.message("Say Hi to $userName", name: "Chat_SayhiSendTip_DialogText1", args: [userName]);
  }

  // 编号 280180
  // 购买vip发送消息
  String get Chat_SayhiSendBottomTip_DialogText2 {
    return Intl.message("to send unlimited messages", name: "Chat_SayhiSendBottomTip_DialogText2");
  }

  // 编号 280181
  // 购买vip后下面的文案变为：你已经是vip了
  String get Chat_SayhiSendBottomAreadyTipSend_DialogText1 {
    return Intl.message("You're a VIP already. You can", name: "Chat_SayhiSendBottomAreadyTipSend_DialogText1");
  }

  // 编号 280182
  // 接上一句可点击文字按钮：直接发消息
  String get Chat_SayhiSendBottomAreadyTip_DialogText2 {
    return Intl.message("Send Messages Directly", name: "Chat_SayhiSendBottomAreadyTip_DialogText2");
  }

  // 编号 280183
  // Say默认文案1
  String get Chat_SayhiSendDefaultText1_DialogText2 {
    return Intl.message("Hi, your profile caught my attention.", name: "Chat_SayhiSendDefaultText1_DialogText2");
  }

  // 编号 280184
  // Say默认文案2
  String get Chat_SayhiSendDefaultText2_DialogText2 {
    return Intl.message("I love your smile! How are you?", name: "Chat_SayhiSendDefaultText2_DialogText2");
  }

  // 编号 280185
  // Say默认文案3
  String get Chat_SayhiSendDefaultText3_DialogText2 {
    return Intl.message("How's everything going so far? Any luck?", name: "Chat_SayhiSendDefaultText3_DialogText2");
  }

  // 编号 280186
  // 获得免费钻石主文案
  String Chat_FreeDiamondsSendTitle_DialogText1(num) {
    return Intl.message("You received $num @DIAMONDS@ for Free", name: "Chat_FreeDiamondsSendTitle_DialogText1", args: [num]);
  }

  // 编号 280187
  // 已获得免费钻石，可用于对其他用户SayHi
  String Chat_FreeDiamondsSendContent_DialogText1(num,userName) {
    return Intl.message("$num @DIAMONDS@ added to your account. Use it to Say hi to $userName now", name: "Chat_FreeDiamondsSendContent_DialogText1", args: [num,userName]);
  }

  // 编号 280188
  // 钻石余额不足
  String get Chat_SayhiSendDiamond_ToastText {
    return Intl.message("Insufficient diamonds balance", name: "Chat_SayhiSendDiamond_ToastText");
  }

  // 编号 280189
  // VIP功能说明：每月获得免费钻石
  String get Purchase_VipBenefitDiamondsTitle_ItemText {
    return Intl.message("Receive Free Diamonds Monthly", name: "Purchase_VipBenefitDiamondsTitle_ItemText");
  }

  // 编号 280190
  // 钻石可以送礼物、boost
  String get Purchase_VipBenefitDiamondsContent_ItemText {
    return Intl.message("Use diamonds for gifts and boost feature", name: "Purchase_VipBenefitDiamondsContent_ItemText");
  }

  // 编号 280191
  // 
  String get DailyPicks_ProfileBoostEmpty_PageText2 {
    return Intl.message("No Results Found", name: "DailyPicks_ProfileBoostEmpty_PageText2");
  }

  // 编号 280192
  // Boost 报告
  String get Chat_IreneConversatioBoostReport_ItemText {
    return Intl.message("Boost report generated", name: "Chat_IreneConversatioBoostReport_ItemText");
  }

  // 编号 280193
  // 已过期 Match
  String get Chat_IreneConversationMatchExpiredTip_ItemText {
    return Intl.message("Previous matches archived", name: "Chat_IreneConversationMatchExpiredTip_ItemText");
  }

  // 编号 280194
  // 被断开的会话
  String get Chat_IreneConversationEndTip_ItemText {
    return Intl.message("A chat archived", name: "Chat_IreneConversationEndTip_ItemText");
  }

  // 编号 280195
  // 
  String get Chat_IreneConversationNewTip_ItemText {
    return Intl.message("[New]", name: "Chat_IreneConversationNewTip_ItemText");
  }

  // 编号 280198
  // 用户 A&B 首次 Match 时 Tips 提示
  String Chat_NewMatchTips_ItemText(userName) {
    return Intl.message("You & $userName liked each other and matched, enjoy the chat. 😊", name: "Chat_NewMatchTips_ItemText", args: [userName]);
  }

  // 编号 280199
  // VIP 用户向其他用户发出首条 VIP 消息后，展示 Tips 提示开启会话
  String Chat_SendCmdStartVipTip_ItemText(userName) {
    return Intl.message("Dear VIP user, you started a chat with $userName", name: "Chat_SendCmdStartVipTip_ItemText", args: [userName]);
  }

  // 编号 280200
  // 收到 VIP 消息的用户看到的 Tips 消息提示
  String Chat_ReceiveCmdStartVipTip_ItemText(userName) {
    return Intl.message("VIP user $userName started the chat.", name: "Chat_ReceiveCmdStartVipTip_ItemText", args: [userName]);
  }

  // 编号 280201
  // 发出 5 条 VIP 消息后，再次尝试发送时弹出 ActionView 标题文案
  String get Chat_VipSendMessageLimitTitle_DialogText1 {
    return Intl.message("Take a break", name: "Chat_VipSendMessageLimitTitle_DialogText1");
  }

  // 编号 280202
  // 发出 5 条 VIP 消息后，再次尝试发送时弹出 ActionView 说明文案
  String Chat_VipSendMessageLimitDescription_DialogText2(gender, userName) {
    return Intl.gender(gender, male: "After $userName reply you, you can continue sending messages to him", female: "After $userName reply you, you can continue sending messages to her", other: "After $userName reply you, you can continue sending messages to him", name: 'Chat_VipSendMessageLimitDescription_DialogText2', args: [gender, userName]);
  }

  // 编号 280203
  // VIP 发出 3 条 VIP 消息后，输入框提示剩余消息条数文案
  String Chat_VipSendMessageLimitUsed3Tip_ItemText(gender, ) {
    return Intl.gender(gender, male: "2 messages left before he replies", female: "2 messages left before she replies", other: "2 messages left before he replies", name: 'Chat_VipSendMessageLimitUsed3Tip_ItemText', args: [gender, ]);
  }

  // 编号 280204
  // VIP 发出 4 条 VIP 消息后，输入框提示剩余消息条数文案
  String Chat_VipSendMessageLimitUsed4Tip_ItemText(gender, ) {
    return Intl.gender(gender, male: "1 message left before he replies", female: "1 message left before she replies", other: "1 message left before he replies", name: 'Chat_VipSendMessageLimitUsed4Tip_ItemText', args: [gender, ]);
  }

  // 编号 280205
  // VIP 发出 5 条 VIP 消息后，输入框提示无剩余消息条数文案
  String Chat_VipSendMessageLimitUsed5Tip_ItemText(gender, ) {
    return Intl.gender(gender, male: "No more messages can be sent", female: "No more messages can be sent", other: "No more messages can be sent", name: 'Chat_VipSendMessageLimitUsed5Tip_ItemText', args: [gender, ]);
  }

  // 编号 280206
  // 收到 VIP 消息并点击 OK 查看后，Tips 消息提示回复 VIP 用户开启聊天
  String Chat_VipMessageReadTip_ItemText(gender, ) {
    return Intl.gender(gender, male: "Reply to him and enjoy the chat.", female: "Reply to her and enjoy the chat.", other: "Reply to him and enjoy the chat.", name: 'Chat_VipMessageReadTip_ItemText', args: [gender, ]);
  }

  // 编号 280207
  // 收到的 VIP 消息清晰展示后，首条 VIP 消息查看资料入口文案
  String get Chat_CheckVipProfileTip_ItemText {
    return Intl.message("Check My Profile", name: "Chat_CheckVipProfileTip_ItemText");
  }

  // 编号 280208
  // 提示查看 VIP 消息 Actionview 文案
  String Chat_CheckVipMessageTip_ItemText(gender, ) {
    return Intl.gender(gender, male: "Check messages from this user and try chatting with him.", female: "Check messages from this user and try chatting with her.", other: "Check messages from this user and try chatting with him.", name: 'Chat_CheckVipMessageTip_ItemText', args: [gender, ]);
  }

  // 编号 280209
  // 点击查看 VIP 消息 Actionview 的断开会话按钮后弹窗标题文案
  String Chat_CheckMessageEndChatTitle_DialogText1(gender, ) {
    return Intl.gender(gender, male: "Sure to end the chat with him?", female: "Sure to end the chat with her?", other: "Sure to end the chat with him?", name: 'Chat_CheckMessageEndChatTitle_DialogText1', args: [gender, ]);
  }

  // 编号 280210
  // 点击查看 VIP 消息 Actionview 的断开会话按钮后弹窗说明文案
  String Chat_CheckMessageEndChatDescription_DialogText2(gender, ) {
    return Intl.gender(gender, male: "You can check the message he sent and choose to end the chat at any time if you don't feel interested.", female: "You can check the messages she sent and choose to end the chat at any time if you don't feel interested.", other: "You can check the message he sent and choose to end the chat at any time if you don't feel interested.", name: 'Chat_CheckMessageEndChatDescription_DialogText2', args: [gender, ]);
  }

  // 编号 280211
  // 点击查看 VIP 消息 Actionview 的断开会话按钮后弹窗查看消息按钮文案
  String get Chat_CheckMessage_Button {
    return Intl.message("Check the Messages", name: "Chat_CheckMessage_Button");
  }

  // 编号 280212
  // 收到聊天对象发送涉及金融相关词汇时 Tips 消息
  String get Chat_SensitiveWordFinanceTips_ItemText {
    return Intl.message("Beware of requests for money or personal information.", name: "Chat_SensitiveWordFinanceTips_ItemText");
  }

  // 编号 280213
  // 向聊天对象发出冒犯性词汇时 Tips 消息
  String get Chat_SensitiveWordAffrontTips_ItemText {
    return Intl.message("Being polite will always make someone more likeable.", name: "Chat_SensitiveWordAffrontTips_ItemText");
  }

  // 编号 280214
  // 收到SayHi的提示
  String Chat_ReceiveCmdRequestSayHiTip_ItemText(userName) {
    return Intl.message("$userName sent you a greeting, reply to start the chat.", name: "Chat_ReceiveCmdRequestSayHiTip_ItemText", args: [userName]);
  }

  // 编号 280215
  // 回复SayHi一方的展示
  String get Chat_SendCmdStartSayHiTip_ItemText {
    return Intl.message("The chat started, enjoy. 😊", name: "Chat_SendCmdStartSayHiTip_ItemText");
  }

  // 编号 280216
  // 发送SayHi一方的展示
  String Chat_ReceiveCmdStartSayHiTip_ItemText(userName) {
    return Intl.message("$userName replied your greeting, enjoy the chat.", name: "Chat_ReceiveCmdStartSayHiTip_ItemText", args: [userName]);
  }

  // 编号 280217
  // 收到中断会话一方的展示
  String Chat_ReceiveCmdTerminateTip_ItemText(gender, userName) {
    return Intl.gender(gender, male: "$userName Ended the chat and you will not be able to message him for a period of time.", female: "$userName Ended the chat and you will not be able to message her for a period of time.", other: "$userName Ended the chat and you will not be able to message him for a period of time.", name: 'Chat_ReceiveCmdTerminateTip_ItemText', args: [gender, userName]);
  }

  // 编号 280218
  // StartMatch命令在ChatList上的展示
  String Chat_ConversationShowStartMatch_ItemText(userName) {
    return Intl.message("$userName and you matched", name: "Chat_ConversationShowStartMatch_ItemText", args: [userName]);
  }

  // 编号 280219
  // 发送StartVip命令在ChatList上的展示
  String get Chat_ConversationShowSendStartVip_ItemText {
    return Intl.message("Your message has been sent", name: "Chat_ConversationShowSendStartVip_ItemText");
  }

  // 编号 280220
  // 接收StartVip命令在ChatList上的展示
  String Chat_ConversationShowReceiveStartVip_ItemText(userName) {
    return Intl.message("$userName started the chat", name: "Chat_ConversationShowReceiveStartVip_ItemText", args: [userName]);
  }

  // 编号 280221
  // 发送StartSayHi命令在ChatList上的展示
  String get Chat_ConversationShowSendStartSayHi_ItemText {
    return Intl.message("The chat started", name: "Chat_ConversationShowSendStartSayHi_ItemText");
  }

  // 编号 280222
  // 接收StartSayHi命令在ChatList上的展示
  String Chat_ConversationShowReceiveStartSayHi_ItemText(userName) {
    return Intl.message("$userName replied your greeting", name: "Chat_ConversationShowReceiveStartSayHi_ItemText", args: [userName]);
  }

  // 编号 280223
  // 接收RequestSayHi命令在ChatList上的展示
  String Chat_ConversationShowReceiveRequestSayHi_ItemText(userName) {
    return Intl.message("$userName sent you a greeting", name: "Chat_ConversationShowReceiveRequestSayHi_ItemText", args: [userName]);
  }

  // 编号 280224
  // Gif消息在ChatList上的展示
  String get Chat_ConversationShowGif_ItemText {
    return Intl.message("[Gif]", name: "Chat_ConversationShowGif_ItemText");
  }

  // 编号 280225
  // 会话列表上拉没有 更多会话数据可加载时提示文案
  String get Chat_ConversationNoMore_ItemText {
    return Intl.message("No more chats for now", name: "Chat_ConversationNoMore_ItemText");
  }

  // 编号 280226
  // Irene 页空状态时的文案
  String get Chat_IreneIntroEmpty_pageText1 {
    return Intl.message("I'm Irene, your love advisor.😊\nI will assist you on your love journey here.", name: "Chat_IreneIntroEmpty_pageText1");
  }

  // 编号 280227
  // 发出 Greeting 一方看到的 Tips 提示
  String Chat_SendSayHiTips_ItemText(gender, userName) {
    return Intl.gender(gender, male: "$userName has received your greeting. The chat will start once he replies to you.", female: "$userName has received your greeting. The chat will start once she replies to you.", other: "$userName has received your greeting. The chat will start once he replies to you.", name: 'Chat_SendSayHiTips_ItemText', args: [gender, userName]);
  }

  // 编号 280228
  // 不可用的用户
  String get Chat_ConversationUnavailableUser_ItemText {
    return Intl.message("Unavailable User", name: "Chat_ConversationUnavailableUser_ItemText");
  }

  // 编号 280229
  // 应用于 LuckyFlop 之类场景下，开启会话一方的 tips 文案
  String Chat_SendCmdStartFullChatTip_ItemText(userName) {
    return Intl.message("You started a chat with $userName", name: "Chat_SendCmdStartFullChatTip_ItemText", args: [userName]);
  }

  // 编号 280230
  // 应用于 LuckyFlop 之类场景下，收到会话一方的 tips 文案
  String Chat_ReceiveCmdStartFullChatTip_ItemText(userName) {
    return Intl.message("$userName started the chat", name: "Chat_ReceiveCmdStartFullChatTip_ItemText", args: [userName]);
  }

  // 编号 280231
  // 
  String Chat_CheckVipMessageLastMsg_ItemText(howMany) {
    return Intl.plural(howMany, zero: "unread VIP messages", one: "1 unread VIP message", other: "$howMany unread VIP messages", name: 'Chat_CheckVipMessageLastMsg_ItemText', args: [howMany]);
  }

  // 编号 280232
  // VIP还有多少天可领取多少钻石
  String Purchase_VipClaimDiamondDay_ItemText(howMany,num) {
    return Intl.plural(howMany, one: "Claim $num @DIAMONDS@ for free in 1 day ", other: "Claim $num @DIAMONDS@ for free in $howMany days", name: 'Purchase_VipClaimDiamondDay_ItemText', args: [howMany,num]);
  }

  // 编号 280233
  // 
  String get Common_LoadNoMore_PageText2 {
    return Intl.message("No more results", name: "Common_LoadNoMore_PageText2");
  }

  // 编号 280234
  // WooPlus消息：因为用户头像被删，boost终止，退还钻石
  String get Profile_ProfileDelBoostStop_WooPlusMessage {
    return Intl.message("Your Boost service has been discontinued due to the unavailability of your main photo. The Diamonds have been refunded to your account, and you may use them to boost your profile again when your main photo is updated.", name: "Profile_ProfileDelBoostStop_WooPlusMessage");
  }

  // 编号 280235
  // WooPlus消息：因为用户被强制认证，boost终止，退还钻石
  String get Profile_ProfileVeriBoostStop_WooPlusMessage {
    return Intl.message("Your Boost service has been discontinued due to a change in your account status. The Diamonds have been refunded to your account.", name: "Profile_ProfileVeriBoostStop_WooPlusMessage");
  }

  // 编号 280300
  // 首次看到 Irene 助手入口气泡文案
  String get Chat_AIChatIreneEntranceText_BubbleText1 {
    return Intl.message("I'm always available to help you break the ice or generate message ideas.", name: "Chat_AIChatIreneEntranceText_BubbleText1");
  }

  // 编号 280301
  // 免费机会下破冰场景下 ActionView Irene 正在生成内容 文案
  String get Chat_AIChatCreatingIceBreakerForFree_PageText1 {
    return Intl.message("Hey, I have a good ice-breaking idea. Hold on a second.", name: "Chat_AIChatCreatingIceBreakerForFree_PageText1");
  }

  // 编号 280302
  // 破冰场景下 ActionView Irene 生成内容后 文案
  String get Chat_AIChatCreatedIceBreaker_PageText1 {
    return Intl.message("Looking for a different one? I have another one for you.", name: "Chat_AIChatCreatedIceBreaker_PageText1");
  }

  // 编号 280303
  // 消耗免费机会/钻石条件下 ActionView 提示可生成破冰内容 文案
  String get Chat_AIChatCreateIceBreakerTipForCost_PageText1 {
    return Intl.message("Need help breaking the ice? I've got some great ideas. Want to see them?", name: "Chat_AIChatCreateIceBreakerTipForCost_PageText1");
  }

  // 编号 280304
  // 非破冰的 提示可生成内容 按钮文案
  String get Chat_AIChatCreate_ButtonText {
    return Intl.message("Check it now", name: "Chat_AIChatCreate_ButtonText");
  }

  // 编号 280305
  // 付费机会消耗机会下 ActionView  Irene 正在生成破冰内容 文案
  String get Chat_AIChatCreatingIceBreakerForCost_PageText1 {
    return Intl.message("Coming right up.", name: "Chat_AIChatCreatingIceBreakerForCost_PageText1");
  }

  // 编号 280306
  // 消息菜单 Irene 回复选项 文案
  String get Chat_MenuAIReply_ItemTitle {
    return Intl.message("AI Reply", name: "Chat_MenuAIReply_ItemTitle");
  }

  // 编号 280307
  // 消息菜单复制选项 文案
  String get Chat_MenuCopy_ItemTitle {
    return Intl.message("Copy", name: "Chat_MenuCopy_ItemTitle");
  }

  // 编号 280308
  // 消息菜单删除消息 文案
  String get Chat_MenuDelete_ItemTitle {
    return Intl.message("Delete", name: "Chat_MenuDelete_ItemTitle");
  }

  // 编号 280309
  // 复制消息后 Toast 提示文案
  String get Chat_ContentCopiedTip_ToastText {
    return Intl.message("Message Copied", name: "Chat_ContentCopiedTip_ToastText");
  }

  // 编号 280310
  // 删除消息 Bottom sheet 主文案
  String get Chat_DeleteSure_DialogText {
    return Intl.message("Delete Message？", name: "Chat_DeleteSure_DialogText");
  }

  // 编号 280311
  // 付费生成消息按钮 价格文案
  String Chat_AIChatCostDiamonds_PageText2(num) {
    return Intl.message("$num @DIAMONDS@", name: "Chat_AIChatCostDiamonds_PageText2", args: [num]);
  }

  // 编号 280312
  // 免费次数显示
  String Chat_AIChatCostFree_PageText2(num) {
    return Intl.message("$num Free", name: "Chat_AIChatCostFree_PageText2", args: [num]);
  }

  // 编号 280313
  // 消耗免费机会请求内容不合法时，提示可生成新话题 文案
  String get Chat_AIChatNoIdeaForFree_PageText1 {
    return Intl.message("I don't have a good idea at the moment, would you like me to come up with a new topic?", name: "Chat_AIChatNoIdeaForFree_PageText1");
  }

  // 编号 280314
  // 消耗钻石请求内容不合法时，提示本次不扣费且可生成新话题 文案
  String get Chat_AIChatNoIdeaForCost_PageText1 {
    return Intl.message("Sorry, no suitable idea. No diamonds were consumed this time. Shall I suggest a new topic?", name: "Chat_AIChatNoIdeaForCost_PageText1");
  }

  // 编号 280315
  // 免费机会/支付钻石后回复消息场景 ActionView Irene 正在生成内容 文案
  String Chat_AIChatCreatingReply_PageText1(userName) {
    return Intl.message("Just a sec, let me think about how to respond to $userName.", name: "Chat_AIChatCreatingReply_PageText1", args: [userName]);
  }

  // 编号 280316
  // 消耗免费机会/钻石条件下 ActionView 提示可生成回复消息内容 文案
  String get Chat_AIChatCreateReplyForCost_PageText1 {
    return Intl.message("Need any help? Let me assist you with crafting the perfect response.", name: "Chat_AIChatCreateReplyForCost_PageText1");
  }

  // 编号 280317
  // 生成回复内容后的文案
  String get Chat_AIChatCreatedReply_PageText1 {
    return Intl.message("Check this out! If not satisfied, feel free to ask me for more suggestions.", name: "Chat_AIChatCreatedReply_PageText1");
  }

  // 编号 280318
  // 右滑至破冰面板时展示的提示文案
  String get Chat_AIChatCreateIceBreakerForRight_PageText1 {
    return Intl.message("Looking for a new icebreaker topic? I'm here to help.", name: "Chat_AIChatCreateIceBreakerForRight_PageText1");
  }

  // 编号 280319
  // 破冰提示或者重新生成内容 按钮文案
  String get Chat_AIChatCreateIceBreakerOrNew_ButtonText {
    return Intl.message("Start a new topic", name: "Chat_AIChatCreateIceBreakerOrNew_ButtonText");
  }

  // 编号 280320
  // 历史消息面板下  ActionView 提示文案
  String get Chat_AIChatResponseHistory_PageText1 {
    return Intl.message("Here's the most fitting response I can think of.", name: "Chat_AIChatResponseHistory_PageText1");
  }

  // 编号 280321
  // Irene 功能介绍气泡说明文案
  String get Chat_AIChatIntro_BubbleText2 {
    return Intl.message("I'm your dating assistant, and I can help you generate icebreakers or responses using AI tech.", name: "Chat_AIChatIntro_BubbleText2");
  }

  // 编号 280322
  // Irene 功能介绍气泡价格文案
  String Chat_AIChatPriceIntro_BubbleText2(num) {
    return Intl.message("You can have two free suggestions per day. Additional suggestions will cost $num @DIAMONDS@ each.", name: "Chat_AIChatPriceIntro_BubbleText2", args: [num]);
  }

  // 编号 280323
  // 选择用钻石生成内容时钻石余额不足，调起充值 ActionView 页面 toast
  String get Purchase_DiamondNotEnoughAndPurchase_ToastText {
    return Intl.message("Insufficient diamonds, please purchase more.", name: "Purchase_DiamondNotEnoughAndPurchase_ToastText");
  }

  // 编号 280324
  // Irene 功能介绍气泡说明文案title
  String get Chat_AIChatIntroTitle_BubbleText1 {
    return Intl.message("About Irene", name: "Chat_AIChatIntroTitle_BubbleText1");
  }

  // 编号 280325
  // Irene 功能介绍气泡价格文案title
  String get Chat_AIChatPriceIntroTittle_BubbleText1 {
    return Intl.message("Payment Rules", name: "Chat_AIChatPriceIntroTittle_BubbleText1");
  }

  // 编号 280326
  // irene回复网络错误提示文案
  String get Chat_AIChatNetError_PageText {
    return Intl.message("Oops, network error. Please try again later.", name: "Chat_AIChatNetError_PageText");
  }

  // 编号 280327
  // 
  String get Chat_AIChatDiscardEditContent_DialogText1 {
    return Intl.message("Sure to discard editing?", name: "Chat_AIChatDiscardEditContent_DialogText1");
  }

  // 编号 280328
  // 消息菜单引用功能按钮名称
  String get Chat_MenuReply_ItemTitle {
    return Intl.message("Reply", name: "Chat_MenuReply_ItemTitle");
  }

  // 编号 280329
  // 被引用消息发出后，被删除或无法查询到时提示文案
  String get Chat_ReplyMessageNotExist_PageText2 {
    return Intl.message("Message unavailable", name: "Chat_ReplyMessageNotExist_PageText2");
  }

  // 编号 280330
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_1_ItemText {
    return Intl.message("Hi, good to see you 👋", name: "Chat_MatchQuickReply1_1_ItemText");
  }

  // 编号 280331
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_2_ItemText {
    return Intl.message("Hi there! 😉", name: "Chat_MatchQuickReply1_2_ItemText");
  }

  // 编号 280332
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_3_ItemText {
    return Intl.message("Hey, you look cute! 😊", name: "Chat_MatchQuickReply1_3_ItemText");
  }

  // 编号 280333
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_4_ItemText {
    return Intl.message("Hey! 👋 Love your pic! What do you enjoy doing in your free time?", name: "Chat_MatchQuickReply1_4_ItemText");
  }

  // 编号 280334
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_5_ItemText {
    return Intl.message("Your smile really caught my eye 😄", name: "Chat_MatchQuickReply1_5_ItemText");
  }

  // 编号 280335
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_6_ItemText {
    return Intl.message("Hi there! How are you?", name: "Chat_MatchQuickReply1_6_ItemText");
  }

  // 编号 280336
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_7_ItemText {
    return Intl.message("Hey, what's up? 😉", name: "Chat_MatchQuickReply1_7_ItemText");
  }

  // 编号 280337
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_8_ItemText {
    return Intl.message("Greetings! ❤️", name: "Chat_MatchQuickReply1_8_ItemText");
  }

  // 编号 280338
  // 首次 Match 弹框/快捷回复栏 1 文案
  String get Chat_MatchQuickReply1_9_ItemText {
    return Intl.message("Hi, nice to meet you!", name: "Chat_MatchQuickReply1_9_ItemText");
  }

  // 编号 280339
  // 快捷回复栏 2 文案
  String get Chat_QuickReply2_1_ItemText {
    return Intl.message("Having a nice day?", name: "Chat_QuickReply2_1_ItemText");
  }

  // 编号 280340
  // 快捷回复栏 2 文案
  String get Chat_QuickReply2_2_ItemText {
    return Intl.message("What’s up? 😊", name: "Chat_QuickReply2_2_ItemText");
  }

  // 编号 280341
  // 绑定手机号被占用，更换或登录
  String get Sign_PhoneBeTaken_PageText2 {
    return Intl.message("This phone number is taken. Try another or", name: "Sign_PhoneBeTaken_PageText2");
  }

  // 编号 280342
  // 登录
  String get Sign_LogIn_Button {
    return Intl.message("Log In", name: "Sign_LogIn_Button");
  }

  // 编号 280343
  // 举报-Profile
  String get Profile_ReportInappropriateProfile_ItemTitle {
    return Intl.message("Inappropriate Profile", name: "Profile_ReportInappropriateProfile_ItemTitle");
  }

  // 编号 280344
  // 举报-Profile-说明
  String get Profile_ReportInappropriateProfileInfo_ItemText {
    return Intl.message("Offensive photos or content", name: "Profile_ReportInappropriateProfileInfo_ItemText");
  }

  // 编号 280345
  // 举报-Video-说明
  String get Profile_ReportVideoInfo_ItemText {
    return Intl.message("Offensive videos", name: "Profile_ReportVideoInfo_ItemText");
  }

  // 编号 280346
  // 举报-Message-说明
  String get Profile_ReportMessageInfo_ItemText {
    return Intl.message("Unacceptable behavior", name: "Profile_ReportMessageInfo_ItemText");
  }

  // 编号 280347
  // 举报-Moment-说明
  String get Profile_ReportMomentInfo_ItemText {
    return Intl.message("Offensive content", name: "Profile_ReportMomentInfo_ItemText");
  }

  // 编号 280348
  // 举报-Scam-说明
  String get Profile_ReportScamInfo_ItemText {
    return Intl.message("Impersonating others or soliciting money", name: "Profile_ReportScamInfo_ItemText");
  }

  // 编号 280349
  // 举报-Spam
  String get Profile_ReportSpam_ItemTitle {
    return Intl.message("Spam or Promotion", name: "Profile_ReportSpam_ItemTitle");
  }

  // 编号 280350
  // 举报-Spam-说明
  String get Profile_ReportSpamInfo_ItemText {
    return Intl.message("They're not on WooPlus for meaningful connections", name: "Profile_ReportSpamInfo_ItemText");
  }

  // 编号 280352
  // 举报-Spam-选项1
  String get Profile_ReportSpamReason1_ItemText {
    return Intl.message("Selling photos/videos", name: "Profile_ReportSpamReason1_ItemText");
  }

  // 编号 280353
  // 举报-Spam-选项2
  String get Profile_ReportSpamReason2_ItemText {
    return Intl.message("Providing sex services", name: "Profile_ReportSpamReason2_ItemText");
  }

  // 编号 280354
  // 举报-Spam-选项3
  String get Profile_ReportSpamReason3_ItemText {
    return Intl.message("Promoting Onlyfans/other platforms", name: "Profile_ReportSpamReason3_ItemText");
  }

  // 编号 280355
  // 举报-Underage
  String get Profile_ReportUnderage_ItemTitle {
    return Intl.message("Underage", name: "Profile_ReportUnderage_ItemTitle");
  }

  // 编号 280356
  // 举报-Underage-说明
  String get Profile_ReportUnderageIntro_ItemText {
    return Intl.message("They're not old enough to be on WooPlus", name: "Profile_ReportUnderageIntro_ItemText");
  }

  // 编号 280358
  // 举报-Underage-选项1
  String get Profile_ReportUnderageProfileReason_ItemText {
    return Intl.message("Profile indicates they are under 18", name: "Profile_ReportUnderageProfileReason_ItemText");
  }

  // 编号 280359
  // 举报-Underage-选项2
  String get Profile_ReportUnderageLookReason_ItemText {
    return Intl.message("Looks under 18", name: "Profile_ReportUnderageLookReason_ItemText");
  }

  // 编号 280360
  // 举报-Underage-选项3
  String get Profile_ReportUnderageToldUnderReason_ItemText {
    return Intl.message("They told me they're under 18", name: "Profile_ReportUnderageToldUnderReason_ItemText");
  }

  // 编号 280361
  // 举报-Scam-选项2
  String get Profile_ReportScamImpersonatingReason_ItemText {
    return Intl.message("Impersonating someone else", name: "Profile_ReportScamImpersonatingReason_ItemText");
  }

  // 编号 280362
  // 举报-Scam-选项3
  String get Profile_ReportScamTakeMeOffReason_ItemText {
    return Intl.message("Attempting to communicate outside of WooPlus", name: "Profile_ReportScamTakeMeOffReason_ItemText");
  }

  // 编号 280363
  // 举报-Profile-选项1
  String get Profile_ReportProfileFakePhotoReason_ItemText {
    return Intl.message("Using fake photos", name: "Profile_ReportProfileFakePhotoReason_ItemText");
  }

  // 编号 280364
  // 举报-Profile-选项3
  String get Profile_ReportProfileGenderReason_ItemText {
    return Intl.message("The selected gender does not match the photo.", name: "Profile_ReportProfileGenderReason_ItemText");
  }

  // 编号 280365
  // 举报-Profile-选项6
  String get Profile_ReportProfileInappropriateReason_ItemText {
    return Intl.message("Inappropriate text", name: "Profile_ReportProfileInappropriateReason_ItemText");
  }

  // 编号 280366
  // 举报-Message-选项4
  String get Profile_ReportMessageBodyShamReason_ItemText {
    return Intl.message("Body-shaming", name: "Profile_ReportMessageBodyShamReason_ItemText");
  }

  // 编号 280371
  // 举报-Scam-填写理由说明
  String get Profile_ReportScamInputIntro_PageText1 {
    return Intl.message("Add additional info (optional)", name: "Profile_ReportScamInputIntro_PageText1");
  }

  // 编号 280372
  // 举报-Scam-填写第三方平台说明主文案
  String get Profile_ReportScamPlatformInput_PageText1 {
    return Intl.message("Please provide the following information for our investigation.", name: "Profile_ReportScamPlatformInput_PageText1");
  }

  // 编号 280373
  // 举报-Scam-填写第三方平台说明辅助
  String get Profile_ReportScamPlatformInputDes_PageText2 {
    return Intl.message("What platform you were talking outside of WooPlus?", name: "Profile_ReportScamPlatformInputDes_PageText2");
  }

  // 编号 280374
  // 举报-Scam-填写第三方平台选项1
  String get Profile_ReportScamPlatform1_ItemText {
    return Intl.message("Snapchat", name: "Profile_ReportScamPlatform1_ItemText");
  }

  // 编号 280375
  // 举报-Scam-填写第三方平台选项2
  String get Profile_ReportScamPlatform2_ItemText {
    return Intl.message("Telegram", name: "Profile_ReportScamPlatform2_ItemText");
  }

  // 编号 280376
  // 举报-Scam-填写第三方平台选项3
  String get Profile_ReportScamPlatform3_ItemText {
    return Intl.message("Whatsapp", name: "Profile_ReportScamPlatform3_ItemText");
  }

  // 编号 280377
  // 举报-Scam-填写第三方平台选项4
  String get Profile_ReportScamPlatform4_ItemText {
    return Intl.message("Google Chat", name: "Profile_ReportScamPlatform4_ItemText");
  }

  // 编号 280378
  // 举报-Scam-填写第三方平台选项5
  String get Profile_ReportScamPlatform5_ItemText {
    return Intl.message("Signal", name: "Profile_ReportScamPlatform5_ItemText");
  }

  // 编号 280379
  // 举报-Scam-填写第三方平台选项Other可编辑选项
  String get Profile_ReportScamPlatformOther_ItemText {
    return Intl.message("Other", name: "Profile_ReportScamPlatformOther_ItemText");
  }

  // 编号 280380
  // 举报-Scam-填写第三方平台Username
  String get Profile_ReportScamPlatformUserName_PageText2 {
    return Intl.message("What's their username/ID on that platform?", name: "Profile_ReportScamPlatformUserName_PageText2");
  }

  // 编号 280381
  // Irene-标签-Important
  String get Message_IreneImportant_TabTitle {
    return Intl.message("Important", name: "Message_IreneImportant_TabTitle");
  }

  // 编号 280382
  // Irene-标签-All
  String get Message_IreneAll_TabTitle {
    return Intl.message("All", name: "Message_IreneAll_TabTitle");
  }

  // 编号 280383
  // Irene-查看当前like-按钮
  String get Message_IreneSeeLikesYou_Button {
    return Intl.message("Have a Look Now", name: "Message_IreneSeeLikesYou_Button");
  }

  // 编号 280384
  // Irene-购买后Match该likes-按钮
  String get Message_IreneMatchLikesYou_Button {
    return Intl.message("Match and Start Chatting", name: "Message_IreneMatchLikesYou_Button");
  }

  // 编号 280385
  // Irene-购买后Match后和该likes发起聊天-Button
  String get Message_IreneChatLikesYou_Button {
    return Intl.message("Start Chatting", name: "Message_IreneChatLikesYou_Button");
  }

  // 编号 280386
  // Irene-LikesYouAccount刚刚不可用-Text
  String Message_IreneLikesYouAccountJustCanceled_itemText(gender, ) {
    return Intl.gender(gender, male: "Oops, the user who liked you just canceled his account. Go check all in Likes You.", female: "Oops, the user who liked you just canceled her account. Go check all in Likes You.", other: '', name: 'Message_IreneLikesYouAccountJustCanceled_itemText', args: [gender, ]);
  }

  // 编号 280387
  // Irene-LikesYou账号不可用-Text
  String Message_IreneLikesYouAccountCanceled_itemText(gender, ) {
    return Intl.gender(gender, male: "The user who liked you canceled his account. Go check all in Likes You.", female: "The user who liked you canceled her account. Go check all in Likes You.", other: '', name: 'Message_IreneLikesYouAccountCanceled_itemText', args: [gender, ]);
  }

  // 编号 280388
  // Irere-LikesYou账号不可用-Button
  String get Message_IreneLikesYouAccountCanceled_Button {
    return Intl.message("Check All in Likes Yoiu", name: "Message_IreneLikesYouAccountCanceled_Button");
  }

  // 编号 280389
  // 礼包码设置入口
  String get Activity_GiftCode_ItemText {
    return Intl.message("Gift Code", name: "Activity_GiftCode_ItemText");
  }

  // 编号 280390
  // 礼包码输入action view主要文案
  String get Activity_EnterGiftCode_PageText1 {
    return Intl.message("Enter your Gift Code", name: "Activity_EnterGiftCode_PageText1");
  }

  // 编号 280391
  // 礼包码验证失败展示文案
  String get Activity_GiftCodeError_PageText2 {
    return Intl.message("Gift code verification error.", name: "Activity_GiftCodeError_PageText2");
  }

  // 编号 280392
  // 礼包码验证已领取toast
  String get Activity_GiftCodeAlreadyVerified_PageText2 {
    return Intl.message("Gift code already redeemed on this account.", name: "Activity_GiftCodeAlreadyVerified_PageText2");
  }

  // 编号 280393
  // 礼包码验证成功action view主要文案
  String Activity_GiftCodeSuccess_PageText2(num,price) {
    return Intl.message("Congratulations! You have redeemed $num @DIAMONDS@ worth $price.", name: "Activity_GiftCodeSuccess_PageText2", args: [num,price]);
  }

  // 编号 280394
  // 
  String get Chat_ReplyMessageMyName_PageText2 {
    return Intl.message("You", name: "Chat_ReplyMessageMyName_PageText2");
  }

  // 编号 280395
  // 
  String Chat_ReplyMessageVoiceShow_PageText2(howMany) {
    return Intl.message("[Audio $howMany’’]", name: "Chat_ReplyMessageVoiceShow_PageText2", args: [howMany]);
  }

  // 编号 280396
  // Try Boost 前面的邀请文本
  String get DailyPicks_ProfileBoostInvite_PageText1 {
    return Intl.message("Want to be here too?", name: "DailyPicks_ProfileBoostInvite_PageText1");
  }

  // 编号 280397
  // 富文本的测试
  String Like_RedeemedDiamondTitle_PageText1(num,price) {
    return Intl.message("Congratulations! You have redeemed $num @DIAMONDS@ worth $price.", name: "Like_RedeemedDiamondTitle_PageText1", args: [num,price]);
  }

}
class AppLink {
  static const String server = "http://192.168.1.2/RENTAL CAR";
  static const String imagelink = "http://192.168.1.2/RENTAL CAR/upload";

  static const String test = "$server/test.php";

  //==============auth========//

  static const String login = "$server/aurh/login.php";
  static const String signup = "$server/aurh/signup.php";
  static const String VerfiyCodeSignup = "$server/aurh/resendverfiycode.php";
   static const String VerfiyCode_Signup = "$server/aurh/verfiycode.php";
    static const String Verfiy_CodeSignup = "$server/aurh/verfiycode.php";
  // ================ firrbase
  static const String firebaseauth = "$server/aurh/firebaseauth.php";

  // ======= forgetpassword=====//

  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verfiycode =
      "$server/forgetpassword/verifycodecheckemail.php";

  //===================cart ======================
  static const String service = "$server/services.php";
  static const String cars = "$server/carsview.php";
  //
  // static const String cars = "https://jsonplaceholder.typicode.com/posts";

//=======home ====

  static const String home = "$server/home.php";

  // ================check out ===
  // static const String checkout = "$server/orders/addchechout.php";
   static const String checkout = "$server/orders/addchechout.php";

  // =================== orders

  static const String pending = "$server/orders/pendingorders.php";
  static const String archive = "$server/orders/archive.php";
  static const String approveorders = "$server/orders/approve.php";
  static const String deletorders = "$server/orders/deletorders.php";
   static const String undermaint = "$server/orders/undermaint.php";

//=========
// static const String itemsview = "$server/autmoblie/view.php";
static const String additems = "$server/autmoblie/add.php";
static const String editeitems = "$server/autmoblie/edite.php";
static const String deletitems="$server/autmoblie/delet.php";


}

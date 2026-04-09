import '../providers/language_provider.dart';

/// Bilingual copy (Telugu + English) for caregiver-facing UI.
abstract final class AppStrings {
  static String meePillalaDashboard(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Mee pillala dashboard' : "Your child's dashboard";

  static String emailHint(AppLanguage l) => l == AppLanguage.telugu
      ? 'Mee email enter cheyandi'
      : 'Enter your email';

  static String otpHint(AppLanguage l) => l == AppLanguage.telugu
      ? 'OTP enter cheyandi'
      : 'Enter the OTP';

  static String sendOtp(AppLanguage l) =>
      l == AppLanguage.telugu ? 'OTP pampandi' : 'Send OTP';

  static String verify(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Verify cheyandi' : 'Verify';

  static String continueDashboard(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Dashboard ki velandi' : 'Continue to Dashboard';

  static String linkChild(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Mee pillani link cheyandi' : 'Link your child';

  static String setExamPin(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Exam PIN pettandi' : 'Set exam PIN';

  static String name(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Peru' : 'Name';

  static String phoneOptional(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Phone (optional)' : 'Phone (optional)';

  static String language(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Bhasha' : 'Language';

  static String studentEmail(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Vidyardhi email' : "Student's email";

  static String relationship(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Sambandham' : 'Relationship';

  static String link(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Link' : 'Link';

  static String today(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Iroju' : 'Today';

  static String progress(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Progress' : 'Progress';

  static String exam(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Pariksha' : 'Exam';

  static String health(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Aarogyam' : 'Health';

  static String settings(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Settings' : 'Settings';

  static String nudgesEmpty(AppLanguage l) =>
      l == AppLanguage.telugu
          ? 'Khaali! No nudges right now 😊'
          : 'All clear! No nudges right now 😊';

  static String noExam(AppLanguage l) =>
      l == AppLanguage.telugu
          ? 'Eppudu pariksha ledu'
          : 'No exam in progress';

  static String enterPinSubmit(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Submit cheyadaniki PIN' : 'Enter PIN to Submit';

  static String addHealthRecord(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Health record add cheyandi' : 'Add Health Record';

  static String reportProblem(AppLanguage l) =>
      l == AppLanguage.telugu ? 'Samasyanu report cheyandi' : 'Report a problem';
}

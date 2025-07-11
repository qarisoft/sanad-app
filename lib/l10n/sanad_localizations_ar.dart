// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'sanad_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SLAr extends SL {
  SLAr([String locale = 'ar']) : super(locale);

  @override
  String get sanad => 'سند';

  @override
  String get address => 'العنوان';

  @override
  String get status => 'الحالة';

  @override
  String get uploadStatusUploading => 'جاري الرفع ...';

  @override
  String get uploadStatusFail => 'فشل';

  @override
  String get uploadStatusDone => 'تم';

  @override
  String get lang => 'اللغة';

  @override
  String get permissionsTitle => 'السماح للتطبيق بالتالي';

  @override
  String get permissionsBodyCamera =>
      'التطبيق يحتاج الموافقة على استخدام الكاميرا';

  @override
  String get permissionsBodyGallery => 'التطبيق يحتاج الموافقة للوصول للمعرض  ';

  @override
  String get authLoginFailer => 'كلمة السر او الايميل غلط!';

  @override
  String get taskPageUploaddialogConfirmation =>
      '\'هل تريد اغلاق المعاينة الأن ؟\'';

  @override
  String get taskPageUploadTitle => 'التسليم';

  @override
  String get taskPageDataTitle => 'البيانات';

  @override
  String get taskPagePhotosTitle => 'الصور';

  @override
  String get deleteLocalTaskTitle => 'الغاء المهمة';

  @override
  String get deleteLocalTaskMsg => 'هل تريد حذف المهمة التالية أو الغائها ؟';

  @override
  String get archiveTeasksClosed => 'منتهية';

  @override
  String get archiveTasksWaiting => 'قيد الأنتطار';

  @override
  String get bottomNavLocalTasks => 'الأرشيف';

  @override
  String get bottomNavOnlineTasks => 'المهام';

  @override
  String get drawerLogoutTitle => 'الخروج من التطبيق';

  @override
  String get drawerLogoutMessage =>
      '\'الخروج من التطبيق سيقوم بحذق كل الداتا المخزنة في الهاتف, هل تريد المواصلة !!\'';

  @override
  String get deleteAccount => 'حذق الحساب';

  @override
  String get deleteAccountMessage => 'حذف الحساب نهائيا من كل سرفرات الشركة !!';

  @override
  String get deleteAccountMessage2 =>
      'لايمكن التراجع بعد حذف الحساب, هل تريد المتابعة ؟';

  @override
  String get companies => 'الشركات';

  @override
  String get company => 'شركة';

  @override
  String get theCompany => 'الشركة';

  @override
  String get theCompanyNameLabel => 'أسم الشركة';

  @override
  String get edit => 'تعديل';

  @override
  String get create => 'أتشاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get sure => 'متأكد';

  @override
  String get delete => 'حذف';

  @override
  String get open => 'فتح';

  @override
  String get agree => 'موافق';

  @override
  String get userdetailsInfoTitle => 'البيانات';

  @override
  String get userdetailsEditLabelText => 'تعديل';

  @override
  String get userdetailsCompanyLabel => 'الشركات';

  @override
  String get taskPricingPriceValidator => 'السعر مطلوب';

  @override
  String get taskPricingAreaValidator => 'المساحة مطلوبة';

  @override
  String get taskPricingName => 'الأستعمال';

  @override
  String get taskPricingMeterArea => 'المساحة';

  @override
  String get taskPricingMeterArea2 => 'متر مربع';

  @override
  String get taskPricingMeterPrice => 'السعر';

  @override
  String get taskPricingMeterPrice2 => 'الف';

  @override
  String get taskPricingTotalPrice => 'اجمالي السعر';

  @override
  String get taskPricingTotalPrice2 => 'الف /متر2';

  @override
  String get taskPricingReal => 'ريال';

  @override
  String get taskPricingK => 'الف';

  @override
  String get taskPricingMeter => 'متر';

  @override
  String get taskPricingMeterSquare => 'متر مربع';

  @override
  String get homeTitle => 'المهام';

  @override
  String get homeEmptyText => '!لايوجد مهام حاليا';

  @override
  String get serverError => 'فشل الرجاء المحاولة لاحقا';

  @override
  String get homeTasksTitle => 'tasks';

  @override
  String get noInternet => 'لايوجد اتصال بالانترنت';

  @override
  String get or => 'أو';

  @override
  String get success => 'تم';

  @override
  String get empty => 'لايوجد';

  @override
  String get error => 'خطاء';

  @override
  String get retryAgain => 'عاود المجاولة';

  @override
  String get username => 'اسم المستخدم';

  @override
  String get email => 'الايميل';

  @override
  String get password => 'كلمة السر';

  @override
  String get passwordConfirmation => 'تأكيد كلمة السر';

  @override
  String get loginAction => 'تسجيل الدخول';

  @override
  String get registerAction => 'أنشاء حساب';

  @override
  String get theLogin => 'الدخول';

  @override
  String get loginPage => 'صفحة الدخول';

  @override
  String get name => 'الأسم';

  @override
  String githubRepo(Object repoName) {
    return 'مستودع GitHub $repoName';
  }

  @override
  String aboutDialogDescription(Object repoLink) {
    return 'للاطّلاع على رمز المصدر لهذا التطبيق، يُرجى زيارة $repoLink.';
  }

  @override
  String get deselect => 'إلغاء الاختيار';

  @override
  String get notSelected => 'غير محدَّد';

  @override
  String get select => 'اختيار';

  @override
  String get selectable => 'قابل للاختيار (بالضغط مع الاستمرار)';

  @override
  String get selected => 'محدَّد';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get bannerDemoText =>
      'تم تعديل كلمة المرور على جهاز آخر. يُرجى تسجيل الدخول مرة أخرى.';

  @override
  String get bannerDemoResetText => 'إعادة ضبط البانر';

  @override
  String get bannerDemoMultipleText => 'إعدادات متعددة';

  @override
  String get bannerDemoLeadingText => 'رمز سابق';

  @override
  String get dismiss => 'رفض';

  @override
  String get backToGallery => 'الرجوع إلى \"معرض الصور\"';

  @override
  String get cardsDemoExplore => 'معرفة المزيد';

  @override
  String cardsDemoExploreSemantics(Object destinationName) {
    return 'معرفة المزيد عن $destinationName';
  }

  @override
  String cardsDemoShareSemantics(Object destinationName) {
    return 'مشاركة $destinationName';
  }

  @override
  String get cardsDemoTappable => 'قابل للنقر عليه';

  @override
  String get cardsDemoTravelDestinationTitle1 =>
      'أهم 10 مدن يمكن زيارتها في تاميل نادو';

  @override
  String get cardsDemoTravelDestinationDescription1 => 'رقم 10';

  @override
  String get cardsDemoTravelDestinationCity1 => 'ثنجفور';

  @override
  String get cardsDemoTravelDestinationLocation1 => 'ثنجفور، تاميل نادو';

  @override
  String get cardsDemoTravelDestinationTitle2 => 'حرفيون من جنوب الهند';

  @override
  String get cardsDemoTravelDestinationDescription2 => 'عمال غزل الحرير';

  @override
  String get cardsDemoTravelDestinationCity2 => 'تشيتيناد';

  @override
  String get cardsDemoTravelDestinationLocation2 => 'سيفاغنغا، تاميل نادو';

  @override
  String get cardsDemoTravelDestinationTitle3 => 'معبد بريهاديسفارا';

  @override
  String get cardsDemoTravelDestinationDescription3 => 'المعابد';

  @override
  String get homeHeaderGallery => 'معرض الصور';

  @override
  String get homeHeaderCategories => 'الفئات';

  @override
  String get shrineDescription => 'تطبيق عصري للبيع بالتجزئة';

  @override
  String get fortnightlyDescription => 'تطبيق أخبار يركّز على المحتوى';

  @override
  String get rallyDescription => 'تطبيق للتمويل الشخصي';

  @override
  String get replyDescription => 'تطبيق بريد إلكتروني مخصّص وفعّال';

  @override
  String get rallyAccountDataChecking => 'الحساب الجاري';

  @override
  String get rallyAccountDataHomeSavings => 'المدخرات المنزلية';

  @override
  String get rallyAccountDataCarSavings => 'المدّخرات المخصّصة للسيارة';

  @override
  String get rallyAccountDataVacation => 'عطلة';

  @override
  String get rallyAccountDetailDataAnnualPercentageYield =>
      'النسبة المئوية للعائد السنوي';

  @override
  String get rallyAccountDetailDataInterestRate => 'سعر الفائدة';

  @override
  String get rallyAccountDetailDataInterestYtd =>
      'الفائدة منذ بداية العام حتى اليوم';

  @override
  String get rallyAccountDetailDataInterestPaidLastYear =>
      'الفائدة المدفوعة في العام الماضي';

  @override
  String get rallyAccountDetailDataNextStatement => 'كشف الحساب التالي';

  @override
  String get rallyAccountDetailDataAccountOwner => 'صاحب الحساب';

  @override
  String get rallyBillDetailTotalAmount => 'المبلغ الإجمالي';

  @override
  String get rallyBillDetailAmountPaid => 'المبلغ المدفوع';

  @override
  String get rallyBillDetailAmountDue => 'المبلغ المستحق';

  @override
  String get rallyBudgetCategoryCoffeeShops => 'المقاهي';

  @override
  String get rallyBudgetCategoryGroceries => 'متاجر البقالة';

  @override
  String get rallyBudgetCategoryRestaurants => 'المطاعم';

  @override
  String get rallyBudgetCategoryClothing => 'الملابس';

  @override
  String get rallyBudgetDetailTotalCap => 'الحد الأقصى الإجمالي';

  @override
  String get rallyBudgetDetailAmountUsed => 'المبلغ المستخدم';

  @override
  String get rallyBudgetDetailAmountLeft => 'المبلغ المتبقي';

  @override
  String get rallySettingsManageAccounts => 'إدارة الحسابات';

  @override
  String get rallySettingsTaxDocuments => 'المستندات الضريبية';

  @override
  String get rallySettingsPasscodeAndTouchId => 'رمز المرور وTouch ID';

  @override
  String get rallySettingsNotifications => 'إشعارات';

  @override
  String get rallySettingsPersonalInformation => 'المعلومات الشخصية';

  @override
  String get rallySettingsPaperlessSettings => 'إعدادات إنجاز الأعمال بدون ورق';

  @override
  String get rallySettingsFindAtms => 'العثور على مواقع أجهزة الصراف الآلي';

  @override
  String get rallySettingsHelp => 'المساعدة';

  @override
  String get rallySettingsSignOut => 'تسجيل الخروج';

  @override
  String get rallyAccountTotal => 'الإجمالي';

  @override
  String get rallyBillsDue => 'الفواتير المستحقة';

  @override
  String get rallyBudgetLeft => 'الميزانية المتبقية';

  @override
  String get rallyAccounts => 'الحسابات';

  @override
  String get rallyBills => 'الفواتير';

  @override
  String get rallyBudgets => 'الميزانيات';

  @override
  String get rallyAlerts => 'التنبيهات';

  @override
  String get rallySeeAll => 'عرض الكل';

  @override
  String get rallyFinanceLeft => 'المتبقي';

  @override
  String get rallyTitleOverview => 'نظرة عامة';

  @override
  String get rallyTitleAccounts => 'الحسابات';

  @override
  String get rallyTitleBills => 'الفواتير';

  @override
  String get rallyTitleBudgets => 'الميزانيات';

  @override
  String get rallyTitleSettings => 'الإعدادات';

  @override
  String get rallyLoginLoginToRally => 'تسجيل الدخول إلى Rally';

  @override
  String get rallyLoginNoAccount => 'أليس لديك حساب؟';

  @override
  String get rallyLoginSignUp => 'الاشتراك';

  @override
  String get rallyLoginUsername => 'اسم المستخدم';

  @override
  String get rallyLoginPassword => 'كلمة المرور';

  @override
  String get rallyLoginLabelLogin => 'تسجيل الدخول';

  @override
  String get rallyLoginRememberMe => 'تذكُّر بيانات تسجيل الدخول إلى حسابي';

  @override
  String get rallyLoginButtonLogin => 'تسجيل الدخول';

  @override
  String get logOutLabel => 'خروج';

  @override
  String rallyAlertsMessageHeadsUpShopping(Object percent) {
    return 'تنبيه: لقد استهلكت $percent من ميزانية التسوّق لهذا الشهر.';
  }

  @override
  String rallyAlertsMessageSpentOnRestaurants(Object amount) {
    return 'لقد أنفقْت هذا الشهر مبلغ $amount على تناول الطعام في المطاعم.';
  }

  @override
  String rallyAlertsMessageATMFees(Object amount) {
    return 'لقد أنفقْت هذا الشهر مبلغ $amount كرسوم لأجهزة الصراف الآلي.';
  }

  @override
  String rallyAlertsMessageCheckingAccount(Object percent) {
    return 'عمل رائع! الرصيد الحالي في حسابك الجاري أعلى بنسبة $percent من الشهر الماضي.';
  }

  @override
  String rallyAlertsMessageUnassignedTransactions(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'يمكنك زيادة خصم الضرائب المحتملة. ضبط الفئات على $count معاملة لم يتم ضبطها.',
      many:
          'يمكنك زيادة خصم الضرائب المحتملة. ضبط الفئات على $count معاملة لم يتم ضبطها.',
      few:
          'يمكنك زيادة خصم الضرائب المحتملة. ضبط الفئات على $count معاملات لم يتم ضبطها.',
      two:
          'يمكنك زيادة خصم الضرائب المحتملة. ضبط الفئات على معاملتين ($count) لم يتم ضبطهما.',
      zero:
          'يمكنك زيادة خصم الضرائب المحتملة. ضبط الفئات على $count معاملة لم يتم ضبطها.',
      one:
          'يمكنك زيادة خصم الضرائب المحتملة. ضبط الفئات على معاملة واحدة لم يتم ضبطها.',
    );
    return '$_temp0';
  }

  @override
  String get rallySeeAllAccounts => 'عرض جميع الحسابات';

  @override
  String get rallySeeAllBills => 'عرض كل الفواتير';

  @override
  String get rallySeeAllBudgets => 'عرض جميع الميزانيات';

  @override
  String rallyAccountAmount(
      Object accountName, Object accountNumber, Object amount) {
    return 'الحساب $accountName رقم $accountNumber بمبلغ $amount.';
  }

  @override
  String rallyBillAmount(Object billName, Object date, Object amount) {
    return 'تاريخ استحقاق الفاتورة $billName التي تبلغ $amount هو $date.';
  }

  @override
  String rallyBudgetAmount(Object budgetName, Object amountUsed,
      Object amountTotal, Object amountLeft) {
    return 'ميزانية $budgetName مع استخدام $amountUsed من إجمالي $amountTotal، المبلغ المتبقي $amountLeft';
  }

  @override
  String get craneDescription => 'تطبيق سفر مُخصَّص';

  @override
  String get homeCategoryReference => 'الأنماط وغيرها من العروض التوضيحية';

  @override
  String get demoInvalidURL => 'تعذّر عرض عنوان URL:';

  @override
  String get demoOptionsTooltip => 'الخيارات';

  @override
  String get demoInfoTooltip => 'معلومات';

  @override
  String get demoCodeTooltip => 'رمز تجريبي';

  @override
  String get demoDocumentationTooltip => 'وثائق واجهة برمجة التطبيقات';

  @override
  String get demoFullscreenTooltip => 'ملء الشاشة';

  @override
  String get demoCodeViewerCopyAll => 'نسخ الكل';

  @override
  String get demoCodeViewerCopiedToClipboardMessage =>
      'تم نسخ النص إلى الحافظة.';

  @override
  String demoCodeViewerFailedToCopyToClipboardMessage(Object error) {
    return 'تعذّر نسخ النص إلى الحافظة: $error';
  }

  @override
  String get demoOptionsFeatureTitle => 'عرض الخيارات';

  @override
  String get demoOptionsFeatureDescription =>
      'انقر هنا لعرض الخيارات المتاحة لهذا العرض التوضيحي.';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsButtonLabel => 'الإعدادات';

  @override
  String get settingsButtonCloseLabel => 'إغلاق الإعدادات';

  @override
  String get settingsSystemDefault => 'النظام';

  @override
  String get settingsTextScaling => 'تغيير حجم النص';

  @override
  String get settingsTextScalingSmall => 'صغير';

  @override
  String get settingsTextScalingNormal => 'عادي';

  @override
  String get settingsTextScalingLarge => 'كبير';

  @override
  String get settingsTextScalingHuge => 'ضخم';

  @override
  String get settingsTextDirection => 'اتجاه النص';

  @override
  String get settingsTextDirectionLocaleBased => 'بناءً على اللغة';

  @override
  String get settingsTextDirectionLTR => 'من اليسار إلى اليمين';

  @override
  String get settingsTextDirectionRTL => 'من اليمين إلى اليسار';

  @override
  String get settingsLocale => 'اللغة';

  @override
  String get settingsPlatformMechanics => 'آليات الأنظمة الأساسية';

  @override
  String get settingsTheme => 'التصميم';

  @override
  String get settingsDarkTheme => 'داكن';

  @override
  String get settingsLightTheme => 'فاتح';

  @override
  String get settingsSlowMotion => 'التصوير البطيء';

  @override
  String get settingsAbout => 'لمحة عن معرض Flutter';

  @override
  String get settingsFeedback => 'إرسال التعليقات';

  @override
  String get settingsAttribution => 'من تصميم TOASTER في لندن';

  @override
  String get demoAppBarTitle => 'شريط التطبيق';

  @override
  String get demoAppBarSubtitle =>
      'يعرض الشريط معلومات وإجراءات متعلقة بالشاشة الحالية.';

  @override
  String get demoAppBarDescription =>
      'يعرض شريط التطبيق المحتوى والإجراءات المتعلّقة بالشاشة الحالية، ويُستخدَم لعرض العلامات التجارية وعناوين الشاشة والإجراءات والتنقّل بين الأقسام.';

  @override
  String get demoBottomAppBarTitle => 'شريط التطبيق السفلي';

  @override
  String get demoBottomAppBarSubtitle =>
      'يعرض لائحة التنقل والإجراءات في أسفل التطبيق';

  @override
  String get demoBottomAppBarDescription =>
      'تساعدك أشرطة التطبيقات السفلية على الوصول إلى لائحة التنقل السفلية وما يصل إلى أربعة إجراءات، بما في ذلك زر الإجراء العائم.';

  @override
  String get bottomAppBarNotch => 'قطع علوي';

  @override
  String get bottomAppBarPosition => 'موضع زر الإجراء العائم';

  @override
  String get bottomAppBarPositionDockedEnd => 'ثابت، في الطرف';

  @override
  String get bottomAppBarPositionDockedCenter => 'ثابت، في الوسط';

  @override
  String get bottomAppBarPositionFloatingEnd => 'عائم، في الطرف';

  @override
  String get bottomAppBarPositionFloatingCenter => 'عائم، في الوسط';

  @override
  String get demoBannerTitle => 'البانر';

  @override
  String get demoBannerSubtitle => 'عرض بانر داخل قائمة';

  @override
  String get demoBannerDescription =>
      'يعرض البانر رسالة مهمة ومختصرة، كما يقدّم إجراءات يمكن للمستخدمين اتخاذها (أو تجاهل البانر). يجب أن يتخذ المستخدم إجراء ليتم تجاهل البانر.';

  @override
  String get demoBottomNavigationTitle => 'شريط التنقل السفلي';

  @override
  String get demoBottomNavigationSubtitle => 'شريط تنقّل سفلي شبه مرئي';

  @override
  String get demoBottomNavigationPersistentLabels => 'التصنيفات المستمرة';

  @override
  String get demoBottomNavigationSelectedLabel => 'الملصق المُختار';

  @override
  String get demoBottomNavigationDescription =>
      'تعرض أشرطة التنقل السفلية بين ثلاث وخمس وجهات في الجزء السفلي من الشاشة. ويتم تمثيل كل وجهة برمز ووسم نصي اختياري. عند النقر على رمز التنقل السفلي، يتم نقل المستخدم إلى وجهة التنقل ذات المستوى الأعلى المرتبطة بذلك الرمز.';

  @override
  String get demoButtonTitle => 'الأزرار';

  @override
  String get demoButtonSubtitle =>
      'أزرار نصية أو بارزة أو محدَّدة الجوانب، والمزيد';

  @override
  String get demoTextButtonTitle => 'زر نصي';

  @override
  String get demoTextButtonDescription =>
      'يتلوّن الزر النصي عند الضغط عليه ولكن لا يرتفع. ينصح باستخدام الأزرار النصية على أشرطة الأدوات وفي مربّعات الحوار وداخل المساحات المتروكة';

  @override
  String get demoElevatedButtonTitle => 'زر بارز';

  @override
  String get demoElevatedButtonDescription =>
      'تضفي الأزرار البارزة مزيدًا من الحركة إلى التصميمات الأحادية البعد. فهي تبرِز الوظائف المعروضة في المساحات العريضة أو المكدَّسة.';

  @override
  String get demoOutlinedButtonTitle => 'زر محدَّد الجوانب';

  @override
  String get demoOutlinedButtonDescription =>
      'تصبح الأزرار المحدَّدة الجوانب غير شفافة وترتفع عند الضغط عليها. وغالبًا ما يتم إقرانها مع الأزرار البارزة للإشارة إلى إجراء ثانوي بديل.';

  @override
  String get demoToggleButtonTitle => 'أزرار التبديل';

  @override
  String get demoToggleButtonDescription =>
      'يمكن استخدام أزرار التبديل لتجميع الخيارات المرتبطة. لتأكيد مجموعات أزرار التبديل المرتبطة، يجب أن تشترك إحدى المجموعات في حاوية مشتركة.';

  @override
  String get demoFloatingButtonTitle => 'زر الإجراء العائم';

  @override
  String get demoFloatingButtonDescription =>
      'زر الإجراء العائم هو زر على شكل رمز دائري يتم تمريره فوق المحتوى للترويج لاتخاذ إجراء أساسي في التطبيق.';

  @override
  String get demoCardTitle => 'البطاقات';

  @override
  String get demoCardSubtitle => 'بطاقات المراجع ذات الحواف الدائرية';

  @override
  String get demoChipTitle => 'الشرائح';

  @override
  String get demoCardDescription =>
      'البطاقة هي ورقة مواد تُستخدَم لتمثيل بعض المعلومات ذات الصلة، مثلاً ألبوم أو موقع جغرافي أو وجبة أو تفاصيل جهة اتصال أو ما إلى ذلك.';

  @override
  String get demoChipSubtitle =>
      'العناصر المضغوطة التي تمثل إدخال أو سمة أو إجراء';

  @override
  String get demoActionChipTitle => 'شريحة الإجراءات';

  @override
  String get demoActionChipDescription =>
      'شرائح الإجراءات هي مجموعة من الخيارات التي تشغّل إجراءً ذا صلة بالمحتوى الأساسي. ينبغي أن يكون ظهور شرائح الإجراءات في واجهة المستخدم ديناميكيًا ومناسبًا للسياق.';

  @override
  String get demoChoiceChipTitle => 'شريحة الخيارات';

  @override
  String get demoChoiceChipDescription =>
      'تمثل شرائح الخيارات خيارًا واحدًا من بين مجموعة. تتضمن شرائح الخيارات النصوص الوصفية ذات الصلة أو الفئات.';

  @override
  String get demoFilterChipTitle => 'شريحة الفلتر';

  @override
  String get demoFilterChipDescription =>
      'تستخدم شرائح الفلتر العلامات أو الكلمات الوصفية باعتبارها طريقة لفلترة المحتوى.';

  @override
  String get demoInputChipTitle => 'شريحة الإدخال';

  @override
  String get demoInputChipDescription =>
      'تمثل شرائح الإدخالات معلومة معقدة، مثل كيان (شخص، مكان، أو شئ) أو نص محادثة، في نمط مضغوط.';

  @override
  String get demoDataTableTitle => 'جداول البيانات';

  @override
  String get demoDataTableSubtitle => 'صفوف وأعمدة من المعلومات';

  @override
  String get demoDataTableDescription =>
      'تعرض جداول البيانات معلومات على هيئة شبكة من الصفوف والأعمدة، حيث يتم تنظيم المعلومات بطريقة يَسهُل فحصها كي يتمكّن المستخدمون من البحث عن الأنماط والإحصاءات.';

  @override
  String get dataTableHeader => 'التغذية';

  @override
  String get dataTableColumnDessert => 'الحلوى (تقدّم مرة واحدة)';

  @override
  String get dataTableColumnCalories => 'السُعرات الحرارية';

  @override
  String get dataTableColumnFat => 'الدهون (بالغرام)';

  @override
  String get dataTableColumnCarbs => 'الكربوهيدرات (بالغرام)';

  @override
  String get dataTableColumnProtein => 'البروتينات (بالغرام)';

  @override
  String get dataTableColumnSodium => 'الصوديوم (بالغرام)';

  @override
  String get dataTableColumnCalcium => 'الكالسيوم (النسبة المئوية)';

  @override
  String get dataTableColumnIron => 'الحديد (النسبة المئوية)';

  @override
  String get dataTableRowFrozenYogurt => 'زبادي مجمّد';

  @override
  String get dataTableRowIceCreamSandwich => 'Ice Cream Sandwich';

  @override
  String get dataTableRowEclair => 'Eclair';

  @override
  String get dataTableRowCupcake => 'Cupcake';

  @override
  String get dataTableRowGingerbread => 'Gingerbread';

  @override
  String get dataTableRowJellyBean => 'Jelly bean';

  @override
  String get dataTableRowLollipop => 'Lollipop';

  @override
  String get dataTableRowHoneycomb => 'Honeycomb';

  @override
  String get dataTableRowDonut => 'Donut';

  @override
  String get dataTableRowApplePie => 'فطيرة التفاح';

  @override
  String dataTableRowWithSugar(Object value) {
    return '$value بالسكر';
  }

  @override
  String dataTableRowWithHoney(Object value) {
    return '$value بالعسل';
  }

  @override
  String get demoDialogTitle => 'مربعات الحوار';

  @override
  String get demoDialogSubtitle =>
      'مربعات حوار بسيطة ومخصّصة للتنبيهات وبملء الشاشة';

  @override
  String get demoAlertDialogTitle => 'التنبيه';

  @override
  String get demoAlertDialogDescription =>
      'يخبر مربع حوار التنبيهات المستخدم بالحالات التي تتطلب تأكيد الاستلام. ويشتمل مربع حوار التنبيهات على عنوان اختياري وقائمة إجراءات اختيارية.';

  @override
  String get demoAlertTitleDialogTitle => 'تنبيه مزوّد بعنوان';

  @override
  String get demoSimpleDialogTitle => 'بسيط';

  @override
  String get demoSimpleDialogDescription =>
      'يتيح مربع الحوار البسيط للمستخدم إمكانية الاختيار من بين عدة خيارات. ويشتمل مربع الحوار البسيط على عنوان اختياري يتم عرضه أعلى هذه الخيارات.';

  @override
  String get demoDividerTitle => 'أداة تقسيم الشاشة';

  @override
  String get demoDividerSubtitle =>
      'أداة تقسيم الشاشة هي خط رفيع يُجمِّع المحتوى في قوائم وتنسيقات.';

  @override
  String get demoDividerDescription =>
      'يمكن استخدام أدوات تقسيم الشاشة في القوائم والأدراج وغيرها لوضع فواصل بين المحتوى.';

  @override
  String get demoVerticalDividerTitle => 'أداة تقسيم الشاشة عموديًا';

  @override
  String get demoGridListsTitle => 'قوائم الشبكات';

  @override
  String get demoGridListsSubtitle => 'تنسيق الصفوف والأعمدة';

  @override
  String get demoGridListsDescription =>
      'الاستخدام المثالي لقوائم الشبكات هو لعرض البيانات المتجانسة التي عادة ما تكون صورًا. كل عنصر في الشبكة يُسمَى مربّع.';

  @override
  String get demoGridListsImageOnlyTitle => 'صورة فقط';

  @override
  String get demoGridListsHeaderTitle => 'تحتوي على رأس';

  @override
  String get demoGridListsFooterTitle => 'تحتوي على تذييل';

  @override
  String get demoSlidersTitle => 'شرائط التمرير';

  @override
  String get demoSlidersSubtitle => 'أدوات لاختيار قيمة عن طريق التمرير السريع';

  @override
  String get demoSlidersDescription =>
      'تعكس شرائط التمرير نطاقًا من القيم بطول شريط، ويمكن للمستخدمين اختيار قيمة واحدة من ذلك الشريط. وهي مثالية لتعديل الإعدادات، مثلاً مستوى الصوت أو السطوع أو تطبيق فلاتر الصور.';

  @override
  String get demoRangeSlidersTitle => 'شرائط تمرير تتضمَّن نطاقات';

  @override
  String get demoRangeSlidersDescription =>
      'تعكس شرائط التمرير نطاقًا من القيم بطول شريط. يمكن أن تحتوي على رموز في كلا طرفي الشريط بحيث تعكس نطاقًا من القيم. وهي مثالية لتعديل الإعدادات، مثلاً مستوى الصوت أو السطوع أو تطبيق فلاتر الصور.';

  @override
  String get demoCustomSlidersTitle => 'شرائط التمرير المخصَّصة';

  @override
  String get demoCustomSlidersDescription =>
      'تعكس شرائط التمرير نطاقًا من القيم بطول شريط، ويمكن للمستخدمين اختيار قيمة واحدة أو نطاق من القيم من ذلك الشريط. يمكن تخصيص شرائط التمرير وتغيير تصميماتها.';

  @override
  String get demoSlidersContinuousWithEditableNumericalValue =>
      'مستمر بقيمة رقمية قابلة للتعديل';

  @override
  String get demoSlidersDiscrete => 'منفصل القيم';

  @override
  String get demoSlidersDiscreteSliderWithCustomTheme =>
      'شريط تمرير منفصل القيم بتصميم مخصَّص';

  @override
  String get demoSlidersContinuousRangeSliderWithCustomTheme =>
      'شريط تمرير بنطاق مستمر وتصميم مخصَّص';

  @override
  String get demoSlidersContinuous => 'مستمر';

  @override
  String get demoSlidersEditableNumericalValue => 'قيمة رقمية قابلة للتعديل';

  @override
  String get demoMenuTitle => 'قائمة';

  @override
  String get demoContextMenuTitle => 'قائمة السياقات';

  @override
  String get demoSectionedMenuTitle => 'قائمة ذات أقسام';

  @override
  String get demoSimpleMenuTitle => 'قائمة بسيطة';

  @override
  String get demoChecklistMenuTitle => 'قائمة التحقّق';

  @override
  String get demoMenuSubtitle => 'أزرار قوائم وقوائم بسيطة';

  @override
  String get demoMenuDescription =>
      'تعرض القائمة مجموعة من الخيارات على سطح مؤقت، حيث تظهر عندما يتفاعل المستخدمون مع زر أو إجراء أو عنصر تحكم آخر.';

  @override
  String get demoMenuItemValueOne => 'أول عنصر قائمة';

  @override
  String get demoMenuItemValueTwo => 'ثاني عنصر قائمة';

  @override
  String get demoMenuItemValueThree => 'ثالث عنصر قائمة';

  @override
  String get demoMenuOne => 'واحد';

  @override
  String get demoMenuTwo => 'اثنان';

  @override
  String get demoMenuThree => 'ثلاثة';

  @override
  String get demoMenuFour => 'أربعة';

  @override
  String get demoMenuAnItemWithAContextMenuButton => 'عنصر يفتح قائمة سياقات';

  @override
  String get demoMenuContextMenuItemOne => 'أول عنصر في قائمة السياقات';

  @override
  String get demoMenuADisabledMenuItem => 'عنصر قائمة غير مفعّل';

  @override
  String get demoMenuContextMenuItemThree => 'ثالث عنصر في قائمة السياقات';

  @override
  String get demoMenuAnItemWithASectionedMenu => 'عنصر يفتح قائمة ذات أقسام';

  @override
  String get demoMenuPreview => 'معاينة';

  @override
  String get demoMenuShare => 'مشاركة';

  @override
  String get demoMenuGetLink => 'الحصول على الرابط';

  @override
  String get demoMenuRemove => 'إزالة';

  @override
  String demoMenuSelected(Object value) {
    return 'القيمة التي تم اختيارها: $value';
  }

  @override
  String demoMenuChecked(Object value) {
    return 'القيمة التي تم وضع علامة عليها: $value';
  }

  @override
  String get demoNavigationDrawerTitle => 'لائحة التنقّل';

  @override
  String get demoNavigationDrawerSubtitle => 'عرض لائحة تنقّل في شريط التطبيق';

  @override
  String get demoNavigationDrawerDescription =>
      'لوحة تصميم متعدد الأبعاد تتحرك أفقيًا من حافة الشاشة لعرض روابط التنقّل في تطبيق.';

  @override
  String get demoNavigationDrawerUserName => 'اسم المستخدم';

  @override
  String get demoNavigationDrawerUserEmail => 'user.name@example.com';

  @override
  String get demoNavigationDrawerToPageOne => 'العنصر الأول';

  @override
  String get demoNavigationDrawerToPageTwo => 'العنصر الثاني';

  @override
  String get demoNavigationDrawerText =>
      'مرِّر سريعًا من الحافة أو انقر على الرمز في أعلى يمين الصفحة لعرض لائحة التنقّل.';

  @override
  String get demoNavigationRailTitle => 'شريط التنقّل';

  @override
  String get demoNavigationRailSubtitle => 'عرض شريط تنقّل داخل تطبيق';

  @override
  String get demoNavigationRailDescription =>
      'أداة أساسية تظهر في يمين أو يسار التطبيق للتنقّل بين عدد صغير من الأقسام داخل التطبيق، غالبًا ما بين 3 إلى 5 أقسام.';

  @override
  String get demoNavigationRailFirst => 'الأول';

  @override
  String get demoNavigationRailSecond => 'الثاني';

  @override
  String get demoNavigationRailThird => 'الثالث';

  @override
  String get demoMenuAnItemWithASimpleMenu => 'عنصر يفتح قائمة بسيطة';

  @override
  String get demoMenuAnItemWithAChecklistMenu => 'عنصر يفتح قائمة تحقّق';

  @override
  String get demoFullscreenDialogTitle => 'ملء الشاشة';

  @override
  String get demoFullscreenDialogDescription =>
      'تحدِّد خاصية fullscreenDialog ما إذا كانت الصفحة الواردة هي مربع حوار نمطي بملء الشاشة.';

  @override
  String get demoCupertinoActivityIndicatorTitle => 'مؤشر النشاط';

  @override
  String get demoCupertinoActivityIndicatorSubtitle => 'مؤشرات نشاط بنمط iOS';

  @override
  String get demoCupertinoActivityIndicatorDescription =>
      'مؤشر نشاط بنمط iOS ويدور في اتجاه عقارب الساعة';

  @override
  String get demoCupertinoButtonsTitle => 'الأزرار';

  @override
  String get demoCupertinoButtonsSubtitle =>
      'أزرار مستوحاة من نظام التشغيل iOS';

  @override
  String get demoCupertinoButtonsDescription =>
      'زر مستوحى من نظام التشغيل iOS. يتم عرض هذا الزر على شكل نص و/أو رمز يتلاشى ويظهر بالتدريج عند اللمس. وقد يكون مزوّدًا بخلفية اختياريًا.';

  @override
  String get demoCupertinoContextMenuTitle => 'قائمة السياقات';

  @override
  String get demoCupertinoContextMenuSubtitle => 'قائمة سياقات بنمط iOS';

  @override
  String get demoCupertinoContextMenuDescription =>
      'قائمة سياقات بنمط iOS تظهر بوضع ملء الشاشة عند الضغط مع الاستمرار على أحد العناصر';

  @override
  String get demoCupertinoContextMenuActionOne => 'الإجراء الأول';

  @override
  String get demoCupertinoContextMenuActionTwo => 'الإجراء الثاني';

  @override
  String get demoCupertinoContextMenuActionText =>
      'اضغط مع الاستمرار على شعار Flutter لعرض قائمة السياقات.';

  @override
  String get demoCupertinoAlertsTitle => 'التنبيهات';

  @override
  String get demoCupertinoAlertsSubtitle =>
      'مربعات حوار التنبيهات المستوحاة من نظام التشغيل iOS';

  @override
  String get demoCupertinoAlertTitle => 'تنبيه';

  @override
  String get demoCupertinoAlertDescription =>
      'يخبر مربع حوار التنبيهات المستخدم بالحالات التي تتطلب تأكيد الاستلام. ويشتمل مربع حوار التنبيهات على عنوان اختياري ومحتوى اختياري وقائمة إجراءات اختيارية. ويتم عرض العنوان أعلى المحتوى بينما تُعرض الإجراءات أسفل المحتوى.';

  @override
  String get demoCupertinoAlertWithTitleTitle => 'تنبيه يتضمّن عنوانًا';

  @override
  String get demoCupertinoAlertButtonsTitle => 'تنبيه مزوّد بأزرار';

  @override
  String get demoCupertinoAlertButtonsOnlyTitle => 'أزرار التنبيه فقط';

  @override
  String get demoCupertinoActionSheetTitle => 'ورقة الإجراءات';

  @override
  String get demoCupertinoActionSheetDescription =>
      'ورقة الإجراءات هي ورقة أنماط معيّنة للتنبيهات تقدّم للمستخدم مجموعة مكوّنة من خيارين أو أكثر مرتبطة بالسياق الحالي. ويمكن أن تتضمّن ورقة الإجراءات عنوانًا ورسالة إضافية وقائمة إجراءات.';

  @override
  String get demoCupertinoNavigationBarTitle => 'شريط التنقل';

  @override
  String get demoCupertinoNavigationBarSubtitle => 'شريط تنقل بنمط iOS';

  @override
  String get demoCupertinoNavigationBarDescription =>
      'شريط تنقل بنمط iOS شريط التنقل هو شريط أدوات يتكون على الأقل من عنوان صفحة في وسط شريط الأدوات.';

  @override
  String get demoCupertinoPickerTitle => 'أدوات اختيار الوقت';

  @override
  String get demoCupertinoPickerSubtitle => 'أدوات الاختيار بنمط iOS';

  @override
  String get demoCupertinoPickerDescription =>
      'تطبيق مصغّر لأدوات اختيار بنمط iOS يمكن استخدامه لاختيار السلاسل النصية أو التواريخ أو الأوقات أو لاختيار التاريخ والوقت معًا.';

  @override
  String get demoCupertinoPickerTimer => 'الموقِّت';

  @override
  String get demoCupertinoPicker => 'أداة الاختيار';

  @override
  String get demoCupertinoPickerDate => 'التاريخ';

  @override
  String get demoCupertinoPickerTime => 'الوقت';

  @override
  String get demoCupertinoPickerDateTime => 'التاريخ والوقت';

  @override
  String get demoCupertinoPullToRefreshTitle => 'سحب لإعادة التحميل';

  @override
  String get demoCupertinoPullToRefreshSubtitle =>
      'عنصر تحكم السحب لإعادة التحميل بنمط iOS';

  @override
  String get demoCupertinoPullToRefreshDescription =>
      'أداة تنفّذ إعدادات التحكم في المحتوى للسحب لأعادة التحميل بنمط iOS';

  @override
  String get demoCupertinoSegmentedControlTitle => 'عنصر تحكّم شريحة';

  @override
  String get demoCupertinoSegmentedControlSubtitle =>
      'عنصر تحكّم شريحة بنمط iOS';

  @override
  String get demoCupertinoSegmentedControlDescription =>
      'يُستخدَم للاختيار بين عدد من الخيارات يستبعد أحدها الآخر. عند تحديد خيار في عنصر تحكّم الشريحة، يتم إلغاء اختيار العنصر الآخر في عنصر تحكّم الشريحة.';

  @override
  String get demoCupertinoSliderTitle => 'شريط التمرير';

  @override
  String get demoCupertinoSliderSubtitle => 'شريط تمرير بنمط iOS';

  @override
  String get demoCupertinoSliderDescription =>
      'يمكن استخدام شريط تمرير للاختيار من مجموعة قيم متصلة أو مجموعة قيم منفصلة.';

  @override
  String demoCupertinoSliderContinuous(Object value) {
    return 'متصل القيم: $value';
  }

  @override
  String demoCupertinoSliderDiscrete(Object value) {
    return 'منفصل القيم: $value';
  }

  @override
  String get demoCupertinoSwitchSubtitle => 'مفتاح تبديل بنمط iOS';

  @override
  String get demoCupertinoSwitchDescription =>
      'يُستخدَم مفتاح التبديل لتفعيل إعداد فردي أو إيقافه.';

  @override
  String get demoCupertinoTabBarTitle => 'شريط علامات التبويب';

  @override
  String get demoCupertinoTabBarSubtitle =>
      'شريط علامات التبويب السفلي بنمط iOS';

  @override
  String get demoCupertinoTabBarDescription =>
      'شريط علامات تبويب للتنقل السفلي بنمط iOS. يعرض عدة علامات تبويب، حيث تكون هناك علامة تبويب واحدة نشطة وبشكل تلقائي تكون هي علامة التبويب الأولى.';

  @override
  String get cupertinoTabBarHomeTab => 'علامة التبويب الرئيسية';

  @override
  String get cupertinoTabBarChatTab => 'الدردشة';

  @override
  String get cupertinoTabBarProfileTab => 'الملف الشخصي';

  @override
  String get demoCupertinoTextFieldTitle => 'حقول النص';

  @override
  String get demoCupertinoTextFieldSubtitle => 'حقول نصل بنمط iOS';

  @override
  String get demoCupertinoTextFieldDescription =>
      'يسمح حقل النص للمستخدم بإدخال نص إما باستخدام لوحة مفاتيح حقيقية أو لوحة مفاتيح تظهر على الشاشة.';

  @override
  String get demoCupertinoTextFieldPIN => 'رقم التعريف الشخصي';

  @override
  String get demoCupertinoSearchTextFieldTitle => 'الحقل النصي للبحث';

  @override
  String get demoCupertinoSearchTextFieldSubtitle =>
      'الحقل النصي للبحث بنمط iOS';

  @override
  String get demoCupertinoSearchTextFieldDescription =>
      'حقل نصي للبحث يتيح للمستخدم البحث عبر إدخال نص، ويمكن أن يوفّر للمستخدم اقتراحات ويعمل على فلترتها.';

  @override
  String get demoCupertinoSearchTextFieldPlaceholder => 'يُرجى إدخال نص.';

  @override
  String get demoCupertinoScrollbarTitle => 'شريط التمرير';

  @override
  String get demoCupertinoScrollbarSubtitle => 'شريط تمرير بنمط iOS';

  @override
  String get demoCupertinoScrollbarDescription =>
      'شريط تمرير يشمل العنصر الثانوي المتوفّر.';

  @override
  String get demoMotionTitle => 'الحركة';

  @override
  String get demoMotionSubtitle => 'كل أنماط الانتقال المُعرَّفة مسبقًا';

  @override
  String get demoContainerTransformDemoInstructions =>
      'البطاقات والقوائم وأزرار الإجراءات الرئيسية (FAB)';

  @override
  String get demoSharedXAxisDemoInstructions => 'زرّا التالي والرجوع';

  @override
  String get demoSharedYAxisDemoInstructions =>
      'ترتيب حسب \"الأغاني المشغّلة مؤخرًا\"';

  @override
  String get demoSharedZAxisDemoInstructions => 'زر رمز الإعدادات';

  @override
  String get demoFadeThroughDemoInstructions => 'شريط التنقّل السفلي';

  @override
  String get demoFadeScaleDemoInstructions =>
      'مربّع الحوار المشروط وزر الإجراء الرئيسي (FAB)';

  @override
  String get demoContainerTransformTitle => 'تحويل الحاوية';

  @override
  String get demoContainerTransformDescription =>
      'تم تصميم نمط تحويل الحاوية لتأثيرات الانتقال بين العناصر في واجهة المستخدم التي تتضمّن حاوية. ينشئ هذا النمط تأثير ربط مرئي بين عنصرين في واجهة المستخدم.';

  @override
  String get demoContainerTransformModalBottomSheetTitle => 'وضع التلاشي';

  @override
  String get demoContainerTransformTypeFade => 'التلاشي';

  @override
  String get demoContainerTransformTypeFadeThrough => 'التلاشي التدريجي';

  @override
  String get demoMotionPlaceholderTitle => 'عنوان';

  @override
  String get demoMotionPlaceholderSubtitle => 'نص ثانوي';

  @override
  String get demoMotionSmallPlaceholderSubtitle => 'ثانوي';

  @override
  String get demoMotionDetailsPageTitle => 'صفحة تفاصيل';

  @override
  String get demoMotionListTileTitle => 'عنصر قائمة';

  @override
  String get demoSharedAxisDescription =>
      'يتم استخدام نمط المحور المشترك لتأثيرات الانتقال بين العناصر في واجهة المستخدم التي تربطها علاقة انتقال أو علاقة مكانية. يستخدم هذا النمط التحويل المشترك على محور \"س\" أو \"ص\" أو \"ع\" لتعزيز العلاقة بين العناصر.';

  @override
  String get demoSharedXAxisTitle => 'محور \"س\" المشترك';

  @override
  String get demoSharedXAxisBackButtonText => 'رجوع';

  @override
  String get demoSharedXAxisNextButtonText => 'التالي';

  @override
  String get demoSharedXAxisCoursePageTitle => 'تقديم دوراتك بسلاسة';

  @override
  String get demoSharedXAxisCoursePageSubtitle =>
      'تظهر الفئات المجمّعة كمجموعات في الخلاصة. يمكنك دائمًا تغيير هذا لاحقًا.';

  @override
  String get demoSharedXAxisArtsAndCraftsCourseTitle => 'فنون وأعمال حِرَفية';

  @override
  String get demoSharedXAxisBusinessCourseTitle => 'أنشطة تجارية';

  @override
  String get demoSharedXAxisIllustrationCourseTitle => 'صور توضيحية';

  @override
  String get demoSharedXAxisDesignCourseTitle => 'تصميمات';

  @override
  String get demoSharedXAxisCulinaryCourseTitle => 'طهي';

  @override
  String get demoSharedXAxisBundledCourseSubtitle => 'مجمّع';

  @override
  String get demoSharedXAxisIndividualCourseSubtitle => 'تظهر بشكل فردي';

  @override
  String get demoSharedXAxisSignInWelcomeText => 'مرحبًا David Park';

  @override
  String get demoSharedXAxisSignInSubtitleText => 'تسجيل الدخول باستخدام حسابك';

  @override
  String get demoSharedXAxisSignInTextFieldLabel =>
      'البريد الإلكتروني أو رقم الهاتف';

  @override
  String get demoSharedXAxisForgotEmailButtonText =>
      'هل نسيت البريد الإلكتروني؟';

  @override
  String get demoSharedXAxisCreateAccountButtonText => 'إنشاء حساب';

  @override
  String get demoSharedYAxisTitle => 'محور \"ص\" المشترك';

  @override
  String get demoSharedYAxisAlbumCount => '268 ألبومًا';

  @override
  String get demoSharedYAxisAlphabeticalSortTitle => 'أ-ي';

  @override
  String get demoSharedYAxisRecentSortTitle => 'شغلت مؤخرًا';

  @override
  String get demoSharedYAxisAlbumTileTitle => 'ألبوم';

  @override
  String get demoSharedYAxisAlbumTileSubtitle => 'فنان';

  @override
  String get demoSharedYAxisAlbumTileDurationUnit => 'دقيقة';

  @override
  String get demoSharedZAxisTitle => 'محور \"ع\" المشترك';

  @override
  String get demoSharedZAxisSettingsPageTitle => 'الإعدادات';

  @override
  String get demoSharedZAxisBurgerRecipeTitle => 'برغر';

  @override
  String get demoSharedZAxisBurgerRecipeDescription => 'وصفة البرغر';

  @override
  String get demoSharedZAxisSandwichRecipeTitle => 'شطيرة';

  @override
  String get demoSharedZAxisSandwichRecipeDescription => 'وصفة الشطيرة';

  @override
  String get demoSharedZAxisDessertRecipeTitle => 'حلويات';

  @override
  String get demoSharedZAxisDessertRecipeDescription => 'وصفة الحلويات';

  @override
  String get demoSharedZAxisShrimpPlateRecipeTitle => 'روبيان';

  @override
  String get demoSharedZAxisShrimpPlateRecipeDescription => 'وصفة طبق الروبيان';

  @override
  String get demoSharedZAxisCrabPlateRecipeTitle => 'سلطعون';

  @override
  String get demoSharedZAxisCrabPlateRecipeDescription => 'وصفة طبق السلطعون';

  @override
  String get demoSharedZAxisBeefSandwichRecipeTitle => 'شطيرة لحم بقري';

  @override
  String get demoSharedZAxisBeefSandwichRecipeDescription =>
      'وصفة شطيرة اللحم البقري';

  @override
  String get demoSharedZAxisSavedRecipesListTitle => 'الوصفات المحفوظة';

  @override
  String get demoSharedZAxisProfileSettingLabel => 'الملف الشخصي';

  @override
  String get demoSharedZAxisNotificationSettingLabel => 'الإشعارات';

  @override
  String get demoSharedZAxisPrivacySettingLabel => 'الخصوصية';

  @override
  String get demoSharedZAxisHelpSettingLabel => 'مساعدة';

  @override
  String get demoFadeThroughTitle => 'التلاشي التدريجي';

  @override
  String get demoFadeThroughDescription =>
      'يتم استخدام نمط التلاشي التدريجي لتأثيرات الانتقال بين عناصر واجهة المستخدم التي لا تربطها علاقة قوية ببعضها.';

  @override
  String get demoFadeThroughAlbumsDestination => 'ألبومات';

  @override
  String get demoFadeThroughPhotosDestination => 'صور';

  @override
  String get demoFadeThroughSearchDestination => 'بحث';

  @override
  String get demoFadeThroughTextPlaceholder => '123 صورة';

  @override
  String get demoFadeScaleTitle => 'التلاشي';

  @override
  String get demoFadeScaleDescription =>
      'يتم استخدام نمط التلاشي مع عناصر واجهة المستخدم التي تدخل في حدود الشاشة أو تخرج منها، مثلاً مربّع حوار يتلاشى في مركز الشاشة.';

  @override
  String get demoFadeScaleShowAlertDialogButton => 'إظهار مربّع حوار مشروط';

  @override
  String get demoFadeScaleShowFabButton => 'إظهار زر الإجراء الرئيسي (FAB)';

  @override
  String get demoFadeScaleHideFabButton => 'إخفاء زر الإجراء الرئيسي (FAB)';

  @override
  String get demoFadeScaleAlertDialogHeader => 'مربّع حوار تنبيه';

  @override
  String get demoFadeScaleAlertDialogCancelButton => 'إلغاء';

  @override
  String get demoFadeScaleAlertDialogDiscardButton => 'تجاهل';

  @override
  String get demoColorsTitle => 'الألوان';

  @override
  String get demoColorsSubtitle => 'جميع الألوان المحدّدة مسبقًا';

  @override
  String get demoColorsDescription =>
      'ثوابت اللون وعينات الألوان التي تُمثل لوحة ألوان التصميم المتعدد الأبعاد';

  @override
  String get demoTypographyTitle => 'أسلوب الخط';

  @override
  String get demoTypographySubtitle => 'جميع أنماط النص المحدّدة مسبقًا';

  @override
  String get demoTypographyDescription =>
      'تعريف أساليب الخط المختلفة في التصميم المتعدد الأبعاد';

  @override
  String get demo2dTransformationsTitle => 'التحويلات الثنائية الأبعاد';

  @override
  String get demo2dTransformationsSubtitle => 'عرض شامل، تكبير/تصغير، تدوير';

  @override
  String get demo2dTransformationsDescription =>
      'انقر لتعديل المربّعات واستخدام الإيماءات للتنقل خلال المشهد. اسحب لتنفيذ العرض الشامل وحرّك إصبعيك للتكبير/التصغير ويمكنك التدوير بإصبعين. اضغط على زر إعادة الضبط للرجوع إلى الاتجاه الأصلي.';

  @override
  String get demo2dTransformationsResetTooltip => 'إعادة ضبط التحويلات';

  @override
  String get demo2dTransformationsEditTooltip => 'تعديل المربّع';

  @override
  String get buttonText => 'زر';

  @override
  String get demoBottomSheetTitle => 'البطاقة السفلية';

  @override
  String get demoBottomSheetSubtitle => 'البطاقات السفلية المقيِّدة والعادية';

  @override
  String get demoBottomSheetPersistentTitle => 'البطاقة السفلية العادية';

  @override
  String get demoBottomSheetPersistentDescription =>
      'تعرض البطاقة السفلية العادية معلومات تكميلية للمحتوى الأساسي للتطبيق. ولا تختفي هذه البطاقة عندما يتفاعل المستخدم مع المحتوى الآخر على الشاشة.';

  @override
  String get demoBottomSheetModalTitle => 'البطاقة السفلية المقيِّدة';

  @override
  String get demoBottomSheetModalDescription =>
      'تعتبر البطاقة السفلية المقيِّدة بديلاً لقائمة أو مربّع حوار ولا تسمح للمستخدم بالتفاعل مع المحتوى الآخر على الشاشة.';

  @override
  String get demoBottomSheetAddLabel => 'إضافة';

  @override
  String get demoBottomSheetButtonText => 'عرض البطاقة السفلية';

  @override
  String get demoBottomSheetHeader => 'العنوان';

  @override
  String demoBottomSheetItem(Object value) {
    return 'السلعة $value';
  }

  @override
  String get demoListsTitle => 'القوائم';

  @override
  String get demoListsSubtitle => 'التمرير خلال تنسيقات القوائم';

  @override
  String get demoListsDescription =>
      'صف بارتفاع واحد ثابت يحتوي عادةً على نص ورمز سابق أو لاحق.';

  @override
  String get demoOneLineListsTitle => 'سطر واحد';

  @override
  String get demoTwoLineListsTitle => 'سطران';

  @override
  String get demoListsSecondary => 'نص ثانوي';

  @override
  String get demoProgressIndicatorTitle => 'مؤشرات التقدم';

  @override
  String get demoProgressIndicatorSubtitle => 'خطي، دائري، غير نهائي';

  @override
  String get demoCircularProgressIndicatorTitle => 'مؤشر تقدم دائري';

  @override
  String get demoCircularProgressIndicatorDescription =>
      'مؤشر تقدم دائري بتصميم متعدد الأبعاد (Material Design) ويدور ليدل على أن التطبيق مشغول';

  @override
  String get demoLinearProgressIndicatorTitle => 'مؤشر تقدم خطي';

  @override
  String get demoLinearProgressIndicatorDescription =>
      'مؤشر تقدم خطي بتصميم متعدد الأبعاد ويُعرَف أيضًا بشريط التقدم';

  @override
  String get demoPickersTitle => 'أدوات اختيار الوقت';

  @override
  String get demoPickersSubtitle => 'اختيار التاريخ والوقت';

  @override
  String get demoDatePickerTitle => 'أداة اختيار التاريخ';

  @override
  String get demoDatePickerDescription =>
      'تعرض مربّع حوار يحتوي على أداة اختيار تاريخ ذات تصميم متعدد الأبعاد.';

  @override
  String get demoTimePickerTitle => 'أداة اختيار الوقت';

  @override
  String get demoTimePickerDescription =>
      'تعرض مربّع حوار يحتوي على أداة اختيار وقت ذات تصميم متعدد الأبعاد.';

  @override
  String get demoDateRangePickerTitle => 'أداة اختيار المرحلة الزمنية';

  @override
  String get demoDateRangePickerDescription =>
      'تعرض هذه الأداة مربّع حوار يحتوي على أداة بتصميم متعدد الأبعاد لاختيار المرحلة الزمنية.';

  @override
  String get demoPickersShowPicker => 'إظهار أداة الاختيار';

  @override
  String get demoTabsTitle => 'علامات التبويب';

  @override
  String get demoTabsScrollingTitle => 'التمرير';

  @override
  String get demoTabsNonScrollingTitle => 'عدم التمرير';

  @override
  String get demoTabsSubtitle =>
      'علامات تبويب تحتوي على عروض يمكن التنقّل خلالها بشكل مستقل';

  @override
  String get demoTabsDescription =>
      'تساعد علامات التبويب على تنظيم المحتوى في الشاشات المختلفة ومجموعات البيانات والتفاعلات الأخرى.';

  @override
  String get demoSnackbarsTitle => 'أشرطة إعلام منبثقة';

  @override
  String get demoSnackbarsSubtitle =>
      'تعرض \"أشرطة الإعلام المنبثقة\" رسائل في أسفل الشاشة';

  @override
  String get demoSnackbarsDescription =>
      'تُعلِم \"أشرطة الإعلام المنبثقة\" المستخدمين بعملية نفّذها أو سينفّذها التطبيق. وتظهر مؤقتًا في أسفل الشاشة. ويُفترَض ألا تشوش هذه الأشرطة على تجربة المستخدم ولا تتطلّب تدخل المستخدم كي تختفي.';

  @override
  String get demoSnackbarsButtonLabel => 'عرض شريط إعلام منبثق';

  @override
  String get demoSnackbarsText => 'هذا \"شريط إعلام منبثق\".';

  @override
  String get demoSnackbarsActionButtonLabel => 'إجراء';

  @override
  String get demoSnackbarsAction =>
      'لقد ضغطت على إجراء في \"شريط الإعلام المنبثق\".';

  @override
  String get demoSelectionControlsTitle => 'عناصر التحكّم في الاختيار';

  @override
  String get demoSelectionControlsSubtitle =>
      'مربّعات الاختيار وأزرار الاختيار ومفاتيح التبديل';

  @override
  String get demoSelectionControlsCheckboxTitle => 'مربع اختيار';

  @override
  String get demoSelectionControlsCheckboxDescription =>
      'تسمح مربّعات الاختيار للمستخدمين باختيار عدة خيارات من مجموعة من الخيارات. القيمة المعتادة لمربّع الاختيار هي \"صحيح\" أو \"غير صحيح\" ويمكن أيضًا إضافة حالة ثالثة وهي \"خالية\".';

  @override
  String get demoSelectionControlsRadioTitle => 'زر اختيار';

  @override
  String get demoSelectionControlsRadioDescription =>
      'تسمح أزرار الاختيار للقارئ بتحديد خيار واحد من مجموعة من الخيارات. يمكنك استخدام أزرار الاختيار لتحديد اختيارات حصرية إذا كنت تعتقد أنه يجب أن تظهر للمستخدم كل الخيارات المتاحة جنبًا إلى جنب.';

  @override
  String get demoSelectionControlsSwitchTitle => 'مفاتيح التبديل';

  @override
  String get demoSelectionControlsSwitchDescription =>
      'تؤدي مفاتيح التشغيل/الإيقاف إلى تبديل حالة خيار واحد في الإعدادات. ويجب توضيح الخيار الذي يتحكّم فيه المفتاح وكذلك حالته، وذلك من خلال التسمية المضمَّنة المتاحة.';

  @override
  String get demoBottomTextFieldsTitle => 'حقول النص';

  @override
  String get demoTextFieldTitle => 'حقول النص';

  @override
  String get demoTextFieldSubtitle =>
      'سطر واحد من النص والأرقام القابلة للتعديل';

  @override
  String get demoTextFieldDescription =>
      'تسمح حقول النص للمستخدمين بإدخال نص في واجهة مستخدم. وتظهر عادةً في النماذج ومربّعات الحوار.';

  @override
  String get demoTextFieldShowPasswordLabel => 'عرض كلمة المرور';

  @override
  String get demoTextFieldHidePasswordLabel => 'إخفاء كلمة المرور';

  @override
  String get demoTextFieldFormErrors =>
      'يُرجى تصحيح الأخطاء باللون الأحمر قبل الإرسال.';

  @override
  String get demoTextFieldNameRequired => 'الاسم مطلوب.';

  @override
  String get demoTextFieldOnlyAlphabeticalChars =>
      'يُرجى إدخال حروف أبجدية فقط.';

  @override
  String get demoTextFieldEnterUSPhoneNumber =>
      '(###) ###-#### - يُرجى إدخال رقم هاتف صالح في الولايات المتحدة.';

  @override
  String get demoTextFieldEnterPassword => 'يرجى إدخال كلمة مرور.';

  @override
  String get demoTextFieldPasswordsDoNotMatch => 'كلمتا المرور غير متطابقتين.';

  @override
  String get demoTextFieldWhatDoPeopleCallYou => 'بأي اسم يناديك الآخرون؟';

  @override
  String get demoTextFieldNameField => 'الاسم*';

  @override
  String get demoTextFieldWhereCanWeReachYou =>
      'على أي رقم يمكننا التواصل معك؟';

  @override
  String get demoTextFieldPhoneNumber => 'رقم الهاتف*';

  @override
  String get demoTextFieldYourEmailAddress => 'عنوان بريدك الإلكتروني';

  @override
  String get demoTextFieldEmail => 'رسالة إلكترونية';

  @override
  String get demoTextFieldTellUsAboutYourself =>
      'أخبِرنا عن نفسك (مثلاً ما هي هواياتك المفضّلة أو ما هو مجال عملك؟)';

  @override
  String get demoTextFieldKeepItShort => 'يُرجى الاختصار، هذا مجرد عرض توضيحي.';

  @override
  String get demoTextFieldLifeStory => 'قصة حياة';

  @override
  String get demoTextFieldSalary => 'الراتب';

  @override
  String get demoTextFieldUSD => 'دولار أمريكي';

  @override
  String get demoTextFieldNoMoreThan => 'يجب ألا تزيد عن 8 أحرف.';

  @override
  String get demoTextFieldPassword => 'كلمة المرور*';

  @override
  String get demoTextFieldRetypePassword => 'أعِد كتابة كلمة المرور*';

  @override
  String get demoTextFieldSubmit => 'إرسال';

  @override
  String demoTextFieldNameHasPhoneNumber(Object name, Object phoneNumber) {
    return 'رقم هاتف $name هو $phoneNumber.';
  }

  @override
  String get demoTextFieldRequiredField => 'تشير علامة * إلى حقل مطلوب.';

  @override
  String get demoTooltipTitle => 'التلميحات';

  @override
  String get demoTooltipSubtitle =>
      'رسالة قصيرة تُعرَض عند الضغط مع الاستمرار أو تمرير مؤشر الماوس';

  @override
  String get demoTooltipDescription =>
      'توفّر التلميحات تصنيفات نصية تساعد في شرح وظيفة زر أو إجراء آخر من إجراءات واجهة المستخدم. تعرض التلميحات نص إخباري عندما يمرّر المستخدمون مؤشر الماوس على عنصر أو يركزون عليه أو يضغطون عليه مع الاستمرار.';

  @override
  String get demoTooltipInstructions =>
      'اضغط مع الاستمرار على العنصر أو مرّر مؤشر الماوس عليه لعرض التلميح.';

  @override
  String get bottomNavigationCommentsTab => 'التعليقات';

  @override
  String get bottomNavigationCalendarTab => 'التقويم';

  @override
  String get bottomNavigationAccountTab => 'الحساب';

  @override
  String get bottomNavigationAlarmTab => 'المنبّه';

  @override
  String get bottomNavigationCameraTab => 'الكاميرا';

  @override
  String bottomNavigationContentPlaceholder(Object title) {
    return 'عنصر نائب لعلامة تبويب $title';
  }

  @override
  String get buttonTextCreate => 'إنشاء';

  @override
  String dialogSelectedOption(Object value) {
    return 'لقد اخترت القيمة التالية: \"$value\"';
  }

  @override
  String get chipTurnOnLights => 'تشغيل الأضواء';

  @override
  String get chipSmall => 'صغير';

  @override
  String get chipMedium => 'متوسط';

  @override
  String get chipLarge => 'كبير';

  @override
  String get chipElevator => 'مصعَد';

  @override
  String get chipWasher => 'غسّالة';

  @override
  String get chipFireplace => 'موقد';

  @override
  String get chipBiking => 'ركوب الدراجة';

  @override
  String get demo => 'إصدار تجريبي';

  @override
  String get bottomAppBar => 'شريط التطبيق السفلي';

  @override
  String get loading => 'جارٍ التحميل';

  @override
  String get dialogDiscardTitle => 'هل تريد تجاهل المسودة؟';

  @override
  String get dialogLocationTitle =>
      'هل تريد استخدام خدمة الموقع الجغرافي من Google؟';

  @override
  String get dialogLocationDescription =>
      'يمكنك السماح لشركة Google بمساعدة التطبيقات في تحديد الموقع الجغرافي. ويعني هذا أنه سيتم إرسال بيانات مجهولة المصدر عن الموقع الجغرافي إلى Google، حتى عند عدم تشغيل أي تطبيقات.';

  @override
  String get dialogCancel => 'إلغاء';

  @override
  String get dialogDiscard => 'تجاهل';

  @override
  String get dialogDisagree => 'لا أوافق';

  @override
  String get dialogAgree => 'موافق';

  @override
  String get dialogSetBackup => 'اختيار الحساب الاحتياطي';

  @override
  String get dialogAddAccount => 'إضافة حساب';

  @override
  String get dialogShow => 'عرض مربع الحوار';

  @override
  String get dialogFullscreenTitle => 'مربع حوار بملء الشاشة';

  @override
  String get dialogFullscreenSave => 'حفظ';

  @override
  String get dialogFullscreenDescription => 'عرض توضيحي لمربع حوار بملء الشاشة';

  @override
  String get cupertinoButton => 'زر';

  @override
  String get cupertinoButtonWithBackground => 'زر مزوّد بخلفية';

  @override
  String get cupertinoAlertCancel => 'إلغاء';

  @override
  String get cupertinoAlertDiscard => 'تجاهل';

  @override
  String get cupertinoAlertLocationTitle =>
      'هل تريد السماح لخدمة \"خرائط Google\" بالدخول إلى موقعك الجغرافي أثناء استخدام التطبيق؟';

  @override
  String get cupertinoAlertLocationDescription =>
      'سيتم عرض الموقع الجغرافي الحالي على الخريطة واستخدامه لتوفير الاتجاهات ونتائج البحث عن الأماكن المجاورة وأوقات التنقّل المقدرة.';

  @override
  String get cupertinoAlertAllow => 'السماح';

  @override
  String get cupertinoAlertDontAllow => 'عدم السماح';

  @override
  String get cupertinoAlertFavoriteDessert => 'Select Favorite Dessert';

  @override
  String get cupertinoAlertDessertDescription =>
      'يُرجى اختيار نوع الحلوى المفضّل لك من القائمة أدناه. وسيتم استخدام اختيارك في تخصيص القائمة المقترَحة للمطاعم في منطقتك.';

  @override
  String get cupertinoAlertCheesecake => 'كعكة بالجبن';

  @override
  String get cupertinoAlertTiramisu => 'تيراميسو';

  @override
  String get cupertinoAlertApplePie => 'فطيرة التفاح';

  @override
  String get cupertinoAlertChocolateBrownie => 'كعكة بالشوكولاتة والبندق';

  @override
  String get cupertinoShowAlert => 'عرض التنبيه';

  @override
  String get colorsRed => 'أحمر';

  @override
  String get colorsPink => 'وردي';

  @override
  String get colorsPurple => 'أرجواني';

  @override
  String get colorsDeepPurple => 'أرجواني داكن';

  @override
  String get colorsIndigo => 'نيليّ';

  @override
  String get colorsBlue => 'أزرق';

  @override
  String get colorsLightBlue => 'أزرق فاتح';

  @override
  String get colorsCyan => 'سماوي';

  @override
  String get colorsTeal => 'أزرق مخضرّ';

  @override
  String get colorsGreen => 'أخضر';

  @override
  String get colorsLightGreen => 'أخضر فاتح';

  @override
  String get colorsLime => 'ليموني';

  @override
  String get colorsYellow => 'أصفر';

  @override
  String get colorsAmber => 'كهرماني';

  @override
  String get colorsOrange => 'برتقالي';

  @override
  String get colorsDeepOrange => 'برتقالي داكن';

  @override
  String get colorsBrown => 'بني';

  @override
  String get colorsGrey => 'رمادي';

  @override
  String get colorsBlueGrey => 'أزرق رمادي';

  @override
  String get placeChennai => 'تشيناي';

  @override
  String get placeTanjore => 'تانجور';

  @override
  String get placeChettinad => 'تشيتيناد';

  @override
  String get placePondicherry => 'بونديتشيري';

  @override
  String get placeFlowerMarket => 'سوق الزهور';

  @override
  String get placeBronzeWorks => 'الأعمال البرونزية';

  @override
  String get placeMarket => 'السوق';

  @override
  String get placeThanjavurTemple => 'معبد ثنجفور';

  @override
  String get placeSaltFarm => 'ملّاحة';

  @override
  String get placeScooters => 'دراجات سكوتر';

  @override
  String get placeSilkMaker => 'صانع الحرير';

  @override
  String get placeLunchPrep => 'إعداد الغداء';

  @override
  String get placeBeach => 'شاطئ';

  @override
  String get placeFisherman => 'صياد سمك';

  @override
  String get starterAppTitle => 'تطبيق نموذجي';

  @override
  String get starterAppDescription => 'تطبيق نموذجي يتضمّن تنسيقًا تفاعليًا';

  @override
  String get starterAppGenericButton => 'زر';

  @override
  String get starterAppTooltipAdd => 'إضافة';

  @override
  String get starterAppTooltipFavorite => 'الإضافة إلى السلع المفضّلة';

  @override
  String get starterAppTooltipShare => 'مشاركة';

  @override
  String get starterAppTooltipSearch => 'البحث';

  @override
  String get starterAppGenericTitle => 'العنوان';

  @override
  String get starterAppGenericSubtitle => 'العنوان الفرعي';

  @override
  String get starterAppGenericHeadline => 'العنوان';

  @override
  String get starterAppGenericBody => 'النص';

  @override
  String starterAppDrawerItem(Object value) {
    return 'السلعة $value';
  }

  @override
  String get shrineMenuCaption => 'القائمة';

  @override
  String get shrineCategoryNameAll => 'الكل';

  @override
  String get shrineCategoryNameAccessories => 'الإكسسوارات';

  @override
  String get shrineCategoryNameClothing => 'الملابس';

  @override
  String get shrineCategoryNameHome => 'المنزل';

  @override
  String get shrineLogoutButtonCaption => 'تسجيل الخروج';

  @override
  String get shrineLoginUsernameLabel => 'اسم المستخدم';

  @override
  String get shrineLoginPasswordLabel => 'كلمة المرور';

  @override
  String get shrineCancelButtonCaption => 'إلغاء';

  @override
  String get shrineNextButtonCaption => 'التالي';

  @override
  String get shrineCartPageCaption => 'سلة التسوّق';

  @override
  String shrineProductQuantity(Object quantity) {
    return 'الكمية: $quantity';
  }

  @override
  String shrineProductPrice(Object price) {
    return 'x ‏$price';
  }

  @override
  String shrineCartItemCount(num quantity) {
    String _temp0 = intl.Intl.pluralLogic(
      quantity,
      locale: localeName,
      other: '$quantity عنصر',
      many: '$quantity عنصرًا',
      few: '$quantity عناصر',
      two: 'عنصران ($quantity)',
      one: 'عنصر واحد',
      zero: 'ما مِن عناصر.',
    );
    return '$_temp0';
  }

  @override
  String get shrineCartClearButtonCaption => 'محو سلة التسوق';

  @override
  String get shrineCartTotalCaption => 'الإجمالي';

  @override
  String get shrineCartSubtotalCaption => 'الإجمالي الفرعي:';

  @override
  String get shrineCartShippingCaption => 'الشحن:';

  @override
  String get shrineCartTaxCaption => 'الضريبة:';

  @override
  String get shrineProductVagabondSack => 'حقيبة من ماركة Vagabond';

  @override
  String get shrineProductStellaSunglasses => 'نظارات شمس من نوع \"ستيلا\"';

  @override
  String get shrineProductWhitneyBelt => 'حزام \"ويتني\"';

  @override
  String get shrineProductGardenStrand => 'خيوط زينة للحدائق';

  @override
  String get shrineProductStrutEarrings => 'أقراط فاخرة';

  @override
  String get shrineProductVarsitySocks => 'جوارب من نوع \"فارسيتي\"';

  @override
  String get shrineProductWeaveKeyring => 'سلسلة مفاتيح Weave';

  @override
  String get shrineProductGatsbyHat => 'قبعة \"غاتسبي\"';

  @override
  String get shrineProductShrugBag => 'حقيبة كتف';

  @override
  String get shrineProductGiltDeskTrio =>
      'طقم أدوات مكتبية ذهبية اللون من 3 قطع';

  @override
  String get shrineProductCopperWireRack => 'رف سلكي نحاسي';

  @override
  String get shrineProductSootheCeramicSet =>
      'طقم سيراميك باللون الأبيض الراقي';

  @override
  String get shrineProductHurrahsTeaSet => 'طقم شاي مميّز';

  @override
  String get shrineProductBlueStoneMug => 'قدح حجري أزرق';

  @override
  String get shrineProductRainwaterTray => 'صينية عميقة';

  @override
  String get shrineProductChambrayNapkins => 'مناديل \"شامبراي\"';

  @override
  String get shrineProductSucculentPlanters => 'أحواض عصرية للنباتات';

  @override
  String get shrineProductQuartetTable => 'طاولة رباعية الأرجل';

  @override
  String get shrineProductKitchenQuattro => 'طقم أدوات للمطبخ من أربع قطع';

  @override
  String get shrineProductClaySweater => 'بلوزة بلون الطين';

  @override
  String get shrineProductSeaTunic => 'بلوزة بلون أزرق فاتح';

  @override
  String get shrineProductPlasterTunic => 'بلوزة من نوع \"بلاستر\"';

  @override
  String get shrineProductWhitePinstripeShirt => 'قميص ذو خطوط بيضاء';

  @override
  String get shrineProductChambrayShirt => 'قميص من نوع \"شامبراي\"';

  @override
  String get shrineProductSeabreezeSweater => 'سترة بلون أزرق بحري';

  @override
  String get shrineProductGentryJacket => 'سترة رجالية باللون الأخضر الداكن';

  @override
  String get shrineProductNavyTrousers => 'سروال بلون أزرق داكن';

  @override
  String get shrineProductWalterHenleyWhite => 'والتر هينلي (أبيض)';

  @override
  String get shrineProductSurfAndPerfShirt => 'قميص سيرف آند بيرف';

  @override
  String get shrineProductGingerScarf => 'وشاح بألوان الزنجبيل';

  @override
  String get shrineProductRamonaCrossover => 'قميص \"رامونا\" على شكل الحرف X';

  @override
  String get shrineProductClassicWhiteCollar => 'ياقة بيضاء كلاسيكية';

  @override
  String get shrineProductCeriseScallopTee =>
      'قميص قصير الأكمام باللون الكرزي الفاتح';

  @override
  String get shrineProductShoulderRollsTee => 'قميص واسعة بأكمام قصيرة';

  @override
  String get shrineProductGreySlouchTank => 'قميص رمادي اللون';

  @override
  String get shrineProductSunshirtDress => 'فستان يعكس أشعة الشمس';

  @override
  String get shrineProductFineLinesTee => 'قميص بخطوط رفيعة';

  @override
  String get shrineTooltipSearch => 'بحث';

  @override
  String get shrineTooltipSettings => 'الإعدادات';

  @override
  String get shrineTooltipOpenMenu => 'فتح القائمة';

  @override
  String get shrineTooltipCloseMenu => 'إغلاق القائمة';

  @override
  String get shrineTooltipCloseCart => 'إغلاق سلة التسوق';

  @override
  String shrineScreenReaderCart(num quantity) {
    String _temp0 = intl.Intl.pluralLogic(
      quantity,
      locale: localeName,
      other: 'سلة التسوق، $quantity عنصر',
      many: 'سلة التسوق، $quantity عنصرًا',
      few: 'سلة التسوق، $quantity عناصر',
      two: 'سلة التسوق، عنصران ($quantity)',
      one: 'سلة التسوق، عنصر واحد',
      zero: 'سلة التسوق، ما مِن عناصر',
    );
    return '$_temp0';
  }

  @override
  String get shrineScreenReaderProductAddToCart => 'إضافة إلى سلة التسوق';

  @override
  String shrineScreenReaderRemoveProductButton(Object product) {
    return 'إزالة $product';
  }

  @override
  String get shrineTooltipRemoveItem => 'إزالة العنصر';

  @override
  String get craneFormDiners => 'مطاعم صغيرة';

  @override
  String get craneFormDate => 'اختيار التاريخ';

  @override
  String get craneFormTime => 'اختيار الوقت';

  @override
  String get craneFormLocation => 'اختيار الموقع جغرافي';

  @override
  String get craneFormTravelers => 'المسافرون';

  @override
  String get craneFormOrigin => 'اختيار نقطة انطلاق الرحلة';

  @override
  String get craneFormDestination => 'اختيار الوجهة';

  @override
  String get craneFormDates => 'اختيار تواريخ';

  @override
  String craneHours(num hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours س',
      many: '$hours س',
      few: '$hours س',
      two: '$hours س',
      zero: '$hours س',
      one: '1 س',
    );
    return '$_temp0';
  }

  @override
  String craneMinutes(num minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes د',
      many: '$minutes د',
      few: '$minutes د',
      two: '$minutes د',
      zero: '$minutes د',
      one: '1 د',
    );
    return '$_temp0';
  }

  @override
  String craneFlightDuration(Object hoursShortForm, Object minutesShortForm) {
    return '$hoursShortForm $minutesShortForm';
  }

  @override
  String get craneFly => 'الطيران';

  @override
  String get craneSleep => 'السكون';

  @override
  String get craneEat => 'المأكولات';

  @override
  String get craneFlySubhead => 'استكشاف الرحلات حسب الوجهة';

  @override
  String get craneSleepSubhead => 'استكشاف العقارات حسب الوجهة';

  @override
  String get craneEatSubhead => 'استكشاف المطاعم حسب الوجهة';

  @override
  String craneFlyStops(num numberOfStops) {
    String _temp0 = intl.Intl.pluralLogic(
      numberOfStops,
      locale: localeName,
      other: '$numberOfStops‏ محطة',
      many: '$numberOfStops‏ محطة',
      few: '$numberOfStops‏ محطات',
      two: 'محطتان ($numberOfStops)',
      one: 'محطة واحدة',
      zero: 'بدون توقف',
    );
    return '$_temp0';
  }

  @override
  String craneSleepProperties(num totalProperties) {
    String _temp0 = intl.Intl.pluralLogic(
      totalProperties,
      locale: localeName,
      other: 'هناك $totalProperties موقع متاح.',
      many: 'هناك $totalProperties موقعًا متاحًا.',
      few: 'هناك $totalProperties مواقع متاحة.',
      two: 'هناك موقعان ($totalProperties) متاحان.',
      one: 'هناك موقع واحد متاح.',
      zero: 'ليس هناك مواقع متاحة.',
    );
    return '$_temp0';
  }

  @override
  String craneEatRestaurants(num totalRestaurants) {
    String _temp0 = intl.Intl.pluralLogic(
      totalRestaurants,
      locale: localeName,
      other: '$totalRestaurants مطعم',
      many: '$totalRestaurants مطعمًا',
      few: '$totalRestaurants مطاعم',
      two: 'مطعمان ($totalRestaurants)',
      one: 'مطعم واحد',
      zero: 'ما مِن مطاعم.',
    );
    return '$_temp0';
  }

  @override
  String get craneFly0 => 'أسبن، الولايات المتحدة';

  @override
  String get craneFly1 => 'بيغ سور، الولايات المتحدة';

  @override
  String get craneFly2 => 'وادي خومبو، نيبال';

  @override
  String get craneFly3 => 'ماتشو بيتشو، بيرو';

  @override
  String get craneFly4 => 'ماليه، جزر المالديف';

  @override
  String get craneFly5 => 'فيتزناو، سويسرا';

  @override
  String get craneFly6 => 'مكسيكو سيتي، المكسيك';

  @override
  String get craneFly7 => 'جبل راشمور، الولايات المتحدة';

  @override
  String get craneFly8 => 'سنغافورة';

  @override
  String get craneFly9 => 'هافانا، كوبا';

  @override
  String get craneFly10 => 'القاهرة، مصر';

  @override
  String get craneFly11 => 'لشبونة، البرتغال';

  @override
  String get craneFly12 => 'نابا، الولايات المتحدة';

  @override
  String get craneFly13 => 'بالي، إندونيسيا';

  @override
  String get craneSleep0 => 'ماليه، جزر المالديف';

  @override
  String get craneSleep1 => 'أسبن، الولايات المتحدة';

  @override
  String get craneSleep2 => 'ماتشو بيتشو، بيرو';

  @override
  String get craneSleep3 => 'هافانا، كوبا';

  @override
  String get craneSleep4 => 'فيتزناو، سويسرا';

  @override
  String get craneSleep5 => 'بيغ سور، الولايات المتحدة';

  @override
  String get craneSleep6 => 'نابا، الولايات المتحدة';

  @override
  String get craneSleep7 => 'بورتو، البرتغال';

  @override
  String get craneSleep8 => 'تولوم، المكسيك';

  @override
  String get craneSleep9 => 'لشبونة، البرتغال';

  @override
  String get craneSleep10 => 'القاهرة، مصر';

  @override
  String get craneSleep11 => 'تايبيه، تايوان';

  @override
  String get craneEat0 => 'نابولي، إيطاليا';

  @override
  String get craneEat1 => 'دالاس، الولايات المتحدة';

  @override
  String get craneEat2 => 'قرطبة، الأرجنتين';

  @override
  String get craneEat3 => 'بورتلاند، الولايات المتحدة';

  @override
  String get craneEat4 => 'باريس، فرنسا';

  @override
  String get craneEat5 => 'سول، كوريا الجنوبية';

  @override
  String get craneEat6 => 'سياتل، الولايات المتحدة';

  @override
  String get craneEat7 => 'ناشفيل، الولايات المتحدة';

  @override
  String get craneEat8 => 'أتلانتا، الولايات المتحدة';

  @override
  String get craneEat9 => 'مدريد، إسبانيا';

  @override
  String get craneEat10 => 'لشبونة، البرتغال';

  @override
  String get craneFly0SemanticLabel =>
      'شاليه في مساحة طبيعية من الثلوج وبها أشجار دائمة الخضرة';

  @override
  String get craneFly1SemanticLabel => 'خيمة في حقل';

  @override
  String get craneFly2SemanticLabel => 'رايات صلاة أمام جبل ثلجي';

  @override
  String get craneFly3SemanticLabel => 'قلعة ماتشو بيتشو';

  @override
  String get craneFly4SemanticLabel => 'أكواخ فوق الماء';

  @override
  String get craneFly5SemanticLabel =>
      'فندق يطِلّ على بحيرة قُبالة سلسلة من الجبال';

  @override
  String get craneFly6SemanticLabel => 'عرض \"قصر الفنون الجميلة\" من الجوّ';

  @override
  String get craneFly7SemanticLabel => 'جبل راشمور';

  @override
  String get craneFly8SemanticLabel => 'سوبر تري غروف';

  @override
  String get craneFly9SemanticLabel => 'رجل متّكِئ على سيارة زرقاء عتيقة';

  @override
  String get craneFly10SemanticLabel => 'مآذن الجامع الأزهر أثناء الغروب';

  @override
  String get craneFly11SemanticLabel => 'منارة من الطوب على شاطئ البحر';

  @override
  String get craneFly12SemanticLabel => 'بركة ونخيل';

  @override
  String get craneFly13SemanticLabel => 'بركة بجانب البحر حولها نخيل';

  @override
  String get craneSleep0SemanticLabel => 'أكواخ فوق الماء';

  @override
  String get craneSleep1SemanticLabel =>
      'شاليه في مساحة طبيعية من الثلوج وبها أشجار دائمة الخضرة';

  @override
  String get craneSleep2SemanticLabel => 'قلعة ماتشو بيتشو';

  @override
  String get craneSleep3SemanticLabel => 'رجل متّكِئ على سيارة زرقاء عتيقة';

  @override
  String get craneSleep4SemanticLabel =>
      'فندق يطِلّ على بحيرة قُبالة سلسلة من الجبال';

  @override
  String get craneSleep5SemanticLabel => 'خيمة في حقل';

  @override
  String get craneSleep6SemanticLabel => 'بركة ونخيل';

  @override
  String get craneSleep7SemanticLabel => 'شُقق ملونة في ميدان ريبيارا';

  @override
  String get craneSleep8SemanticLabel =>
      'أطلال \"المايا\" على جُرْف يطِلّ على الشاطئ';

  @override
  String get craneSleep9SemanticLabel => 'منارة من الطوب على شاطئ البحر';

  @override
  String get craneSleep10SemanticLabel => 'مآذن الجامع الأزهر أثناء الغروب';

  @override
  String get craneSleep11SemanticLabel => 'مركز تايبيه المالي 101';

  @override
  String get craneEat0SemanticLabel => 'بيتزا في فرن يُشعَل بالأخشاب';

  @override
  String get craneEat1SemanticLabel => 'بار فارغ وكراسي مرتفعة للزبائن';

  @override
  String get craneEat2SemanticLabel => 'برغر';

  @override
  String get craneEat3SemanticLabel => 'وجبة التاكو الكورية';

  @override
  String get craneEat4SemanticLabel => 'حلوى الشوكولاته';

  @override
  String get craneEat5SemanticLabel => 'منطقة الجلوس في مطعم ذي ذوق فني';

  @override
  String get craneEat6SemanticLabel => 'طبق روبيان';

  @override
  String get craneEat7SemanticLabel => 'مَدخل مخبز';

  @override
  String get craneEat8SemanticLabel => 'طبق جراد البحر';

  @override
  String get craneEat9SemanticLabel => 'طاولة مقهى لتقديم المعجنات';

  @override
  String get craneEat10SemanticLabel => 'امرأة تمسك بشطيرة بسطرمة كبيرة';

  @override
  String get fortnightlyMenuFrontPage => 'الصفحة الأمامية';

  @override
  String get fortnightlyMenuWorld => 'العالم';

  @override
  String get fortnightlyMenuUS => 'الولايات المتحدة';

  @override
  String get fortnightlyMenuPolitics => 'سياسة';

  @override
  String get fortnightlyMenuBusiness => 'أعمال';

  @override
  String get fortnightlyMenuTech => 'تكنولوجيا';

  @override
  String get fortnightlyMenuScience => 'علوم';

  @override
  String get fortnightlyMenuSports => 'رياضة';

  @override
  String get fortnightlyMenuTravel => 'سفر';

  @override
  String get fortnightlyMenuCulture => 'ثقافة';

  @override
  String get fortnightlyTrendingTechDesign => 'تصميم_تكنولوجي';

  @override
  String get fortnightlyTrendingReform => 'إصلاح';

  @override
  String get fortnightlyTrendingHealthcareRevolution => 'ثورة_الرعاية_الصحية';

  @override
  String get fortnightlyTrendingGreenArmy => 'الجيش_الأخضر';

  @override
  String get fortnightlyTrendingStocks => 'الأسهم';

  @override
  String get fortnightlyLatestUpdates => 'آخر المستجدّات';

  @override
  String get fortnightlyHeadlineHealthcare =>
      'ثورة الرعاية الصحية الهادئة والفعالة في الوقت نفسه';

  @override
  String get fortnightlyHeadlineWar => 'الأمريكيون المنقسمون أثناء الحرب';

  @override
  String get fortnightlyHeadlineGasoline => 'مستقبل البنزين';

  @override
  String get fortnightlyHeadlineArmy => 'إصلاح الجيش الأخضر من الداخل';

  @override
  String get fortnightlyHeadlineStocks =>
      'مع ركود الأسهم، يتجه الكثيرون إلى العملة';

  @override
  String get fortnightlyHeadlineFabrics =>
      'مصمِّمون يستخدمون التكنولوجيا لصنع ملابس تستلهم المستقبل';

  @override
  String get fortnightlyHeadlineFeminists =>
      'مدافعون عن حقوق المرأة يجابهون التحزب';

  @override
  String get fortnightlyHeadlineBees => 'نقص نحل الأراضي الزراعية';

  @override
  String get replyInboxLabel => 'البريد الوارد';

  @override
  String get replyStarredLabel => 'الرسائل المميّزة بنجمة';

  @override
  String get replySentLabel => 'الرسائل المرسلة';

  @override
  String get replyTrashLabel => 'المهملات';

  @override
  String get replySpamLabel => 'الرسائل غير المرغوب فيها';

  @override
  String get replyDraftsLabel => 'المسودات';

  @override
  String get demoTwoPaneFoldableLabel => 'قابل للطي';

  @override
  String get demoTwoPaneFoldableDescription =>
      'هذه هي الطريقة التي يتصرف بها TwoPane على جهاز قابل للطي.';

  @override
  String get demoTwoPaneSmallScreenLabel => 'الشاشة الصغيرة';

  @override
  String get demoTwoPaneSmallScreenDescription =>
      'هذه هي الطريقة التي يتصرف بها TwoPane على جهاز مزوَّد بشاشة صغيرة.';

  @override
  String get demoTwoPaneTabletLabel =>
      'الأجهزة اللوحية / أجهزة الكمبيوتر المكتبية';

  @override
  String get demoTwoPaneTabletDescription =>
      'هذه هي الطريقة التي يتصرف بها TwoPane على جهاز مزوَّد بشاشة كبيرة، مثل الجهاز اللوحي أو جهاز الكمبيوتر المكتبي.';

  @override
  String get demoTwoPaneTitle => 'TwoPane';

  @override
  String get demoTwoPaneSubtitle =>
      'التصميمات المتجاوبة مع مختلف الأجهزة على الشاشات القابلة للطي والكبيرة والصغيرة';

  @override
  String get splashSelectDemo => 'اختيار إصدار تجريبي';

  @override
  String get demoTwoPaneList => 'القائمة';

  @override
  String get demoTwoPaneDetails => 'التفاصيل';

  @override
  String get demoTwoPaneSelectItem => 'اختيار عنصر';

  @override
  String demoTwoPaneItem(Object value) {
    return 'العنصر $value';
  }

  @override
  String demoTwoPaneItemDetails(Object value) {
    return 'تفاصيل العنصر $value';
  }
}

package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.autofill.HintConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.warefly.checkscan.CheckScanApplication;

/* JADX INFO: loaded from: classes5.dex */
public final class qr7 extends he0 implements jf6 {
    public static final b o0;
    public static final /* synthetic */ ze4<Object>[] p0;
    public static final fh8 q0;
    public final he0.a A;
    public final he0.a B;
    public final he0.a C;
    public final he0.a D;
    public final he0.a E;
    public final he0.a F;
    public final he0.a G;
    public final he0.a H;
    public final he0.a I;
    public final he0.a J;
    public final he0.a K;
    public final he0.a L;
    public final he0.a M;
    public final he0.a N;
    public final he0.a O;
    public final he0.a P;
    public final he0.a Q;
    public final he0.a R;
    public final he0.a S;
    public final he0.a T;
    public final he0.a U;
    public final he0.a V;
    public final he0.a W;
    public final he0.a X;
    public final he0.a Y;
    public final z68 Z;
    public final he0.a a0;
    public final he0.a b;
    public final he0.a b0;
    public final he0.a c;
    public final he0.a c0;
    public final he0.a d;
    public final he0.a d0;
    public final he0.a e;
    public final he0.a e0;
    public final he0.a f;
    public final he0.a f0;
    public final he0.a g;
    public final he0.a g0;
    public final he0.a h;
    public final he0.a h0;
    public final he0.a i;
    public final he0.a i0;
    public final he0.a j;
    public final he0.a j0;
    public final he0.a k;
    public final he0.a k0;
    public final he0.a l;
    public final he0.a l0;
    public final he0.a m;
    public final he0.a m0;
    public final he0.a n;
    public final he0.a n0;
    public final he0.a o;
    public final he0.a p;
    public final he0.a q;
    public final he0.a r;
    public final he0.a s;
    public final he0.a t;
    public final he0.a u;
    public final he0.a v;
    public final he0.a w;
    public final he0.a x;
    public final he0.a y;
    public final he0.a z;

    public static final class a extends gh4 implements ll3<qr7> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final qr7 invoke() {
            Context context = CheckScanApplication.c;
            return new qr7(CheckScanApplication.a.a());
        }
    }

    public static final class b {
    }

    public static final class c extends sr5<Boolean> {
        @Override // defpackage.sr5
        public final void afterChange(ze4<?> ze4Var, Boolean bool, Boolean bool2) {
            ze4Var.getClass();
            bool2.getClass();
            bool.getClass();
        }
    }

    static {
        tg5 tg5Var = new tg5(qr7.class, "fnsPhone", "getFnsPhone()Ljava/lang/String;", 0);
        x07.a.getClass();
        p0 = new ze4[]{tg5Var, new tg5(qr7.class, "email", "getEmail()Ljava/lang/String;", 0), new tg5(qr7.class, "birthDate", "getBirthDate()Ljava/lang/String;", 0), new tg5(qr7.class, "fullName", "getFullName()Ljava/lang/String;", 0), new tg5(qr7.class, HintConstants.AUTOFILL_HINT_GENDER, "getGender()Ljava/lang/String;", 0), new tg5(qr7.class, "favBonuses", "getFavBonuses()Ljava/lang/String;", 0), new tg5(qr7.class, "skipFnsOfferTimes", "getSkipFnsOfferTimes()I", 0), new tg5(qr7.class, FirebaseAnalytics.Event.LOGIN, "getLogin()Ljava/lang/String;", 0), new tg5(qr7.class, "token", "getToken()Ljava/lang/String;", 0), new tg5(qr7.class, "isFirstLaunch", "isFirstLaunch()Z", 0), new tg5(qr7.class, "isTutorialHasBeenShown", "isTutorialHasBeenShown()Z", 0), new tg5(qr7.class, "isDefineGeolocation", "isDefineGeolocation()Z", 0), new tg5(qr7.class, "isCategoriesTutorialHasBeenShown", "isCategoriesTutorialHasBeenShown()Z", 0), new tg5(qr7.class, "scannedChequesCountOnDevice", "getScannedChequesCountOnDevice()I", 0), new tg5(qr7.class, "promoCode", "getPromoCode()Ljava/lang/String;", 0), new tg5(qr7.class, "referralLink", "getReferralLink()Ljava/lang/String;", 0), new tg5(qr7.class, "userId", "getUserId()J", 0), new tg5(qr7.class, "cashBackBalance", "getCashBackBalance()J", 0), new tg5(qr7.class, "avatarUser", "getAvatarUser()Ljava/lang/String;", 0), new tg5(qr7.class, "isNotAnonymous", "isNotAnonymous()Z", 0), new tg5(qr7.class, "locationLatitude", "getLocationLatitude()D", 0), new tg5(qr7.class, "locationLongitude", "getLocationLongitude()D", 0), new tg5(qr7.class, "adultContentConfirmed", "getAdultContentConfirmed()Z", 0), new tg5(qr7.class, "bonusesRegion", "getBonusesRegion()I", 0), new tg5(qr7.class, "bonusesRegionName", "getBonusesRegionName()Ljava/lang/String;", 0), new tg5(qr7.class, "isElectroReceiptRegistered", "isElectroReceiptRegistered()Z", 0), new tg5(qr7.class, "splashesShowingCalendarJson", "getSplashesShowingCalendarJson()Ljava/lang/String;", 0), new tg5(qr7.class, "splashesAfterScanJsonCache", "getSplashesAfterScanJsonCache()Ljava/lang/String;", 0), new tg5(qr7.class, "splashesWithPreloadedImagesJsonCache", "getSplashesWithPreloadedImagesJsonCache()Ljava/lang/String;", 0), new tg5(qr7.class, "appMetricaDeviceId", "getAppMetricaDeviceId()Ljava/lang/String;", 0), new tg5(qr7.class, RemoteConfigConstants.RequestFieldKey.FIRST_OPEN_TIME, "getFirstOpenTime()J", 0), new tg5(qr7.class, "isElectrochequesOnboardingCompleted", "isElectrochequesOnboardingCompleted()Z", 0), new tg5(qr7.class, "bannerJson", "getBannerJson()Ljava/lang/String;", 0), new tg5(qr7.class, "currentInterval", "getCurrentInterval()I", 0), new tg5(qr7.class, "promoCodeRegistration", "getPromoCodeRegistration()Ljava/lang/String;", 0), new tg5(qr7.class, "pgConfirmedRegistration", "getPgConfirmedRegistration()I", 0), new tg5(qr7.class, "numberOfLaunch", "getNumberOfLaunch()I", 0), new tg5(qr7.class, "notificationPermissionRequested", "getNotificationPermissionRequested()Z", 0), new tg5(qr7.class, "isScannerOnboardingShowing", "isScannerOnboardingShowing()Z", 0), new tg5(qr7.class, "isScannerOnboardingGalleryShowing", "isScannerOnboardingGalleryShowing()Z", 0), new tg5(qr7.class, "experimentOfferCardButton", "getExperimentOfferCardButton()Z", 0), new tg5(qr7.class, "experimentOnlineShopTutorial", "getExperimentOnlineShopTutorial()Z", 0), new tg5(qr7.class, "isAdultEnable", "isAdultEnable()Z", 0), new tg5(qr7.class, "lastAnalyticsUpdateDate", "getLastAnalyticsUpdateDate()Ljava/lang/String;", 0), new tg5(qr7.class, "isSmsAllowed", "isSmsAllowed()Z", 0), new tg5(qr7.class, "informersCalendarJson", "getInformersCalendarJson()Ljava/lang/String;", 0), new tg5(qr7.class, "pollsCalendarJson", "getPollsCalendarJson()Ljava/lang/String;", 0), new tg5(qr7.class, "isNetworkConnected", "isNetworkConnected()Z", 0), new tg5(qr7.class, "packagesToChecks", "getPackagesToChecks()Ljava/lang/String;", 0), new tg5(qr7.class, "hasDailyTaskClaim", "getHasDailyTaskClaim()Z", 0), new tg5(qr7.class, "profileFillDataItem", "getProfileFillDataItem()Ljava/lang/String;", 0), new tg5(qr7.class, "showWelcomeBanner", "getShowWelcomeBanner()Z", 0), new tg5(qr7.class, "faqUrl", "getFaqUrl()Ljava/lang/String;", 0), new tg5(qr7.class, "installPromocode", "getInstallPromocode()Ljava/lang/String;", 0), new tg5(qr7.class, "floatingBannerIdToHide", "getFloatingBannerIdToHide()J", 0), new tg5(qr7.class, "isFloatingEnabled", "isFloatingEnabled()Z", 0), new tg5(qr7.class, "onboardingOneSlideType", "getOnboardingOneSlideType()Ljava/lang/String;", 0), new tg5(qr7.class, "showOnboardingOneSlide", "getShowOnboardingOneSlide()Z", 0), new tg5(qr7.class, "onboardingOneSlideHasShown", "getOnboardingOneSlideHasShown()Z", 0), new tg5(qr7.class, "insuranceShowcaseHelpInfoHidden", "getInsuranceShowcaseHelpInfoHidden()Z", 0), new tg5(qr7.class, "isCreditBannerExperiment", "isCreditBannerExperiment()Z", 0), new tg5(qr7.class, "isNewProducts", "isNewProducts()Z", 0), new tg5(qr7.class, "isSearchBonusesExperiment", "isSearchBonusesExperiment()Z", 0), new tg5(qr7.class, "isAddReceiptButtonExperiment", "isAddReceiptButtonExperiment()Z", 0), new tg5(qr7.class, "isFloatingExperiment", "isFloatingExperiment()Z", 0), new tg5(qr7.class, "isGamesTabbarExperiment", "isGamesTabbarExperiment()Z", 0), new tg5(qr7.class, "gamesTabLink", "getGamesTabLink()Ljava/lang/String;", 0), new tg5(qr7.class, "isUnityOfferwallOpen", "isUnityOfferwallOpen()Z", 0)};
        o0 = new b();
        q0 = nm4.b(a.f);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public qr7(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("checkscanwarefly", 0);
        sharedPreferences.getClass();
        super(sharedPreferences);
        this.b = p1("fns_phone", "");
        this.c = p1("fns_email", "");
        this.d = p1("birth_date", "");
        this.e = p1("full_name", "");
        this.f = p1(HintConstants.AUTOFILL_HINT_GENDER, "");
        this.g = p1("favorite_bonuses", "");
        this.h = n1(0, "skip_fns_offer_times");
        this.i = p1("login_user", "");
        this.j = p1("token", "");
        this.k = m1("first_launch", true);
        this.l = m1("tutorial_has_been_shown", false);
        this.m = m1("define_geolocation", false);
        this.n = m1("cat_tutorial_has_been_shown", false);
        this.o = n1(0, "scanned_cheques_amount");
        this.p = p1("promo_code", "");
        this.q = p1("referral_link", "");
        this.r = o1(0L, "user_id");
        this.s = o1(0L, "cash_back_balance");
        this.t = p1("avatar_url", "");
        this.u = m1(FirebaseAnalytics.Event.LOGIN, false);
        this.v = new he0.a(new ie0(this, "location_latitude"), new je0(this, "location_latitude"));
        this.w = new he0.a(new ie0(this, "location_longitude"), new je0(this, "location_longitude"));
        this.x = m1("adult_content_confirmed", false);
        this.y = n1(0, "prefferred_bonuses_region");
        this.z = p1("prefferred_bonuses_region_name", "");
        this.A = m1("electro_receipt_registered", false);
        this.B = p1("SPLASHES_AFTER_SCAN_SHOW_CALENDAR", "\n            {\n                \"lastShownId\": null\n            }\n        ");
        this.C = p1("SPLASHES_AFTER_SCAN", "[]");
        this.D = p1("SPLASHES_AFTER_SCAN_PRELOADED", "[]");
        this.E = p1("APP_METRICA_DEVICE_ID", "");
        this.F = o1(0L, "first_open_time");
        this.G = m1("is_electro_onboarding", true);
        this.H = p1("BANNER_KEY", "{\"1\":1}");
        this.I = n1(0, "CURRENT_INTERVAL_KEY");
        p1("PROMO_CODE_KEY", "");
        n1(-1, "PG_CONFIRMED_KEY");
        this.J = n1(0, "INITIAL_LAUNCH_KEY");
        this.K = m1("PUSH_REQUEST_KEY", false);
        this.L = m1("IS_SCANNER_ONBOARDING_SHOWING", false);
        this.M = m1("IS_SCANNER_ONBOARDING_GALLERY_SHOWING", false);
        this.N = m1("EXPERIMENT_OFFER_CARD_BUTTON", false);
        this.O = m1("EXPERIMENT_ONLINE_SHOP_TUTPRIAL", false);
        this.P = m1("ADULT_ENABLE_KEY", false);
        this.Q = p1("LAST_ANALYTICS_UPDATE_DATE", "null");
        m1("SMS_ALLOWED_KEY", false);
        this.R = p1("INFORMERS", "");
        this.S = p1("POLLS", "");
        new c(Boolean.FALSE);
        this.T = p1("PACKAGES_TO_CHECK", "[]");
        this.U = m1("HAS_DAILY_TASK_CLAIM", false);
        this.V = p1("FILL_DATA_BADGE", "");
        this.W = m1("SHOW_WELCOME_BANNER", true);
        this.X = p1("FAQ_URL", "https://scan.com.ru/faq");
        this.Y = p1("INSTALL_PROMOCODE", "");
        this.Z = px.a(Long.valueOf(Y0()));
        this.a0 = o1(-1L, "FLOATING_BUTTON_ID_HIDE");
        this.b0 = m1("IS_FLOATING_ENABLED", false);
        this.c0 = p1("ONBOARDING_ONE_SLIDE_TYPE", "CONTROL");
        this.d0 = m1("SHOW_ONBOARDING_ONE_SLIDE", true);
        this.e0 = m1("ONBOARDING_ONE_SLIDE_HAS_SHOWN", false);
        this.f0 = m1("INSURANCE_SHOWCASE_HELP_INFO_HIDDEN", false);
        this.g0 = m1("IS_CREDIT_BANNER_EXPERIMENT", false);
        this.h0 = m1("IS_NEW_PRODUCTS_EXPERIMENT", false);
        this.i0 = m1("IS_SEARCH_BONUSES_EXPERIMENT", false);
        this.j0 = m1("IS_ADD_RECEIPT_BUTTON_EXPERIMENT", false);
        this.k0 = m1("IS_FLOATING_EXPERIMENT", false);
        this.l0 = m1("IS_GAMES_TABBAR_EXPERIMENT", false);
        this.m0 = p1("GAMES_TAB_LINK", "");
        this.n0 = m1("IS_UNITY_OFFERWALL_OPEN", false);
    }

    @Override // defpackage.jf6
    public final String A() {
        Object objA = this.R.a(this, p0[45]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final boolean A0() {
        return ((Boolean) this.x.a(this, p0[22])).booleanValue();
    }

    @Override // defpackage.jf6
    public final boolean B() {
        return ((Boolean) this.d0.a(this, p0[57])).booleanValue();
    }

    @Override // defpackage.jf6
    public final boolean B0() {
        return ((Boolean) this.e0.a(this, p0[58])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void C(boolean z) {
        this.U.b(this, p0[49], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final boolean C0() {
        return ((Boolean) this.W.a(this, p0[51])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void D(String str) {
        this.H.b(this, p0[32], str);
    }

    @Override // defpackage.jf6
    public final void D0(String str) {
        str.getClass();
        this.p.b(this, p0[14], str);
    }

    @Override // defpackage.jf6
    public final void E(int i) {
        this.h.b(this, p0[6], Integer.valueOf(i));
    }

    @Override // defpackage.jf6
    public final void E0(String str) {
        this.q.b(this, p0[15], str);
    }

    @Override // defpackage.jf6
    public final boolean F() {
        return ((Boolean) this.i0.a(this, p0[62])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void F0() {
        this.l.b(this, p0[10], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final void G(boolean z) {
        this.n0.b(this, p0[67], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final boolean G0() {
        return ((Boolean) this.u.a(this, p0[19])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void H(String str) {
        this.d.b(this, p0[2], str);
    }

    @Override // defpackage.jf6
    public final void H0(int i) {
        this.I.b(this, p0[33], Integer.valueOf(i));
    }

    @Override // defpackage.jf6
    public final void I(String str) {
        str.getClass();
        this.c.b(this, p0[1], str);
    }

    @Override // defpackage.jf6
    public final boolean I0() {
        return ((Boolean) this.m.a(this, p0[11])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void J(boolean z) {
        this.u.b(this, p0[19], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void J0(String str) {
        this.S.b(this, p0[46], str);
    }

    @Override // defpackage.jf6
    public final void K(boolean z) {
        this.i0.b(this, p0[62], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void K0(String str) {
        str.getClass();
        this.c0.b(this, p0[56], str);
    }

    @Override // defpackage.jf6
    public final String L() {
        Object objA = this.t.a(this, p0[18]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void L0(boolean z) {
        this.l0.b(this, p0[65], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final boolean M() {
        return ((Boolean) this.K.a(this, p0[37])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void M0(boolean z) {
        this.O.b(this, p0[41], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final String N() {
        Object objA = this.X.a(this, p0[52]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void N0(long j) {
        this.r.b(this, p0[16], Long.valueOf(j));
    }

    @Override // defpackage.jf6
    public final void O() {
        this.n.b(this, p0[12], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final int O0() {
        return ((Number) this.y.a(this, p0[23])).intValue();
    }

    @Override // defpackage.jf6
    public final String P() {
        Object objA = this.Q.a(this, p0[43]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final int P0() {
        return ((Number) this.J.a(this, p0[36])).intValue();
    }

    @Override // defpackage.jf6
    public final void Q(int i) {
        this.J.b(this, p0[36], Integer.valueOf(i));
    }

    @Override // defpackage.jf6
    public final boolean Q0() {
        return ((Boolean) this.l0.a(this, p0[65])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void R() {
        this.k.b(this, p0[9], Boolean.FALSE);
    }

    @Override // defpackage.jf6
    public final void R0(boolean z) {
        this.k0.b(this, p0[64], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final boolean S() {
        return ((Boolean) this.g0.a(this, p0[60])).booleanValue();
    }

    @Override // defpackage.jf6
    public final boolean S0() {
        return ((Boolean) this.b0.a(this, p0[55])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void T(String str) {
        this.Y.b(this, p0[53], str);
    }

    @Override // defpackage.jf6
    public final long T0() {
        return ((Number) this.r.a(this, p0[16])).longValue();
    }

    @Override // defpackage.jf6
    public final void U(String str) {
        this.D.b(this, p0[28], str);
    }

    @Override // defpackage.jf6
    public final String U0() {
        Object objA = this.b.a(this, p0[0]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final boolean V() {
        return ((Boolean) this.O.a(this, p0[41])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void V0() {
        this.e0.b(this, p0[58], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final String W() {
        Object objA = this.B.a(this, p0[26]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void W0(boolean z) {
        this.N.b(this, p0[40], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void X(String str) {
        str.getClass();
        this.z.b(this, p0[24], str);
    }

    @Override // defpackage.ix8
    public final void X0(String str) {
        str.getClass();
        this.j.b(this, p0[8], str);
    }

    @Override // defpackage.jf6
    public final boolean Y() {
        return ((Boolean) this.k.a(this, p0[9])).booleanValue();
    }

    @Override // defpackage.jf6
    public final long Y0() {
        return ((Number) this.s.a(this, p0[17])).longValue();
    }

    @Override // defpackage.jf6
    public final boolean Z() {
        return ((Boolean) this.h0.a(this, p0[61])).booleanValue();
    }

    @Override // defpackage.jf6
    public final boolean Z0() {
        return ((Boolean) this.j0.a(this, p0[63])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void a(String str) {
        str.getClass();
        this.g.b(this, p0[5], str);
    }

    @Override // defpackage.jf6
    public final void a0() {
        this.m.b(this, p0[11], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final void a1(String str) {
        this.e.b(this, p0[3], str);
    }

    @Override // defpackage.jf6
    public final void b() {
        this.G.b(this, p0[31], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final void b0(double d) {
        this.v.b(this, p0[20], Double.valueOf(d));
    }

    @Override // defpackage.jf6
    public final void b1(boolean z) {
        this.W.b(this, p0[51], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final double c() {
        return ((Number) this.v.a(this, p0[20])).doubleValue();
    }

    @Override // defpackage.jf6
    public final String c0() {
        Object objA = this.c.a(this, p0[1]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final String c1() {
        Object objA = this.H.a(this, p0[32]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final String d() {
        Object objA = this.p.a(this, p0[14]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void d0(int i) {
        this.o.b(this, p0[13], Integer.valueOf(i));
    }

    @Override // defpackage.jf6
    public final void d1(String str) {
        this.C.b(this, p0[27], str);
    }

    @Override // defpackage.jf6
    public final void e(String str) {
        this.V.b(this, p0[50], str);
    }

    @Override // defpackage.jf6
    public final int e0() {
        return ((Number) this.h.a(this, p0[6])).intValue();
    }

    @Override // defpackage.jf6
    public final long e1() {
        return ((Number) this.a0.a(this, p0[54])).longValue();
    }

    @Override // defpackage.jf6
    public final int f() {
        return ((Number) this.o.a(this, p0[13])).intValue();
    }

    @Override // defpackage.jf6
    public final void f0() {
        this.P.b(this, p0[42], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final boolean f1() {
        return ((Boolean) this.A.a(this, p0[25])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void g(String str) {
        this.B.b(this, p0[26], str);
    }

    @Override // defpackage.jf6
    public final void g0(boolean z) {
        this.j0.b(this, p0[63], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void g1(String str) {
        str.getClass();
        this.Q.b(this, p0[43], str);
    }

    @Override // defpackage.jf6
    public final String getFullName() {
        Object objA = this.e.a(this, p0[3]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.ix8
    public final String getToken() {
        Object objA = this.j.a(this, p0[8]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final long h() {
        return ((Number) this.F.a(this, p0[30])).longValue();
    }

    @Override // defpackage.jf6
    public final z68 h0() {
        return this.Z;
    }

    @Override // defpackage.jf6
    public final String h1() {
        Object objA = this.z.a(this, p0[24]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void i(long j) {
        this.F.b(this, p0[30], Long.valueOf(j));
    }

    @Override // defpackage.jf6
    public final void i0() {
        this.K.b(this, p0[37], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final String i1() {
        Object objA = this.c0.a(this, p0[56]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final boolean j() {
        return ((Boolean) this.k0.a(this, p0[64])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void j0(boolean z) {
        this.A.b(this, p0[25], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void j1(String str) {
        this.R.b(this, p0[45], str);
    }

    @Override // defpackage.jf6
    public final void k() {
        this.x.b(this, p0[22], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final void k0() {
        this.M.b(this, p0[39], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final void k1(String str) {
        str.getClass();
        this.i.b(this, p0[7], str);
    }

    @Override // defpackage.jf6
    public final double l() {
        return ((Number) this.w.a(this, p0[21])).doubleValue();
    }

    @Override // defpackage.jf6
    public final void l0(int i) {
        this.y.b(this, p0[23], Integer.valueOf(i));
    }

    @Override // defpackage.jf6
    public final boolean l1() {
        return ((Boolean) this.U.a(this, p0[49])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void m(boolean z) {
        this.f0.b(this, p0[59], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void m0(boolean z) {
        this.b0.b(this, p0[55], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void n(String str) {
        str.getClass();
        this.b.b(this, p0[0], str);
    }

    @Override // defpackage.jf6
    public final String n0() {
        Object objA = this.S.a(this, p0[46]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void o(long j) {
        this.a0.b(this, p0[54], Long.valueOf(j));
    }

    @Override // defpackage.jf6
    public final void o0(String str) {
        str.getClass();
        this.E.b(this, p0[29], str);
    }

    @Override // defpackage.jf6
    public final void p(String str) {
        this.T.b(this, p0[48], str);
    }

    @Override // defpackage.jf6
    public final boolean p0() {
        return ((Boolean) this.P.a(this, p0[42])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void q(double d) {
        this.w.b(this, p0[21], Double.valueOf(d));
    }

    @Override // defpackage.jf6
    public final void q0(boolean z) {
        this.g0.b(this, p0[60], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final int r() {
        return ((Number) this.I.a(this, p0[33])).intValue();
    }

    @Override // defpackage.jf6
    public final boolean r0() {
        return ((Boolean) this.f0.a(this, p0[59])).booleanValue();
    }

    @Override // defpackage.jf6
    public final boolean s() {
        return ((Boolean) this.M.a(this, p0[39])).booleanValue();
    }

    @Override // defpackage.jf6
    public final String s0() {
        Object objA = this.m0.a(this, p0[66]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final String t() {
        Object objA = this.D.a(this, p0[28]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void t0() {
        this.L.b(this, p0[38], Boolean.TRUE);
    }

    @Override // defpackage.jf6
    public final boolean u() {
        return ((Boolean) this.n0.a(this, p0[67])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void u0(String str) {
        this.m0.b(this, p0[66], str);
    }

    @Override // defpackage.jf6
    public final boolean v() {
        return ((Boolean) this.l.a(this, p0[10])).booleanValue();
    }

    @Override // defpackage.jf6
    public final String v0() {
        Object objA = this.Y.a(this, p0[53]);
        objA.getClass();
        return (String) objA;
    }

    @Override // defpackage.jf6
    public final void w(long j) {
        this.s.b(this, p0[17], Long.valueOf(j));
    }

    @Override // defpackage.jf6
    public final void w0(String str) {
        this.t.b(this, p0[18], str);
    }

    @Override // defpackage.jf6
    public final boolean x() {
        return ((Boolean) this.n.a(this, p0[12])).booleanValue();
    }

    @Override // defpackage.jf6
    public final boolean x0() {
        return ((Boolean) this.N.a(this, p0[40])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void y(String str) {
        this.f.b(this, p0[4], str);
    }

    @Override // defpackage.jf6
    public final boolean y0() {
        return ((Boolean) this.L.a(this, p0[38])).booleanValue();
    }

    @Override // defpackage.jf6
    public final void z(boolean z) {
        this.h0.b(this, p0[61], Boolean.valueOf(z));
    }

    @Override // defpackage.jf6
    public final void z0(String str) {
        this.X.b(this, p0[52], str);
    }
}

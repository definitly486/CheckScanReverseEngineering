package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.r57;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class t50 {
    public static final Object b = new Object();
    public final zu3 a;

    public t50(zu3 zu3Var) {
        this.a = zu3Var;
    }

    public final void a(fe5 fe5Var) {
        String strB;
        String strB2;
        synchronized (b) {
            try {
                ((av3) this.a).a(s50.LIBRARY_VERSION.a(), fe5Var.X());
                ((av3) this.a).a(s50.CLICK_HANDLER_TYPE.a(), fe5Var.m());
                ((av3) this.a).b(s50.SENSITIVE_MODE_DISABLED.a(), fe5Var.T0());
                ((av3) this.a).b(s50.HARD_SENSITIVE_MODE_ENABLED.a(), fe5Var.z0());
                ((av3) this.a).a(s50.AD_PREFERENCE_EXPIRED_DATE.a(), fe5Var.y());
                ((av3) this.a).a(s50.AD_PREFERENCE_MRAID_URL.a(), fe5Var.N());
                ((av3) this.a).a(s50.AD_PREFERENCE_OM_SDK_JS_CONTROLLER_URL.a(), fe5Var.Q());
                ((av3) this.a).a(s50.INSTREAM_DESIGN.a(), fe5Var.H());
                ((av3) this.a).b(s50.AD_PREFERENCE_CUSTOM_CLICK_HANDLING_ENABLED.a(), fe5Var.q());
                ((av3) this.a).b(s50.SHOW_VERSION_VALIDATION_ERROR_LOG.a(), fe5Var.b0());
                ((av3) this.a).b(s50.SHOW_VERSION_VALIDATION_ERROR_INDICATOR.a(), fe5Var.a0());
                ((av3) this.a).b(fe5Var.b(), s50.AD_PREFERENCE_AD_IDS_STORAGE_SIZE.a());
                ((av3) this.a).b(s50.IMPRESSION_VALIDATION_ON_CLICK_ENABLED.a(), fe5Var.B0());
                ((av3) this.a).b(s50.LEGACY_SLIDER_IMPRESSION_ENABLED.a(), fe5Var.D0());
                ((av3) this.a).b(s50.ECPM_IMPRESSION_CALLBACK_DISABLED.a(), fe5Var.v0());
                ((av3) this.a).b(s50.DIVKIT_DISABLED.a(), fe5Var.u0());
                zu3 zu3Var = this.a;
                s50 s50Var = s50.CLOSE_FULLSCREEN_WITH_ADTUNE_DISABLED;
                ((av3) zu3Var).b(s50Var.a(), fe5Var.t);
                ((av3) this.a).b(s50.LOCATION_CONSENT.a(), fe5Var.H0());
                ((av3) this.a).b(s50.LIBSSL_ENABLED.a(), fe5Var.G0());
                ((av3) this.a).a(s50.LIGHT_BUNDLE_SCRIPT_URL.a(), fe5Var.J());
                ((av3) this.a).b(s50.SHOULD_WAIT_LIGHT_BUNDLE_SCRIPT_LOADING.a(), fe5Var.e0());
                ((av3) this.a).b(s50.SHOULD_START_LIGHT_BUNDLE_SCRIPT_LOADING.a(), fe5Var.c0());
                ((av3) this.a).b(s50.ENCRYPTED_REQUESTS_ENABLED.a(), fe5Var.w0());
                zu3 zu3Var2 = this.a;
                s50 s50Var2 = s50.RENDER_ASSET_VALIDATION_ENABLED;
                ((av3) zu3Var2).b(s50Var2.a(), fe5Var.C);
                ((av3) this.a).b(fe5Var.O(), s50.NATIVE_WEB_VIEW_POOL_SIZE.a());
                ((av3) this.a).a(s50.MAX_DISK_CACHE_SIZE_BYTES_FOR_VIDEO.a(), fe5Var.L());
                ((av3) this.a).a(s50.MAX_DISK_CACHE_SIZE_BYTES_FOR_REQUEST_QUEUE.a(), fe5Var.K());
                ((av3) this.a).a(s50.HOST.a(), fe5Var.a());
                ((av3) this.a).a(s50.DIVKIT_FONT.a(), fe5Var.r());
                ((av3) this.a).a(s50.BANNER_SIZE_CALCULATION_TYPE.a(), fe5Var.k());
                Boolean boolX0 = fe5Var.X0();
                Boolean boolJ0 = fe5Var.J0();
                boolean zY0 = fe5Var.y0();
                boolean zI0 = fe5Var.I0();
                Boolean boolV0 = fe5Var.V0();
                boolean zE0 = fe5Var.E0();
                boolean zF0 = fe5Var.F0();
                boolean zP0 = fe5Var.P0();
                boolean zQ0 = fe5Var.Q0();
                boolean zX0 = fe5Var.x0();
                boolean zO0 = fe5Var.O0();
                boolean zT0 = fe5Var.t0();
                boolean zA0 = fe5Var.A0();
                Integer numD = fe5Var.d();
                Integer numT = fe5Var.T();
                dt dtVarL = fe5Var.l();
                boolean z = fe5Var.t;
                boolean z2 = fe5Var.C;
                Boolean boolP0 = fe5Var.p0();
                boolean zS0 = fe5Var.s0();
                boolean zK0 = fe5Var.K0();
                boolean zU0 = fe5Var.U0();
                r50.a(this.a, s50.VISIBILITY_ERROR_INDICATOR_ENABLED.a(), boolX0);
                r50.a(this.a, s50.MEDIATION_SENSITIVE_MODE_DISABLED.a(), boolJ0);
                r50.a(this.a, s50.FUSED_LOCATION_PROVIDER_DISABLED.a(), Boolean.valueOf(zY0));
                r50.a(this.a, s50.LOCK_SCREEN_ENABLED.a(), Boolean.valueOf(zI0));
                r50.a(this.a, s50.USER_CONSENT.a(), boolV0);
                r50.a(this.a, s50.LEGACY_VAST_TRACKING_ENABLED.a(), Boolean.valueOf(zE0));
                r50.a(this.a, s50.LEGACY_VISIBILITY_LOGIC_ENABLED.a(), Boolean.valueOf(zF0));
                r50.a(this.a, s50.OVERLAPPING_VISIBILITY_TRACKING_ENABLED.a(), Boolean.valueOf(zP0));
                r50.a(this.a, s50.OVERLAPPING_WINDOW_TRACKING_ENABLED.a(), Boolean.valueOf(zQ0));
                r50.a(this.a, s50Var.a(), Boolean.valueOf(z));
                r50.a(this.a, s50.FULL_SCREEN_BACK_BUTTON_ENABLED.a(), Boolean.valueOf(zX0));
                r50.a(this.a, s50.OPEN_MEASUREMENT_SDK_DISABLED.a(), Boolean.valueOf(zO0));
                r50.a(this.a, s50.AGE_RESTRICTED_USER.a(), boolP0);
                r50.a(this.a, s50.AUTOMATIC_SDK_INITIALIZATION_DELAY_ENABLED.a(), Boolean.valueOf(zS0));
                r50.a(this.a, s50.CLIENT_BIDDING_STARTUP_INITIALIZATION_ENABLED.a(), Boolean.valueOf(zT0));
                r50.a(this.a, s50.HEADER_BIDDING_STARTUP_INITIALIZATION_ENABLED.a(), Boolean.valueOf(zA0));
                r50.a(this.a, s50.AD_REQUEST_MAX_RETRIES.a(), numD);
                r50.a(this.a, s50.PING_REQUEST_MAX_RETRIES.a(), numT);
                if (dtVarL != null) {
                    defpackage.xb4 xb4Var = ft.a;
                    ft.a(this.a, dtVarL);
                } else {
                    defpackage.xb4 xb4Var2 = ft.a;
                    ft.b(this.a);
                }
                nn2 nn2VarS = fe5Var.s();
                if (nn2VarS != null) {
                    ((av3) this.a).a(s50.PUBLIC_ENCRYPTION_KEY.a(), nn2VarS.a());
                    ((av3) this.a).b(nn2VarS.b(), s50.PUBLIC_ENCRYPTION_VERSION.a());
                }
                r50.a(this.a, s50Var2.a(), Boolean.valueOf(z2));
                ((av3) this.a).b(s50.NATIVE_BANNER_ENABLED.a(), zK0);
                ((av3) this.a).b(s50.USE_DIVKIT_CLOSE_ACTION_INSTEAD_SYSTEM_CLICK.a(), zU0);
                ((av3) this.a).a(s50.STARTUP_VERSION.a(), fe5Var.g0());
                zu3 zu3Var3 = this.a;
                String strA = s50.STARTUP_PARAMETERS.a();
                Map mapF0 = fe5Var.f0();
                String strB3 = null;
                ((av3) zu3Var3).a(strA, mapF0 != null ? oq5.a(mapF0) : null);
                ((av3) this.a).b(s50.APP_OPEN_AD_PRELOADING_ENABLED.a(), fe5Var.q0());
                ((av3) this.a).b(s50.INTERSTITIAL_PRELOADING_ENABLED.a(), fe5Var.C0());
                ((av3) this.a).b(s50.REWARDED_PRELOADING_ENABLED.a(), fe5Var.R0());
                ((av3) this.a).b(s50.NEW_FALSE_CLICK_TRACKING_ENABLED.a(), fe5Var.M0());
                ((av3) this.a).b(s50.APP_START_FALSE_CLICK_INTERVAL_CHECK_ENABLED.a(), fe5Var.r0());
                ((av3) this.a).b(s50.VARIOQUB_ENABLED.a(), fe5Var.W0());
                ((av3) this.a).b(s50.CRASH_TRACKER_ENABLED.a(), fe5Var.p());
                ((av3) this.a).b(s50.ERROR_TRACKER_ENABLED.a(), fe5Var.t());
                ((av3) this.a).b(s50.ANR_TRACKER_ENABLED.a(), fe5Var.f());
                zu3 zu3Var4 = this.a;
                String strA2 = s50.ANR_TRACKER_INTERVAL.a();
                Long lG = fe5Var.g();
                if (lG != null) {
                    ((av3) zu3Var4).a(strA2, lG.longValue());
                } else {
                    ((av3) zu3Var4).d(strA2);
                }
                zu3 zu3Var5 = this.a;
                String strA3 = s50.ANR_TRACKER_THRESHOLD.a();
                Long lH = fe5Var.h();
                if (lH != null) {
                    ((av3) zu3Var5).a(strA3, lH.longValue());
                } else {
                    ((av3) zu3Var5).d(strA3);
                }
                ((av3) this.a).b(s50.EXIT_INFO_ANR_TRACKER_ENABLED.a(), fe5Var.u());
                r50.a(this.a, s50.EXIT_INFO_ANR_TRACKER_MAX_RESULTS.a(), fe5Var.x());
                r50.a(this.a, s50.EXIT_INFO_ANR_TRACKER_HISTORICAL_THRESHOLD_DAYS.a(), fe5Var.w());
                r50.a(this.a, s50.EXIT_INFO_ANR_TRACKER_ENRICHED_TRACES.a(), fe5Var.v());
                ((av3) this.a).b(s50.CRASH_IGNORE_ENABLED.a(), fe5Var.n());
                ((av3) this.a).a(s50.CRASH_STACK_TRACE_EXCLUSION_RULES.a(), lp2.a(fe5Var.o()));
                ((av3) this.a).b(s50.TIME_STAMPING_TRACKING_URLS_ENABLED.a(), fe5Var.i0());
                ((av3) this.a).b(s50.APP_AD_ANALYTICS_REPORTING_ENABLED.a(), fe5Var.i());
                ((av3) this.a).b(s50.APP_METRICA_EASY_INTEGRATION_AUTO_ACTIVATION_DISABLED.a(), fe5Var.j());
                r50.a(this.a, s50.NETWORK_THREAD_POOL_SIZE.a(), fe5Var.P());
                r50.a(this.a, s50.IMAGE_LOADING_THREAD_POOL_SIZE.a(), fe5Var.E());
                r50.a(this.a, s50.TIMEOUT_INTERVAL_FOR_REQUEST.a(), fe5Var.k0());
                r50.a(this.a, s50.TIMEOUT_INTERVAL_FOR_PING_REQUEST.a(), fe5Var.j0());
                ((av3) this.a).a(s50.AD_QUALITY_CONFIGURATION_KEY.a(), b7.a(fe5Var.c()));
                zu3 zu3Var6 = this.a;
                String strA4 = s50.FONT.a();
                fz2 fz2VarB = fe5Var.B();
                if (fz2VarB != null) {
                    xb4.a aVar = defpackage.xb4.d;
                    aVar.getClass();
                    strB = aVar.b(fz2.Companion.serializer(), fz2VarB);
                } else {
                    strB = null;
                }
                ((av3) zu3Var6).a(strA4, strB);
                ((av3) this.a).b(s50.SDK_TRACKING_REPORTER_ENABLED.a(), fe5Var.W());
                cv3.a(this.a, s50.FALLBACK_HOSTS.a(), fe5Var.A());
                ((av3) this.a).b(s50.SHOULD_PREFETCH_DNS.a(), fe5Var.Z());
                ((av3) this.a).b(s50.SHOULD_USE_AD_RENDERED_WEB_VIEW_CALLBACK.a(), fe5Var.d0());
                ((av3) this.a).b(s50.OUTSTREAM_WRAPPER_VIDEO_SUPPORTED.a(), fe5Var.R());
                ((av3) this.a).b(s50.VALIDATE_CLICK_IN_WEB_VIEW.a(), fe5Var.m0());
                ((av3) this.a).b(s50.PASS_FULL_SCREEN_HEIGHT_FROM_SDK_ENABLED.a(), fe5Var.S());
                r50.a(this.a, s50.INSTREAM_QRCODE_SIZE_IN_PX.a(), fe5Var.I());
                ((av3) this.a).b(s50.HIDE_BOTTOM_NAVIGATION_BAR.a(), fe5Var.D());
                ((av3) this.a).b(s50.PRE_WARM_WEB_VIEW_ON_BACKGROUND.a(), fe5Var.V());
                ((av3) this.a).b(s50.FORCE_DEFAULT_PLAYER.a(), fe5Var.C());
                ((av3) this.a).b(s50.SUPPORT_GIF.a(), fe5Var.h0());
                ((av3) this.a).b(s50.SDK_NETWORK_DEBUG_ENABLED.a(), fe5Var.S0());
                ((av3) this.a).b(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), fe5Var.N0());
                ((av3) this.a).b(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), fe5Var.o0());
                zu3 zu3Var7 = this.a;
                String strA5 = s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a();
                Long lE = fe5Var.e();
                if (lE != null) {
                    ((av3) zu3Var7).a(strA5, lE.longValue());
                } else {
                    ((av3) zu3Var7).d(strA5);
                }
                ((av3) this.a).b(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), fe5Var.z());
                ((av3) this.a).b(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), fe5Var.n0());
                ((av3) this.a).a(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a(), fe5Var.F());
                ((av3) this.a).a(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a(), fe5Var.G());
                ((av3) this.a).b(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), fe5Var.L0());
                ((av3) this.a).b(s50.USE_SYSTEM_FONT.a(), fe5Var.l0());
                dj5 dj5VarY = fe5Var.Y();
                if (dj5VarY != null) {
                    ((av3) this.a).a(s50.SESSION_TOKEN.a(), dj5VarY.a());
                }
                zu3 zu3Var8 = this.a;
                String strA6 = s50.PLAYBACK_OPTIMIZATION_CONFIG.a();
                lv4 lv4VarU = fe5Var.U();
                if (lv4VarU != null) {
                    xb4.a aVar2 = defpackage.xb4.d;
                    aVar2.getClass();
                    strB2 = aVar2.b(lv4.Companion.serializer(), lv4VarU);
                } else {
                    strB2 = null;
                }
                ((av3) zu3Var8).a(strA6, strB2);
                List list = fe5Var.Q0;
                zu3 zu3Var9 = this.a;
                if (list != null) {
                    String strA7 = s50.SMART_PRELOAD_BLOCKS.a();
                    List list2 = fe5Var.Q0;
                    if (list2 != null) {
                        xb4.a aVar3 = defpackage.xb4.d;
                        aVar3.getClass();
                        strB3 = aVar3.b(new defpackage.mr(qz4.Companion.serializer()), list2);
                    }
                    ((av3) zu3Var9).a(strA7, strB3);
                } else {
                    ((av3) zu3Var9).d(s50.SMART_PRELOAD_BLOCKS.a());
                }
                i54 i54VarM = fe5Var.M();
                zu3 zu3Var10 = this.a;
                if (i54VarM != null) {
                    ((av3) zu3Var10).a(s50.MEDIATION_AD_LOAD_TIMEOUTS.a(), i54VarM.a());
                } else {
                    ((av3) zu3Var10).d(s50.MEDIATION_AD_LOAD_TIMEOUTS.a());
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0549 A[Catch: all -> 0x032a, TryCatch #7 {all -> 0x032a, blocks: (B:4:0x0005, B:6:0x0025, B:8:0x0323, B:12:0x032f, B:14:0x0439, B:16:0x045e, B:18:0x04d9, B:20:0x04ee, B:31:0x051f, B:35:0x0528, B:37:0x0549, B:38:0x054b, B:49:0x063d, B:53:0x0646, B:68:0x0680, B:72:0x068b, B:75:0x072e, B:78:0x073b, B:80:0x0742, B:82:0x07b6, B:67:0x067c, B:48:0x0639, B:30:0x051b), top: B:101:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0643  */
    /* JADX WARN: Code duplicated, block: B:71:0x0686  */
    /* JADX WARN: Code duplicated, block: B:74:0x072c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:76:0x0738  */
    /* JADX WARN: Code duplicated, block: B:78:0x073b A[Catch: all -> 0x032a, TryCatch #7 {all -> 0x032a, blocks: (B:4:0x0005, B:6:0x0025, B:8:0x0323, B:12:0x032f, B:14:0x0439, B:16:0x045e, B:18:0x04d9, B:20:0x04ee, B:31:0x051f, B:35:0x0528, B:37:0x0549, B:38:0x054b, B:49:0x063d, B:53:0x0646, B:68:0x0680, B:72:0x068b, B:75:0x072e, B:78:0x073b, B:80:0x0742, B:82:0x07b6, B:67:0x067c, B:48:0x0639, B:30:0x051b), top: B:101:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0741  */
    /* JADX WARN: Code duplicated, block: B:93:0x061e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0659 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final fe5 a() {
        fe5 fe5Var;
        boolean z;
        Object objA;
        List listA;
        String strC;
        String strC2;
        int i;
        Object objA2;
        lv4 lv4Var;
        String strC3;
        lv4 lv4Var2;
        long j;
        Object objA3;
        nn2 nn2Var;
        dj5 dj5Var;
        synchronized (b) {
            try {
                long jB = ((av3) this.a).b(s50.AD_PREFERENCE_EXPIRED_DATE.a());
                Boolean boolA = r50.a(this.a, s50.VISIBILITY_ERROR_INDICATOR_ENABLED.a());
                if (jB != 0) {
                    Integer numB = r50.b(this.a, s50.AD_REQUEST_MAX_RETRIES.a());
                    Integer numB2 = r50.b(this.a, s50.PING_REQUEST_MAX_RETRIES.a());
                    int iA = ((av3) this.a).a(0, s50.AD_PREFERENCE_AD_IDS_STORAGE_SIZE.a());
                    int iA2 = ((av3) this.a).a(0, s50.NATIVE_WEB_VIEW_POOL_SIZE.a());
                    long jB2 = ((av3) this.a).b(s50.MAX_DISK_CACHE_SIZE_BYTES_FOR_VIDEO.a());
                    long jB3 = ((av3) this.a).b(s50.MAX_DISK_CACHE_SIZE_BYTES_FOR_REQUEST_QUEUE.a());
                    Boolean boolA2 = r50.a(this.a, s50.MEDIATION_SENSITIVE_MODE_DISABLED.a());
                    boolean zA = ((av3) this.a).a(s50.FUSED_LOCATION_PROVIDER_DISABLED.a(), false);
                    boolean zA2 = ((av3) this.a).a(s50.LOCK_SCREEN_ENABLED.a(), false);
                    Boolean boolA3 = r50.a(this.a, s50.USER_CONSENT.a());
                    String strC4 = ((av3) this.a).c(s50.LIBRARY_VERSION.a());
                    String strC5 = ((av3) this.a).c(s50.HOST.a());
                    String strC6 = ((av3) this.a).c(s50.DIVKIT_FONT.a());
                    String strC7 = ((av3) this.a).c(s50.CLICK_HANDLER_TYPE.a());
                    String strC8 = ((av3) this.a).c(s50.AD_PREFERENCE_MRAID_URL.a());
                    String strC9 = ((av3) this.a).c(s50.AD_PREFERENCE_OM_SDK_JS_CONTROLLER_URL.a());
                    boolean zA3 = ((av3) this.a).a(s50.AD_PREFERENCE_CUSTOM_CLICK_HANDLING_ENABLED.a(), false);
                    boolean zA4 = ((av3) this.a).a(s50.SENSITIVE_MODE_DISABLED.a(), false);
                    boolean zA5 = ((av3) this.a).a(s50.HARD_SENSITIVE_MODE_ENABLED.a(), false);
                    boolean zA6 = ((av3) this.a).a(s50.LEGACY_VAST_TRACKING_ENABLED.a(), false);
                    boolean zA7 = ((av3) this.a).a(s50.LEGACY_VISIBILITY_LOGIC_ENABLED.a(), false);
                    boolean zA8 = ((av3) this.a).a(s50.OVERLAPPING_VISIBILITY_TRACKING_ENABLED.a(), false);
                    boolean zA9 = ((av3) this.a).a(s50.OVERLAPPING_WINDOW_TRACKING_ENABLED.a(), false);
                    boolean zA10 = ((av3) this.a).a(s50.SHOW_VERSION_VALIDATION_ERROR_LOG.a(), false);
                    boolean zA11 = ((av3) this.a).a(s50.SHOW_VERSION_VALIDATION_ERROR_INDICATOR.a(), false);
                    boolean zA12 = ((av3) this.a).a(s50.IMPRESSION_VALIDATION_ON_CLICK_ENABLED.a(), false);
                    boolean zA13 = ((av3) this.a).a(s50.LEGACY_SLIDER_IMPRESSION_ENABLED.a(), false);
                    boolean zA14 = ((av3) this.a).a(s50.FULL_SCREEN_BACK_BUTTON_ENABLED.a(), false);
                    boolean zA15 = ((av3) this.a).a(s50.OPEN_MEASUREMENT_SDK_DISABLED.a(), false);
                    boolean zA16 = ((av3) this.a).a(s50.LOCATION_CONSENT.a(), false);
                    boolean zA17 = ((av3) this.a).a(s50.CLIENT_BIDDING_STARTUP_INITIALIZATION_ENABLED.a(), false);
                    boolean zA18 = ((av3) this.a).a(s50.HEADER_BIDDING_STARTUP_INITIALIZATION_ENABLED.a(), false);
                    defpackage.xb4 xb4Var = ft.a;
                    dt dtVarA = ft.a(this.a);
                    String strC10 = ((av3) this.a).c(s50.PUBLIC_ENCRYPTION_KEY.a());
                    String strC11 = ((av3) this.a).c(s50.INSTREAM_DESIGN.a());
                    Integer numB3 = r50.b(this.a, s50.PUBLIC_ENCRYPTION_VERSION.a());
                    boolean zA19 = ((av3) this.a).a(s50.ECPM_IMPRESSION_CALLBACK_DISABLED.a(), false);
                    boolean zA20 = ((av3) this.a).a(s50.DIVKIT_DISABLED.a(), false);
                    boolean zA21 = ((av3) this.a).a(s50.LIBSSL_ENABLED.a(), false);
                    String strC12 = ((av3) this.a).c(s50.LIGHT_BUNDLE_SCRIPT_URL.a());
                    boolean zA22 = ((av3) this.a).a(s50.SHOULD_WAIT_LIGHT_BUNDLE_SCRIPT_LOADING.a(), false);
                    boolean zA23 = ((av3) this.a).a(s50.SHOULD_START_LIGHT_BUNDLE_SCRIPT_LOADING.a(), false);
                    boolean zA24 = ((av3) this.a).a(s50.CLOSE_FULLSCREEN_WITH_ADTUNE_DISABLED.a(), false);
                    boolean zA25 = ((av3) this.a).a(s50.ENCRYPTED_REQUESTS_ENABLED.a(), false);
                    boolean zA26 = ((av3) this.a).a(s50.RENDER_ASSET_VALIDATION_ENABLED.a(), false);
                    boolean zA27 = ((av3) this.a).a(s50.AUTOMATIC_SDK_INITIALIZATION_DELAY_ENABLED.a(), false);
                    Boolean boolA4 = r50.a(this.a, s50.AGE_RESTRICTED_USER.a());
                    boolean zA28 = ((av3) this.a).a(s50.NATIVE_BANNER_ENABLED.a(), false);
                    boolean zA29 = ((av3) this.a).a(s50.USE_DIVKIT_CLOSE_ACTION_INSTEAD_SYSTEM_CLICK.a(), false);
                    String strC13 = ((av3) this.a).c(s50.BANNER_SIZE_CALCULATION_TYPE.a());
                    String strC14 = ((av3) this.a).c(s50.STARTUP_VERSION.a());
                    String strC15 = ((av3) this.a).c(s50.STARTUP_PARAMETERS.a());
                    Map mapA = strC15 != null ? oq5.a(strC15) : null;
                    boolean zA30 = ((av3) this.a).a(s50.APP_OPEN_AD_PRELOADING_ENABLED.a(), false);
                    boolean zA31 = ((av3) this.a).a(s50.INTERSTITIAL_PRELOADING_ENABLED.a(), false);
                    boolean zA32 = ((av3) this.a).a(s50.REWARDED_PRELOADING_ENABLED.a(), false);
                    boolean zA33 = ((av3) this.a).a(s50.NEW_FALSE_CLICK_TRACKING_ENABLED.a(), false);
                    boolean zA34 = ((av3) this.a).a(s50.APP_START_FALSE_CLICK_INTERVAL_CHECK_ENABLED.a(), false);
                    boolean zA35 = ((av3) this.a).a(s50.VARIOQUB_ENABLED.a(), false);
                    boolean zA36 = ((av3) this.a).a(s50.CRASH_TRACKER_ENABLED.a(), false);
                    boolean zA37 = ((av3) this.a).a(s50.ERROR_TRACKER_ENABLED.a(), false);
                    boolean zA38 = ((av3) this.a).a(s50.ANR_TRACKER_ENABLED.a(), false);
                    Long lC = r50.c(this.a, s50.ANR_TRACKER_INTERVAL.a());
                    Long lC2 = r50.c(this.a, s50.ANR_TRACKER_THRESHOLD.a());
                    boolean zA39 = ((av3) this.a).a(s50.EXIT_INFO_ANR_TRACKER_ENABLED.a(), false);
                    Integer numB4 = r50.b(this.a, s50.EXIT_INFO_ANR_TRACKER_MAX_RESULTS.a());
                    Integer numB5 = r50.b(this.a, s50.EXIT_INFO_ANR_TRACKER_HISTORICAL_THRESHOLD_DAYS.a());
                    Boolean boolA5 = r50.a(this.a, s50.EXIT_INFO_ANR_TRACKER_ENRICHED_TRACES.a());
                    boolean zA40 = ((av3) this.a).a(s50.CRASH_IGNORE_ENABLED.a(), false);
                    String strC16 = ((av3) this.a).c(s50.CRASH_STACK_TRACE_EXCLUSION_RULES.a());
                    Set setA = strC16 != null ? lp2.a(strC16) : null;
                    boolean zA41 = ((av3) this.a).a(s50.TIME_STAMPING_TRACKING_URLS_ENABLED.a(), false);
                    boolean zA42 = ((av3) this.a).a(s50.APP_AD_ANALYTICS_REPORTING_ENABLED.a(), true);
                    boolean zA43 = ((av3) this.a).a(s50.APP_METRICA_EASY_INTEGRATION_AUTO_ACTIVATION_DISABLED.a(), false);
                    Integer numB6 = r50.b(this.a, s50.NETWORK_THREAD_POOL_SIZE.a());
                    Integer numB7 = r50.b(this.a, s50.IMAGE_LOADING_THREAD_POOL_SIZE.a());
                    Integer numB8 = r50.b(this.a, s50.TIMEOUT_INTERVAL_FOR_REQUEST.a());
                    Integer numB9 = r50.b(this.a, s50.TIMEOUT_INTERVAL_FOR_PING_REQUEST.a());
                    String strC17 = ((av3) this.a).c(s50.AD_QUALITY_CONFIGURATION_KEY.a());
                    n7 n7VarA = strC17 != null ? b7.a(strC17) : null;
                    String strC18 = ((av3) this.a).c(s50.FONT.a());
                    if (strC18 != null) {
                        try {
                            defpackage.xb4 xb4Var2 = hr3.a;
                            xb4Var2.getClass();
                            z = zA43;
                            try {
                                objA = xb4Var2.a(fz2.Companion.serializer(), strC18);
                            } catch (Throwable th) {
                                th = th;
                                objA = r57.a(th);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            z = zA43;
                        }
                        if (objA instanceof k57.a) {
                        }
                        fz2 fz2Var = (fz2) objA;
                        boolean zA44 = ((av3) this.a).a(s50.SDK_TRACKING_REPORTER_ENABLED.a(), false);
                        listA = cv3.a(this.a, s50.FALLBACK_HOSTS.a());
                        if (listA == null) {
                            listA = defpackage.kx2.b;
                        }
                        List list = listA;
                        boolean zA45 = ((av3) this.a).a(s50.SHOULD_PREFETCH_DNS.a(), false);
                        boolean zA46 = ((av3) this.a).a(s50.SHOULD_USE_AD_RENDERED_WEB_VIEW_CALLBACK.a(), false);
                        boolean zA47 = ((av3) this.a).a(s50.OUTSTREAM_WRAPPER_VIDEO_SUPPORTED.a(), false);
                        boolean zA48 = ((av3) this.a).a(s50.VALIDATE_CLICK_IN_WEB_VIEW.a(), false);
                        boolean zA49 = ((av3) this.a).a(s50.PASS_FULL_SCREEN_HEIGHT_FROM_SDK_ENABLED.a(), false);
                        Integer numB10 = r50.b(this.a, s50.INSTREAM_QRCODE_SIZE_IN_PX.a());
                        boolean zA50 = ((av3) this.a).a(s50.HIDE_BOTTOM_NAVIGATION_BAR.a(), false);
                        boolean zA51 = ((av3) this.a).a(s50.PRE_WARM_WEB_VIEW_ON_BACKGROUND.a(), false);
                        boolean zA52 = ((av3) this.a).a(s50.FORCE_DEFAULT_PLAYER.a(), false);
                        boolean zA53 = ((av3) this.a).a(s50.SUPPORT_GIF.a(), false);
                        boolean zA54 = ((av3) this.a).a(s50.SDK_NETWORK_DEBUG_ENABLED.a(), false);
                        strC = ((av3) this.a).c(s50.SESSION_TOKEN.a());
                        strC2 = ((av3) this.a).c(s50.PLAYBACK_OPTIMIZATION_CONFIG.a());
                        if (strC2 != null) {
                            try {
                                defpackage.xb4 xb4Var3 = hr3.a;
                                xb4Var3.getClass();
                                i = iA2;
                                try {
                                    objA2 = xb4Var3.a(lv4.Companion.serializer(), strC2);
                                } catch (Throwable th3) {
                                    th = th3;
                                    objA2 = r57.a(th);
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                i = iA2;
                            }
                            if (objA2 instanceof k57.a) {
                            }
                            lv4Var = (lv4) objA2;
                            strC3 = ((av3) this.a).c(s50.SMART_PRELOAD_BLOCKS.a());
                            if (strC3 != null) {
                                try {
                                    defpackage.xb4 xb4Var4 = hr3.a;
                                    xb4Var4.getClass();
                                    lv4Var2 = lv4Var;
                                    try {
                                        j = jB2;
                                        try {
                                            objA3 = xb4Var4.a(new defpackage.mr(qz4.Companion.serializer()), strC3);
                                        } catch (Throwable th5) {
                                            th = th5;
                                            objA3 = r57.a(th);
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        j = jB2;
                                        objA3 = r57.a(th);
                                        if (objA3 instanceof k57.a) {
                                            objA3 = null;
                                        }
                                        List list2 = (List) objA3;
                                        i54 i54VarB = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                                        boolean zA55 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                                        boolean zA56 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                                        Long lC3 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                                        boolean zA57 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                                        boolean zA58 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                                        String strC19 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                                        String strC20 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                                        boolean zA59 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                                        boolean zA60 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                                        if (strC10 != null) {
                                            nn2Var = null;
                                        } else {
                                            nn2Var = null;
                                        }
                                        if (strC != null) {
                                            dj5Var = new dj5(strC);
                                        } else {
                                            dj5Var = null;
                                        }
                                        fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA44, list, zA45, zA46, zA47, zA48, zA49, numB10, zA50, zA51, fz2Var, zA52, zA53, dj5Var, lv4Var2, zA54, list2, i54VarB, zA55, zA56, lC3, zA57, zA58, strC19, strC20, zA59, zA60);
                                        j59 j59Var = j59.a;
                                        return fe5Var;
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    lv4Var2 = lv4Var;
                                }
                                if (objA3 instanceof k57.a) {
                                }
                                List list3 = (List) objA3;
                                i54 i54VarB2 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                                boolean zA510 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                                boolean zA511 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                                Long lC4 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                                boolean zA512 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                                boolean zA513 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                                String strC110 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                                String strC21 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                                boolean zA514 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                                boolean zA61 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                                if (strC10 != null || numB3 == null) {
                                    nn2Var = null;
                                } else {
                                    nn2Var = new nn2(strC10, numB3.intValue());
                                }
                                if (strC != null) {
                                    dj5Var = new dj5(strC);
                                } else {
                                    dj5Var = null;
                                }
                                fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA44, list, zA45, zA46, zA47, zA48, zA49, numB10, zA50, zA51, fz2Var, zA52, zA53, dj5Var, lv4Var2, zA54, list3, i54VarB2, zA510, zA511, lC4, zA512, zA513, strC110, strC21, zA514, zA61);
                            } else {
                                lv4Var2 = lv4Var;
                                j = jB2;
                            }
                            objA3 = null;
                            List list4 = (List) objA3;
                            i54 i54VarB3 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                            boolean zA515 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                            boolean zA516 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                            Long lC5 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                            boolean zA517 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                            boolean zA518 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                            String strC111 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                            String strC22 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                            boolean zA519 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                            boolean zA62 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                            if (strC10 != null) {
                                nn2Var = null;
                            } else {
                                nn2Var = null;
                            }
                            if (strC != null) {
                                dj5Var = new dj5(strC);
                            } else {
                                dj5Var = null;
                            }
                            fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA44, list, zA45, zA46, zA47, zA48, zA49, numB10, zA50, zA51, fz2Var, zA52, zA53, dj5Var, lv4Var2, zA54, list4, i54VarB3, zA515, zA516, lC5, zA517, zA518, strC111, strC22, zA519, zA62);
                        } else {
                            i = iA2;
                        }
                        objA2 = null;
                        lv4Var = (lv4) objA2;
                        strC3 = ((av3) this.a).c(s50.SMART_PRELOAD_BLOCKS.a());
                        if (strC3 != null) {
                            defpackage.xb4 xb4Var5 = hr3.a;
                            xb4Var5.getClass();
                            lv4Var2 = lv4Var;
                            j = jB2;
                            objA3 = xb4Var5.a(new defpackage.mr(qz4.Companion.serializer()), strC3);
                            if (objA3 instanceof k57.a) {
                            }
                            List list5 = (List) objA3;
                            i54 i54VarB4 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                            boolean zA5110 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                            boolean zA5111 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                            Long lC6 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                            boolean zA5112 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                            boolean zA5113 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                            String strC112 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                            String strC23 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                            boolean zA5114 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                            boolean zA63 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                            if (strC10 != null) {
                                nn2Var = null;
                            } else {
                                nn2Var = null;
                            }
                            if (strC != null) {
                                dj5Var = new dj5(strC);
                            } else {
                                dj5Var = null;
                            }
                            fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA44, list, zA45, zA46, zA47, zA48, zA49, numB10, zA50, zA51, fz2Var, zA52, zA53, dj5Var, lv4Var2, zA54, list5, i54VarB4, zA5110, zA5111, lC6, zA5112, zA5113, strC112, strC23, zA5114, zA63);
                        } else {
                            lv4Var2 = lv4Var;
                            j = jB2;
                        }
                        objA3 = null;
                        List list6 = (List) objA3;
                        i54 i54VarB5 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                        boolean zA5115 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                        boolean zA5116 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                        Long lC7 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                        boolean zA5117 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                        boolean zA5118 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                        String strC113 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                        String strC24 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                        boolean zA5119 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                        boolean zA64 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                        if (strC10 != null) {
                            nn2Var = null;
                        } else {
                            nn2Var = null;
                        }
                        if (strC != null) {
                            dj5Var = new dj5(strC);
                        } else {
                            dj5Var = null;
                        }
                        fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA44, list, zA45, zA46, zA47, zA48, zA49, numB10, zA50, zA51, fz2Var, zA52, zA53, dj5Var, lv4Var2, zA54, list6, i54VarB5, zA5115, zA5116, lC7, zA5117, zA5118, strC113, strC24, zA5119, zA64);
                    } else {
                        z = zA43;
                    }
                    objA = null;
                    fz2 fz2Var2 = (fz2) objA;
                    boolean zA410 = ((av3) this.a).a(s50.SDK_TRACKING_REPORTER_ENABLED.a(), false);
                    listA = cv3.a(this.a, s50.FALLBACK_HOSTS.a());
                    if (listA == null) {
                        listA = defpackage.kx2.b;
                    }
                    List list7 = listA;
                    boolean zA411 = ((av3) this.a).a(s50.SHOULD_PREFETCH_DNS.a(), false);
                    boolean zA412 = ((av3) this.a).a(s50.SHOULD_USE_AD_RENDERED_WEB_VIEW_CALLBACK.a(), false);
                    boolean zA413 = ((av3) this.a).a(s50.OUTSTREAM_WRAPPER_VIDEO_SUPPORTED.a(), false);
                    boolean zA414 = ((av3) this.a).a(s50.VALIDATE_CLICK_IN_WEB_VIEW.a(), false);
                    boolean zA415 = ((av3) this.a).a(s50.PASS_FULL_SCREEN_HEIGHT_FROM_SDK_ENABLED.a(), false);
                    Integer numB11 = r50.b(this.a, s50.INSTREAM_QRCODE_SIZE_IN_PX.a());
                    boolean zA520 = ((av3) this.a).a(s50.HIDE_BOTTOM_NAVIGATION_BAR.a(), false);
                    boolean zA521 = ((av3) this.a).a(s50.PRE_WARM_WEB_VIEW_ON_BACKGROUND.a(), false);
                    boolean zA522 = ((av3) this.a).a(s50.FORCE_DEFAULT_PLAYER.a(), false);
                    boolean zA523 = ((av3) this.a).a(s50.SUPPORT_GIF.a(), false);
                    boolean zA524 = ((av3) this.a).a(s50.SDK_NETWORK_DEBUG_ENABLED.a(), false);
                    strC = ((av3) this.a).c(s50.SESSION_TOKEN.a());
                    strC2 = ((av3) this.a).c(s50.PLAYBACK_OPTIMIZATION_CONFIG.a());
                    if (strC2 != null) {
                        defpackage.xb4 xb4Var6 = hr3.a;
                        xb4Var6.getClass();
                        i = iA2;
                        objA2 = xb4Var6.a(lv4.Companion.serializer(), strC2);
                        if (objA2 instanceof k57.a) {
                        }
                        lv4Var = (lv4) objA2;
                        strC3 = ((av3) this.a).c(s50.SMART_PRELOAD_BLOCKS.a());
                        if (strC3 != null) {
                            defpackage.xb4 xb4Var7 = hr3.a;
                            xb4Var7.getClass();
                            lv4Var2 = lv4Var;
                            j = jB2;
                            objA3 = xb4Var7.a(new defpackage.mr(qz4.Companion.serializer()), strC3);
                            if (objA3 instanceof k57.a) {
                            }
                            List list8 = (List) objA3;
                            i54 i54VarB6 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                            boolean zA51110 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                            boolean zA51111 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                            Long lC8 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                            boolean zA51112 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                            boolean zA51113 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                            String strC114 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                            String strC25 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                            boolean zA51114 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                            boolean zA65 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                            if (strC10 != null) {
                                nn2Var = null;
                            } else {
                                nn2Var = null;
                            }
                            if (strC != null) {
                                dj5Var = new dj5(strC);
                            } else {
                                dj5Var = null;
                            }
                            fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA410, list7, zA411, zA412, zA413, zA414, zA415, numB11, zA520, zA521, fz2Var2, zA522, zA523, dj5Var, lv4Var2, zA524, list8, i54VarB6, zA51110, zA51111, lC8, zA51112, zA51113, strC114, strC25, zA51114, zA65);
                        } else {
                            lv4Var2 = lv4Var;
                            j = jB2;
                        }
                        objA3 = null;
                        List list9 = (List) objA3;
                        i54 i54VarB7 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                        boolean zA51115 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                        boolean zA51116 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                        Long lC9 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                        boolean zA51117 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                        boolean zA51118 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                        String strC115 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                        String strC26 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                        boolean zA51119 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                        boolean zA66 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                        if (strC10 != null) {
                            nn2Var = null;
                        } else {
                            nn2Var = null;
                        }
                        if (strC != null) {
                            dj5Var = new dj5(strC);
                        } else {
                            dj5Var = null;
                        }
                        fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA410, list7, zA411, zA412, zA413, zA414, zA415, numB11, zA520, zA521, fz2Var2, zA522, zA523, dj5Var, lv4Var2, zA524, list9, i54VarB7, zA51115, zA51116, lC9, zA51117, zA51118, strC115, strC26, zA51119, zA66);
                    } else {
                        i = iA2;
                    }
                    objA2 = null;
                    lv4Var = (lv4) objA2;
                    strC3 = ((av3) this.a).c(s50.SMART_PRELOAD_BLOCKS.a());
                    if (strC3 != null) {
                        defpackage.xb4 xb4Var8 = hr3.a;
                        xb4Var8.getClass();
                        lv4Var2 = lv4Var;
                        j = jB2;
                        objA3 = xb4Var8.a(new defpackage.mr(qz4.Companion.serializer()), strC3);
                        if (objA3 instanceof k57.a) {
                        }
                        List list10 = (List) objA3;
                        i54 i54VarB8 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                        boolean zA511110 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                        boolean zA511111 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                        Long lC10 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                        boolean zA511112 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                        boolean zA511113 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                        String strC116 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                        String strC27 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                        boolean zA511114 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                        boolean zA67 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                        if (strC10 != null) {
                            nn2Var = null;
                        } else {
                            nn2Var = null;
                        }
                        if (strC != null) {
                            dj5Var = new dj5(strC);
                        } else {
                            dj5Var = null;
                        }
                        fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA410, list7, zA411, zA412, zA413, zA414, zA415, numB11, zA520, zA521, fz2Var2, zA522, zA523, dj5Var, lv4Var2, zA524, list10, i54VarB8, zA511110, zA511111, lC10, zA511112, zA511113, strC116, strC27, zA511114, zA67);
                    } else {
                        lv4Var2 = lv4Var;
                        j = jB2;
                    }
                    objA3 = null;
                    List list11 = (List) objA3;
                    i54 i54VarB9 = h54.b(((av3) this.a).c(s50.MEDIATION_AD_LOAD_TIMEOUTS.a()));
                    boolean zA511115 = ((av3) this.a).a(s50.IS_NEW_REQUEST_PARAMETERS_ENABLED.a(), false);
                    boolean zA511116 = ((av3) this.a).a(s50.ADVERTISING_IDS_FALLBACK_ENABLED.a(), false);
                    Long lC11 = r50.c(this.a, s50.ADVERTISING_IDS_RECEIVE_TIMEOUT.a());
                    boolean zA511117 = ((av3) this.a).a(s50.EXTERNAL_VAST_URL_CHANGE_ENABLED.a(), false);
                    boolean zA511118 = ((av3) this.a).a(s50.WEB_VAST_URL_CHANGE_ENABLED.a(), false);
                    String strC117 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_SOURCE_HOST.a());
                    String strC28 = ((av3) this.a).c(s50.INROLL_AD_BREAK_URL_TARGET_HOST.a());
                    boolean zA511119 = ((av3) this.a).a(s50.NATIVE_IMAGE_LOADING_OPTIMIZATION_ENABLED.a(), false);
                    boolean zA68 = ((av3) this.a).a(s50.USE_SYSTEM_FONT.a(), false);
                    if (strC10 != null) {
                        nn2Var = null;
                    } else {
                        nn2Var = null;
                    }
                    if (strC != null) {
                        dj5Var = new dj5(strC);
                    } else {
                        dj5Var = null;
                    }
                    fe5Var = new fe5(iA, i, j, jB3, jB, zA3, zA, zA2, zA4, zA5, zA7, zA6, zA8, zA9, zA12, zA13, zA11, zA10, zA14, zA24, zA19, zA20, zA15, zA21, strC12, zA22, zA23, zA25, zA26, zA27, zA28, zA29, zA30, zA31, zA32, zA33, zA34, zA35, numB, numB2, boolA3, boolA4, zA16, boolA, strC13, strC8, strC9, strC4, strC7, strC11, strC5, strC6, boolA2, nn2Var, zA17, zA18, dtVarA, strC14, mapA, zA36, zA37, zA38, lC, lC2, zA39, numB4, numB5, boolA5, zA40, setA, zA41, zA42, z, numB6, numB7, numB8, numB9, n7VarA, zA410, list7, zA411, zA412, zA413, zA414, zA415, numB11, zA520, zA521, fz2Var2, zA522, zA523, dj5Var, lv4Var2, zA524, list11, i54VarB9, zA511115, zA511116, lC11, zA511117, zA511118, strC117, strC28, zA511119, zA68);
                } else {
                    fe5Var = null;
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable th8) {
                throw th8;
            }
        }
        return fe5Var;
    }
}

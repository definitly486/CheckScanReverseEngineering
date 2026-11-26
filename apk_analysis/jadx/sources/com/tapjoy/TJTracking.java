package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import defpackage.aa4;
import defpackage.al;
import defpackage.cl4;
import defpackage.eb7;
import defpackage.fh8;
import defpackage.jg;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public final class TJTracking {
    public static String a = null;
    public static String b = null;
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static String g = "";
    public static boolean h;
    public static boolean i;
    public static boolean j;
    public static boolean k;
    public static long l;
    public static int m;
    public static boolean n;
    public static boolean o;
    public static AdvertisingIdClient.Info p;
    public static SharedPreferences q;
    public static final TJTracking INSTANCE = new TJTracking();
    public static final cl4 r = new fh8(new eb7(1));

    public static String b() {
        SharedPreferences sharedPreferences = q;
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString(TapjoyConstants.PREF_INSTALL_ID, "");
            String str = string != null ? string : "";
            d = str;
            if (str.length() == 0) {
                try {
                    UUID uuidRandomUUID = UUID.randomUUID();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    StringBuilder sb = new StringBuilder();
                    sb.append(uuidRandomUUID);
                    sb.append(jCurrentTimeMillis);
                    String strSHA256 = TapjoyUtil.SHA256(sb.toString());
                    strSHA256.getClass();
                    d = strSHA256;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(TapjoyConstants.PREF_INSTALL_ID, d);
                    editorEdit.apply();
                } catch (Exception e2) {
                    jg.f("Error generating install id: ", e2.getMessage());
                }
            }
        }
        return d;
    }

    public static String c() {
        SharedPreferences sharedPreferences = q;
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString(TapjoyConstants.PREF_TEST_ID, "");
            String str = string != null ? string : "";
            f = str;
            if (str.length() == 0) {
                try {
                    String string2 = UUID.randomUUID().toString();
                    string2.getClass();
                    f = string2;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(TapjoyConstants.PREF_TEST_ID, f);
                    editorEdit.apply();
                } catch (Exception e2) {
                    jg.f("Error generating test id: ", e2.getMessage());
                }
            }
        }
        return f;
    }

    public final void a(Context context, boolean z) {
        boolean z2;
        String id;
        TapjoyLog.d("Looking for Google Play Services...");
        if (!j || !k) {
            TapjoyLog.i("Google Play Services not found");
            return;
        }
        TapjoyLog.d("Packaged Google Play Services found, fetching advertisingID...");
        TapjoyLog.d("Packaged Google Play Services version: " + m);
        if (isAdvertisingIdAllowed()) {
            try {
                p = AdvertisingIdClient.getAdvertisingIdInfo(context);
                z2 = true;
            } catch (Error | Exception unused) {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        i = z2;
        try {
            TapjoyLog.d("Device's Google Play Services version: " + l);
        } catch (Exception unused2) {
            TapjoyLog.d("Error getting device's Google Play Services version");
        }
        try {
            long longVersionCode = Build.VERSION.SDK_INT >= 28 ? context.getPackageManager().getPackageInfo("com.google.android.gms", 0).getLongVersionCode() : context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
            l = longVersionCode;
            TapjoyLog.d("Device's Google Play Services version: " + longVersionCode);
        } catch (Exception unused3) {
            TapjoyLog.d("Error getting device's Google Play Services version");
        }
        String str = "";
        if (!i) {
            TapjoyLog.d("Error getting advertisingID from Google Play Services");
            if (z) {
                h = false;
                if (isAdvertisingIdAllowed()) {
                    c = "00000000-0000-0000-0000-000000000000";
                    i = true;
                    return;
                } else {
                    c = "";
                    i = false;
                    return;
                }
            }
            return;
        }
        AdvertisingIdClient.Info info = p;
        if (info != null && (id = info.getId()) != null) {
            str = id;
        }
        c = str;
        AdvertisingIdClient.Info info2 = p;
        h = !(info2 != null ? info2.isLimitAdTrackingEnabled() : true);
        jg.f("Found advertising ID: ", c);
        TapjoyLog.d("Is ad tracking enabled: " + h);
    }

    public final Future<?> fetchAdvertisingID(Context context) {
        if (context == null) {
            return null;
        }
        return ((ExecutorService) r.getValue()).submit(new al(context, 1));
    }

    public final boolean getAdIdCheckDisabled() {
        return n;
    }

    public final boolean getAdTrackingEnableIfPresent() {
        if (isAdvertisingIdPresent()) {
            return h;
        }
        return false;
    }

    public final String getAdvertisingID() {
        return c;
    }

    public final String getAdvertisingIdIfAllowed() {
        return (isAdvertisingIdPresent() && isAdvertisingIdAllowed()) ? c : "";
    }

    public final String getAndroidID() {
        return e;
    }

    public final String getAndroidIDIfAllowed() {
        if ((!isLegacyIdFallbackAllowed() || isAdvertisingIdPresent()) && isGooglePlayServiceIntegrated()) {
            return null;
        }
        return e;
    }

    public final String getAppSetID() {
        return g;
    }

    public final Long getDeviceGpsVersion() {
        long j2 = l;
        if (j2 != 0) {
            return Long.valueOf(j2);
        }
        return null;
    }

    public final String getInstallID() {
        return d;
    }

    public final boolean getLegacyIdFallbackAllowed() {
        return o;
    }

    public final String getLevelPlayAuid() {
        return b;
    }

    public final boolean getOptOutAdvertisingID(Context context) {
        if (context == null) {
            return false;
        }
        q = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
        return !isAdvertisingIdAllowed();
    }

    public final Integer getPackagedGpsVersion() {
        int i2 = m;
        if (i2 != 0) {
            return Integer.valueOf(i2);
        }
        return null;
    }

    public final String getTestID() {
        return f;
    }

    public final String getUnityAdsIdfi() {
        return a;
    }

    public final void init() {
        String lowerCase;
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            q = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
            INSTANCE.getClass();
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if ("9774d56d682e549c".equals(string) || string == null) {
                lowerCase = "";
            } else {
                lowerCase = string.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
            }
            e = lowerCase;
            d = b();
            f = c();
            a = context.getSharedPreferences("unityads-installinfo", 0).getString("unityads-idfi", null);
            b = context.getSharedPreferences("supersonic_shared_preferen", 0).getString("auid", null);
            if (!j) {
                try {
                    context.getClassLoader().loadClass("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                    j = true;
                } catch (Error unused) {
                    j = false;
                } catch (Exception unused2) {
                    j = false;
                }
            }
            if (!k) {
                try {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    applicationInfo.getClass();
                    m = applicationInfo.metaData.getInt("com.google.android.gms.version");
                    k = true;
                } catch (Exception unused3) {
                    k = false;
                }
            }
            if (TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.ALLOW_LEGACY_ID_FALLBACK) != null) {
                String connectFlagValue = TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.ALLOW_LEGACY_ID_FALLBACK);
                connectFlagValue.getClass();
                if (connectFlagValue.length() > 0) {
                    String connectFlagValue2 = TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.ALLOW_LEGACY_ID_FALLBACK);
                    connectFlagValue2.getClass();
                    String lowerCase2 = connectFlagValue2.toLowerCase(Locale.ROOT);
                    lowerCase2.getClass();
                    o = lowerCase2.equals(TJAdUnitConstants.String.TRUE);
                }
            }
            if (TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.DISABLE_ADVERTISING_ID_CHECK) != null) {
                String connectFlagValue3 = TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.DISABLE_ADVERTISING_ID_CHECK);
                connectFlagValue3.getClass();
                if (connectFlagValue3.length() > 0) {
                    String connectFlagValue4 = TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.DISABLE_ADVERTISING_ID_CHECK);
                    connectFlagValue4.getClass();
                    String lowerCase3 = connectFlagValue4.toLowerCase(Locale.ROOT);
                    lowerCase3.getClass();
                    n = lowerCase3.equals(TJAdUnitConstants.String.TRUE);
                }
            }
        }
    }

    public final boolean isAdvertisingIdAllowed() {
        SharedPreferences sharedPreferences = q;
        if (sharedPreferences == null || !sharedPreferences.contains(TapjoyConstants.PREF_OPTOUT_ADVERTISING_ID)) {
            return true;
        }
        SharedPreferences sharedPreferences2 = q;
        return !(sharedPreferences2 != null ? sharedPreferences2.getBoolean(TapjoyConstants.PREF_OPTOUT_ADVERTISING_ID, false) : false);
    }

    public final boolean isAdvertisingIdPresent() {
        return c.length() > 0;
    }

    public final boolean isAndroidIdPresent() {
        return e.length() > 0;
    }

    public final boolean isGooglePlayServiceIntegrated() {
        String connectFlagValue = TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.DISABLE_ADVERTISING_ID_CHECK);
        return ((j || k) && connectFlagValue != null && connectFlagValue.equals(TJAdUnitConstants.String.TRUE)) ? false : true;
    }

    public final boolean isGpsAvailable() {
        return j;
    }

    public final boolean isGpsManifestConfigured() {
        return k;
    }

    public final boolean isLegacyIdFallbackAllowed() {
        return TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.ALLOW_LEGACY_ID_FALLBACK) != null && aa4.e(TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.ALLOW_LEGACY_ID_FALLBACK), TJAdUnitConstants.String.TRUE);
    }

    public final void optOutAdvertisingID(Context context, boolean z) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit = (context == null || (sharedPreferences = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0)) == null) ? null : sharedPreferences.edit();
        if (editorEdit != null) {
            editorEdit.putBoolean(TapjoyConstants.PREF_OPTOUT_ADVERTISING_ID, z);
        }
        if (editorEdit != null) {
            editorEdit.apply();
        }
        if (Tapjoy.isConnected()) {
            if (z) {
                c = "";
            } else {
                if (!(c.length() == 0 || aa4.e(c, "00000000-0000-0000-0000-000000000000")) || context == null) {
                    return;
                }
                fetchAdvertisingID(context);
            }
        }
    }

    public final void setAppSetID(String str) {
        str.getClass();
        g = str;
    }

    public static final void a(Context context) {
        try {
            TJTracking tJTracking = INSTANCE;
            tJTracking.a(context, !tJTracking.isLegacyIdFallbackAllowed());
        } catch (Exception e2) {
            TapjoyLog.e("Error fetching advertising id: " + e2.getMessage());
        }
    }

    public static final ExecutorService a() {
        return Executors.newSingleThreadExecutor();
    }
}

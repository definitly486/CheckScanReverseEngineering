package com.tapjoy;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Base64;
import com.tapjoy.sdk.R;
import defpackage.kx2;
import defpackage.ti0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class TJAppInfo {
    public static final TJAppInfo INSTANCE = new TJAppInfo();
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final Integer f;
    public static final Integer g;
    public static final Integer h;
    public static final Boolean i;
    public static final Boolean j;
    public static String k;
    public static final String l;
    public static String m;
    public static final TJKeyValueStorage n;

    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00eb  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x006e -> B:17:0x006f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00eb -> B:54:0x00ec). Please report as a decompilation issue!!! */
    static {
        Signature[] apkContentsSigners;
        String strEncodeToString;
        String str;
        int longVersionCode;
        String installerPackageName;
        String string;
        InstallSourceInfo installSourceInfo;
        SigningInfo signingInfo;
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            TJKeyValueStorage tJKeyValueStorage = new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE);
            n = tJKeyValueStorage;
            SharedPreferences sharedPreferences = context.getSharedPreferences("fiverocks", 0);
            sharedPreferences.getClass();
            Map mapSingletonMap = Collections.singletonMap("it", "pref_installed");
            mapSingletonMap.getClass();
            new TJPreferencesMigration(tJKeyValueStorage, sharedPreferences, mapSingletonMap, kx2.b).migrateAllKeysIfExists();
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            c = packageName;
            packageManager.getClass();
            packageName.getClass();
            String lowerCase = null;
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 134217728);
                    if (packageInfo == null || (signingInfo = packageInfo.signingInfo) == null) {
                        apkContentsSigners = null;
                    } else {
                        apkContentsSigners = signingInfo.getApkContentsSigners();
                    }
                } else {
                    PackageInfo packageInfo2 = packageManager.getPackageInfo(packageName, 64);
                    if (packageInfo2 != null) {
                        apkContentsSigners = packageInfo2.signatures;
                    } else {
                        apkContentsSigners = null;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (apkContentsSigners == null || apkContentsSigners.length == 0) {
                strEncodeToString = null;
            } else {
                try {
                    strEncodeToString = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(apkContentsSigners[0].toByteArray()), 2);
                } catch (NoSuchAlgorithmException e2) {
                    ti0.f(e2);
                    return;
                }
            }
            d = strEncodeToString;
            INSTANCE.getClass();
            try {
                PackageInfo packageInfo3 = packageManager.getPackageInfo(packageName, 0);
                str = packageInfo3 != null ? packageInfo3.versionName : null;
            } catch (PackageManager.NameNotFoundException unused2) {
            }
            e = str;
            INSTANCE.getClass();
            try {
                PackageInfo packageInfo4 = packageManager.getPackageInfo(packageName, 0);
                packageInfo4.getClass();
                longVersionCode = Build.VERSION.SDK_INT >= 28 ? (int) packageInfo4.getLongVersionCode() : packageInfo4.versionCode;
            } catch (Exception unused3) {
                longVersionCode = 0;
            }
            f = Integer.valueOf(longVersionCode);
            INSTANCE.getClass();
            try {
                if (Build.VERSION.SDK_INT >= 30) {
                    PackageManager packageManager2 = context.getPackageManager();
                    if (packageManager2 == null || (installSourceInfo = packageManager2.getInstallSourceInfo(packageName)) == null) {
                        installerPackageName = null;
                    } else {
                        installerPackageName = installSourceInfo.getInstallingPackageName();
                    }
                } else {
                    PackageManager packageManager3 = context.getPackageManager();
                    if (packageManager3 != null) {
                        installerPackageName = packageManager3.getInstallerPackageName(packageName);
                    } else {
                        installerPackageName = null;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused4) {
            }
            if (installerPackageName != null && installerPackageName.length() > 0) {
                b = installerPackageName;
            }
            try {
                a = packageManager.getPackageInfo(packageName, 0).versionName;
            } catch (PackageManager.NameNotFoundException unused5) {
            }
            g = Integer.valueOf(context.getApplicationInfo().targetSdkVersion);
            TJAppInfo tJAppInfo = INSTANCE;
            tJAppInfo.getClass();
            h = Integer.valueOf(context.getApplicationInfo().minSdkVersion);
            tJAppInfo.getClass();
            i = Boolean.valueOf(a(packageManager, packageName, "com.tapjoy.TJAdUnitActivity"));
            j = Boolean.valueOf(a(packageManager, packageName, "com.tapjoy.TJWebViewActivity"));
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
            applicationInfo.getClass();
            CharSequence categoryTitle = ApplicationInfo.getCategoryTitle(context, applicationInfo.category);
            if (categoryTitle != null && (string = categoryTitle.toString()) != null) {
                lowerCase = string.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
            }
            l = lowerCase;
        }
    }

    public static boolean a(PackageManager packageManager, String str, String str2) {
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(str, str2), 0);
            activityInfo.getClass();
            return activityInfo.getThemeResource() != R.style.TranslucentTheme;
        } catch (Exception unused) {
        }
    }

    public final Boolean getAdUnitThemeChanged() {
        return i;
    }

    public final String getAppCategory() {
        return l;
    }

    public final String getAppGroupId() {
        return k;
    }

    public final String getAppVersion() {
        return a;
    }

    public final long getInstallTime() {
        TJKeyValueStorage tJKeyValueStorage = n;
        long j2 = tJKeyValueStorage != null ? tJKeyValueStorage.getLong("pref_installed", 0L) : 0L;
        if (j2 != 0) {
            return j2;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (tJKeyValueStorage != null) {
            tJKeyValueStorage.setValue("pref_installed", Long.valueOf(jCurrentTimeMillis));
        }
        return jCurrentTimeMillis;
    }

    public final String getInstaller() {
        return b;
    }

    public final String getManagedDeviceID() {
        return m;
    }

    public final Integer getMinSdkVersion() {
        return h;
    }

    public final String getPkgId() {
        return c;
    }

    public final Integer getPkgRev() {
        return f;
    }

    public final String getPkgSign() {
        return d;
    }

    public final String getPkgVer() {
        return e;
    }

    public final Integer getTargetSdkVersion() {
        return g;
    }

    public final Boolean getWebThemeChanged() {
        return j;
    }

    public final void setAppGroupId(String str) {
        k = str;
    }

    public final void setManagedDeviceID(String str) {
        m = str;
    }
}

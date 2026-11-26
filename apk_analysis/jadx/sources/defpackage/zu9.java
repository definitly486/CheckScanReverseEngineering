package defpackage;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class zu9 extends y14 {
    public volatile String o;
    public du9 p;
    public HashMap q;

    public static void W(Context context, HashMap map) {
        List<InputMethodInfo> enabledInputMethodList;
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager == null || (enabledInputMethodList = inputMethodManager.getEnabledInputMethodList()) == null) {
            return;
        }
        Iterator<InputMethodInfo> it = enabledInputMethodList.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            List<InputMethodSubtype> enabledInputMethodSubtypeList = inputMethodManager.getEnabledInputMethodSubtypeList(it.next(), true);
            if (enabledInputMethodSubtypeList != null) {
                for (InputMethodSubtype inputMethodSubtype : enabledInputMethodSubtypeList) {
                    if ("keyboard".equals(inputMethodSubtype.getMode())) {
                        String locale = inputMethodSubtype.getLocale();
                        if (!TextUtils.isEmpty(locale)) {
                            if (hashSet == null) {
                                hashSet = new HashSet();
                            }
                            hashSet.add(locale.split("_", 2)[0]);
                        }
                    }
                }
            }
        }
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        String strJoin = TextUtils.join(StringUtils.COMMA, hashSet);
        if (TextUtils.isEmpty(strJoin)) {
            return;
        }
        map.put("kb_lang", strJoin);
    }

    public final String U(Context context) {
        if (w4a.b()) {
            y14.r(null, "DeviceParamsDataProvider: You must not call getInstanceId method from main thread");
            return "";
        }
        if (this.o == null) {
            synchronized (this) {
                try {
                    if (this.o == null) {
                        String strC = n6a.a(context).c("instanceId");
                        if (TextUtils.isEmpty(strC)) {
                            strC = UUID.randomUUID().toString();
                            n6a.a(context).b("instanceId", strC);
                        }
                        this.o = strC;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String str = this.o;
        return str == null ? "" : str;
    }

    public final synchronized Map V(Context context) {
        String str;
        String str2;
        String str3;
        PackageManager packageManager;
        String string;
        String installingPackageName;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        int i;
        if (this.q != null) {
            return new HashMap(this.q);
        }
        HashMap map = new HashMap();
        y14.r(null, "DeviceParamsDataProvider: Collect application info...");
        String str9 = Build.DEVICE;
        String str10 = Build.MANUFACTURER;
        String str11 = Build.MODEL;
        String str12 = Build.VERSION.RELEASE;
        String packageName = context.getPackageName();
        String language = Locale.getDefault().getLanguage();
        String language2 = context.getResources().getConfiguration().locale.getLanguage();
        int i2 = l3a.a.b;
        float f = l3a.a.a;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        TimeZone timeZone = TimeZone.getDefault();
        String string2 = "";
        try {
            StringBuilder sb = new StringBuilder();
            str = "";
            str2 = "";
            try {
                sb.append(timeZone.getDisplayName(false, 0));
                sb.append(" ");
                sb.append(timeZone.getID());
                string2 = sb.toString();
            } catch (Throwable th) {
                th = th;
                y14.u(null, "DeviceParamsDataProvider: Timezone name error - " + th.getMessage());
            }
        } catch (Throwable th2) {
            th = th2;
            str = "";
            str2 = "";
        }
        String str13 = string2;
        w4a.d.execute(new g00(3, this, map));
        try {
            PackageManager packageManager2 = context.getPackageManager();
            try {
                PackageInfo packageInfo = packageManager2.getPackageInfo(packageName, 0);
                str3 = packageInfo.versionName;
                if (str3 == null) {
                    str3 = "null";
                }
                try {
                    packageManager = packageManager2;
                    try {
                        string = Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
                    } catch (Throwable unused) {
                        string = str2;
                    }
                } catch (Throwable unused2) {
                    packageManager = packageManager2;
                }
            } catch (Throwable unused3) {
                packageManager = packageManager2;
                str3 = str;
            }
        } catch (Throwable unused4) {
            str3 = str;
            packageManager = null;
        }
        PackageManager packageManager3 = packageManager;
        if (packageManager3 != null) {
            try {
                try {
                    installingPackageName = Build.VERSION.SDK_INT >= 30 ? packageManager3.getInstallSourceInfo(packageName).getInstallingPackageName() : packageManager3.getInstallerPackageName(packageName);
                } catch (Throwable unused5) {
                    installingPackageName = "";
                }
            } catch (Throwable unused6) {
            }
        } else {
            installingPackageName = "";
        }
        String strSubstring = "";
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            String simOperator = telephonyManager.getSimState() == 5 ? telephonyManager.getSimOperator() : "";
            String networkOperator = telephonyManager.getNetworkOperator();
            if (TextUtils.isEmpty(networkOperator)) {
                str4 = str13;
            } else {
                str4 = str13;
                if (networkOperator.length() > 3) {
                    String strSubstring2 = networkOperator.substring(3);
                    strSubstring = networkOperator.substring(0, 3);
                    str6 = strSubstring2;
                }
                str5 = simOperator;
                str8 = networkOperatorName;
                str7 = strSubstring;
            }
            str6 = networkOperator;
            str5 = simOperator;
            str8 = networkOperatorName;
            str7 = strSubstring;
        } else {
            str4 = str13;
            str5 = "";
            str6 = "";
            str7 = "";
            str8 = "";
        }
        DisplayMetrics displayMetricsF = l3a.f(context);
        String str14 = str6;
        int i3 = displayMetricsF.widthPixels;
        if (i3 <= 0 || (i = displayMetricsF.heightPixels) <= 0) {
            i = 0;
            i3 = 0;
        }
        int i4 = i;
        int i5 = i3;
        map.put("dkm", (context.getResources().getConfiguration().uiMode & 48) == 32 ? "1" : CommonUrlParts.Values.FALSE_INTEGER);
        if (packageManager3 != null) {
            try {
                map.put("tscr", packageManager3.hasSystemFeature("android.hardware.touchscreen") ? "1" : CommonUrlParts.Values.FALSE_INTEGER);
            } catch (Throwable unused7) {
            }
            try {
                PackageInfo packageInfo2 = packageManager3.getPackageInfo("com.google.android.webview", 0);
                if (packageInfo2 != null) {
                    map.put("swvv", packageInfo2.versionName);
                }
            } catch (Throwable unused8) {
            }
        }
        try {
            map.put("uimd", String.valueOf(((UiModeManager) context.getSystemService("uimode")).getCurrentModeType()));
        } catch (Throwable unused9) {
        }
        try {
            File filesDir = context.getFilesDir();
            if (filesDir != null) {
                long totalSpace = filesDir.getTotalSpace();
                long freeSpace = filesDir.getFreeSpace();
                map.put("mm_tt", String.valueOf(totalSpace));
                map.put("mm_av", String.valueOf(freeSpace));
            }
        } catch (Throwable unused10) {
        }
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager != null) {
                map.put("rs", audioManager.getRingerMode() == 2 ? "1" : CommonUrlParts.Values.FALSE_INTEGER);
            }
        } catch (Throwable unused11) {
        }
        try {
            W(context, map);
        } catch (Throwable unused12) {
        }
        String strU = U(context);
        map.put("device", str9);
        map.put("os", "Android");
        map.put("manufacture", str10);
        map.put("osver", str12);
        map.put("app", packageName);
        map.put("appver", str3);
        map.put("appbuild", string);
        map.put("lang", language);
        map.put("app_lang", language2);
        map.put("sim_loc", str7);
        map.put("euname", str11);
        map.put("w", String.valueOf(i5));
        map.put(CmcdData.STREAMING_FORMAT_HLS, String.valueOf(i4));
        map.put("dpi", String.valueOf(i2));
        map.put("density", String.valueOf(f));
        map.put("operator_id", str14);
        map.put("operator_name", str8);
        map.put("sim_operator_id", str5);
        map.put("timezone", str4);
        map.put("instance_id", strU);
        map.put("btms", String.valueOf(jElapsedRealtime));
        map.put("ains", installingPackageName);
        for (Map.Entry entry : map.entrySet()) {
            y14.r(null, "DeviceParamsDataProvider: " + ((String) entry.getKey()) + " = " + ((String) entry.getValue()));
        }
        String str15 = sh5.a;
        this.p = new du9(strU, packageName, str3, string);
        this.q = map;
        y14.r(null, "DeviceParamsDataProvider: Collected");
        return new HashMap(this.q);
    }
}

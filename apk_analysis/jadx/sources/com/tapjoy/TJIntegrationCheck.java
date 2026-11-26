package com.tapjoy;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import defpackage.aa4;
import defpackage.cg;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.n2;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class TJIntegrationCheck {
    public static final TJIntegrationCheck INSTANCE = new TJIntegrationCheck();
    public static final String[] a = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"};
    public static final List b = u96.i("com.tapjoy.TJAdUnitActivity", "com.tapjoy.TJWebViewActivity");

    public static void a(ActivityInfo activityInfo) throws TapjoyIntegrationException {
        List list = b;
        if (list.contains(activityInfo.name)) {
            int iIndexOf = list.indexOf(activityInfo.name);
            try {
                Class.forName((String) list.get(iIndexOf));
                ArrayList arrayList = new ArrayList();
                if ((activityInfo.configChanges & 128) != 128) {
                    arrayList.add(TJAdUnitConstants.String.ORIENTATION);
                }
                if ((activityInfo.configChanges & 32) != 32) {
                    arrayList.add("keyboardHidden");
                }
                if (!arrayList.isEmpty()) {
                    throw new TapjoyIntegrationException(arrayList + " " + (arrayList.size() == 1 ? "property is" : "properties are") + " not specified in AndroidManifest configChanges for " + list.get(iIndexOf));
                }
                if ((activityInfo.flags & 512) != 512) {
                    throw new TapjoyIntegrationException("'hardwareAccelerated' property not specified in AndroidManifest for " + list.get(iIndexOf));
                }
                if ((activityInfo.configChanges & 1024) != 1024) {
                    TapjoyLog.w("WARNING -- screenSize property is not specified in AndroidManifest configChanges for " + list.get(iIndexOf));
                }
                if ((activityInfo.configChanges & 512) != 512) {
                    TapjoyLog.w("WARNING -- uiMode property is not specified in AndroidManifest configChanges for " + list.get(iIndexOf));
                }
            } catch (ClassNotFoundException unused) {
                throw new TapjoyIntegrationException("[ClassNotFoundException] Could not find dependency class " + b.get(iIndexOf));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a A[Catch: NameNotFoundException -> 0x00bd, TryCatch #1 {NameNotFoundException -> 0x00bd, blocks: (B:4:0x000c, B:6:0x0012, B:9:0x001e, B:12:0x0023, B:14:0x0027, B:18:0x002d, B:20:0x0030, B:22:0x003c, B:23:0x0043, B:25:0x0049, B:21:0x003a), top: B:51:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public final void integrationCheck() {
        PackageInfo packageInfo;
        List<ActivityInfo> listI;
        ActivityInfo[] activityInfoArr;
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageInfo = packageManager.getPackageInfo(context.getPackageName(), 1);
                } else {
                    packageInfo = null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                throw new TapjoyIntegrationException("Error while getting package info.");
            }
        } else {
            packageInfo = null;
        }
        if ((packageInfo != null ? packageInfo.activities : null) == null || (activityInfoArr = packageInfo.activities) == null) {
            listI = kx2.b;
        } else if (!(activityInfoArr.length == 0)) {
            listI = u96.i(Arrays.copyOf(activityInfoArr, activityInfoArr.length));
        } else {
            listI = kx2.b;
        }
        a(listI);
        for (ActivityInfo activityInfo : listI) {
            activityInfo.getClass();
            a(activityInfo);
        }
        a(context);
        try {
            TJAdUnitJSBridge.class.getMethod(TJAdUnitConstants.String.CLOSE_REQUESTED, (Class[]) Arrays.copyOf(new Class[]{new Boolean[]{Boolean.TRUE}[0].getClass()}, 1));
            if (aa4.e(TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.DISABLE_ADVERTISING_ID_CHECK), TJAdUnitConstants.String.TRUE)) {
                TapjoyLog.i("Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services.");
                return;
            }
            TJTracking tJTracking = TJTracking.INSTANCE;
            if (!tJTracking.isGpsAvailable()) {
                throw new TapjoyIntegrationException("Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit https://developers.google.com/android/guides/setup or https://dev.tapjoy.com/en/android-sdk/Manual-Integration");
            }
            if (!tJTracking.isGpsManifestConfigured()) {
                throw new TapjoyIntegrationException("Failed to load AndroidManifest.xml meta-data, 'com.google.android.gms.version' not found. For more information about including the Google Play services client library visit https://developers.google.com/android/guides/setup or https://dev.tapjoy.com/en/android-sdk/Manual-Integration");
            }
        } catch (NoSuchMethodException unused2) {
            throw new TapjoyIntegrationException("Try configuring Proguard or other code obfuscation tools to ignore com.tapjoy classes. Visit http://dev.tapjoy.com for more information.");
        }
    }

    public static void a(Context context) throws TapjoyIntegrationException {
        String str;
        if (context == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String[] strArr = a;
        for (int i = 0; i < 2; i++) {
            String str2 = strArr[i];
            if (context.getPackageManager().checkPermission(str2, context.getPackageName()) != 0) {
                arrayList.add(str2);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == 1) {
            str = TJAdUnitConstants.String.PERMISSION;
        } else {
            str = "permissions";
        }
        throw new TapjoyIntegrationException("Missing " + str + " in AndroidManifest: " + arrayList);
    }

    public static void a(List list) throws TapjoyIntegrationException {
        int i = 0;
        String strD = "";
        for (String str : b) {
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ActivityInfo) it.next()).name);
            }
            if (!arrayList.contains(str)) {
                strD = cg.d(strD, i > 0 ? ", " : "", str);
                i++;
            }
        }
        if (strD.length() > 0) {
            throw new TapjoyIntegrationException(n2.d("Missing ", strD, " ", i == 1 ? "activity" : "activities", " in AndroidManifest."));
        }
    }
}

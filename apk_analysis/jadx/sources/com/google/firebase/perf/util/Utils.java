package com.google.firebase.perf.util;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.collection.SieveCacheKt;
import androidx.media3.muxer.WebmConstants;
import com.google.firebase.perf.logging.AndroidLogger;
import defpackage.fg;
import defpackage.fz3;

/* JADX INFO: loaded from: classes4.dex */
public class Utils {
    private static Boolean isDebugLoggingEnabled;

    public static int bufferToInt(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4 && i2 < bArr.length; i2++) {
            i |= (bArr[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public static void checkArgument(boolean z, String str) {
        if (z) {
            return;
        }
        fg.c(str);
    }

    public static boolean isDebugLoggingEnabled(Context context) {
        Boolean bool = isDebugLoggingEnabled;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean boolValueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            isDebugLoggingEnabled = boolValueOf;
            return boolValueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            AndroidLogger.getInstance().debug("No perf logcat meta data found " + e.getMessage());
            return false;
        }
    }

    public static int saturatedIntCast(long j) {
        if (j > SieveCacheKt.NodeLinkMask) {
            return Integer.MAX_VALUE;
        }
        if (j < SieveCacheKt.NodeMetaAndPreviousMask) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static String stripSensitiveInfo(String str) {
        fz3 fz3VarA;
        str.getClass();
        try {
            fz3.a aVar = new fz3.a();
            aVar.c(null, str);
            fz3VarA = aVar.a();
        } catch (IllegalArgumentException unused) {
            fz3VarA = null;
        }
        if (fz3VarA == null) {
            return str;
        }
        fz3.a aVarF = fz3VarA.f();
        aVarF.b = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
        aVarF.c = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
        aVarF.g = null;
        aVarF.h = null;
        return aVarF.toString();
    }

    public static String truncateURL(String str, int i) {
        int iLastIndexOf;
        if (str.length() <= i) {
            return str;
        }
        if (str.charAt(i) == '/') {
            return str.substring(0, i);
        }
        fz3 fz3VarA = null;
        try {
            fz3.a aVar = new fz3.a();
            aVar.c(null, str);
            fz3VarA = aVar.a();
        } catch (IllegalArgumentException unused) {
        }
        if (fz3VarA == null) {
            return str.substring(0, i);
        }
        return (fz3VarA.b().lastIndexOf(47) < 0 || (iLastIndexOf = str.lastIndexOf(47, i + (-1))) < 0) ? str.substring(0, i) : str.substring(0, iLastIndexOf);
    }
}

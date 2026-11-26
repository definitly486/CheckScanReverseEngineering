package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zfa {
    public static boolean a;

    public static void a(kt9 kt9Var) {
        Object objCast;
        Context context = kt9Var.a;
        if (y14.m || a) {
            return;
        }
        a = true;
        try {
            if (b(context)) {
                y14.m = true;
                y14.r(null, "LoggingUtils: debug mode is enabled by device name");
                return;
            }
            try {
                objCast = Integer.class.cast(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("com.my.target.debugMode"));
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("SystemUtils: exception when access to application info with key - com.my.target.debugMode, "), th);
                objCast = null;
            }
            Integer num = 1;
            if (num.equals((Integer) objCast)) {
                y14.m = true;
                y14.r(null, "LoggingUtils: debug mode is enabled by manifest metadata");
            } else if (c(context)) {
                y14.m = true;
                y14.r(null, "LoggingUtils: debug mode is enabled by system properties");
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if ("debug_phone".equals(Settings.Secure.getString(contentResolver, "bluetooth_name"))) {
                return true;
            }
        } catch (Throwable unused) {
            y14.u(null, "LoggingUtils: case 0 failure");
        }
        try {
            if ("debug_phone".equals(Settings.System.getString(contentResolver, "bluetooth_name"))) {
                return true;
            }
        } catch (Throwable unused2) {
            y14.u(null, "LoggingUtils: case 1 failure");
        }
        try {
            return "debug_phone".equals(Settings.Global.getString(contentResolver, "device_name"));
        } catch (Throwable unused3) {
            y14.u(null, "LoggingUtils: case 2 failure");
            return false;
        }
    }

    public static boolean c(Context context) {
        String str;
        String strC = ni0.c(context.getPackageName(), "_mytarget_debug");
        try {
            str = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, strC);
            if (TextUtils.isEmpty(str)) {
                y14.r(null, "SystemUtils: value in system properties is null for ".concat(strC));
                str = null;
            }
        } catch (Throwable th) {
            fg.e(null, n7.d("SystemUtils: error occurred when getting value for property - ", strC, ", "), th);
        }
        if (String.valueOf((Object) 1).equals(str)) {
            y14.r(null, "LoggingUtils: debug data in SystemProperties has been found");
            return true;
        }
        y14.r(null, "LoggingUtils: no debug data in SystemProperties");
        return false;
    }
}

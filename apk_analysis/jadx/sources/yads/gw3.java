package yads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;

/* JADX INFO: loaded from: classes6.dex */
public final class gw3 {
    public static Object a(Context context, String str) {
        ApplicationInfo applicationInfo;
        Object obj;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (Throwable unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            return null;
        }
        try {
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null || !bundle.containsKey(str) || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static Boolean b(Context context) {
        return (Boolean) a(context, hw3.ENABLE_LOGGING.b);
    }

    public static Boolean a(Context context) {
        return (Boolean) a(context, hw3.AGE_RESTRICTED_USER.b);
    }
}

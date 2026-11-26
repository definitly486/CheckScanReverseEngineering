package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzae {
    public static final Object a = new Object();
    public static boolean b;
    public static String c;
    public static int d;

    public static void a(Context context) {
        synchronized (a) {
            try {
                if (b) {
                    return;
                }
                b = true;
                try {
                    Bundle bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
                    if (bundle == null) {
                        return;
                    }
                    c = bundle.getString("com.google.app.id");
                    d = bundle.getInt("com.google.android.gms.version");
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String zza(Context context) {
        a(context);
        return c;
    }

    public static int zzb(Context context) {
        a(context);
        return d;
    }
}

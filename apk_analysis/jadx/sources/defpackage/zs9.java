package defpackage;

import android.os.Build;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes4.dex */
public final class zs9 {
    public final String a;
    public final int b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;

    public zs9() {
        this.a = Build.VERSION.RELEASE;
        this.b = a();
        this.c = Build.DEVICE;
        this.d = Build.MODEL;
        this.e = Build.MANUFACTURER;
        this.i = "default-empty";
        this.f = "default-empty";
        this.g = "default-empty";
        this.h = "default-empty";
    }

    public static int a() {
        int i;
        int i2;
        int i3 = 0;
        try {
            String[] strArrSplit = Build.VERSION.RELEASE.split("\\.");
            if (strArrSplit.length != 0) {
                int length = strArrSplit.length;
                if (length != 1) {
                    if (length != 2) {
                        if (length != 3) {
                            i = 0;
                            i2 = 0;
                        } else {
                            i = Integer.parseInt(strArrSplit[2]);
                        }
                        return ti0.b(i2, 1000, i3 * PlaybackException.CUSTOM_ERROR_CODE_BASE, i);
                    }
                    i = 0;
                    i2 = Integer.parseInt(strArrSplit[1]);
                } else {
                    i = 0;
                    i2 = 0;
                }
                i3 = Integer.parseInt(strArrSplit[0]);
                return ti0.b(i2, 1000, i3 * PlaybackException.CUSTOM_ERROR_CODE_BASE, i);
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    public zs9(String str, String str2, String str3, String str4) {
        this.a = Build.VERSION.RELEASE;
        this.b = a();
        this.c = Build.DEVICE;
        this.d = Build.MODEL;
        this.e = Build.MANUFACTURER;
        this.i = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
    }
}

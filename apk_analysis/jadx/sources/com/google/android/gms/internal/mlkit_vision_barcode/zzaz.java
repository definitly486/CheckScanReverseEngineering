package com.google.android.gms.internal.mlkit_vision_barcode;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ah;
import defpackage.fg;
import defpackage.jh;
import defpackage.mi2;
import defpackage.o2;
import defpackage.yq;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaz {
    public static String a(int i, int i2, String str) {
        if (i < 0) {
            return zzba.zzb("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzba.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        fg.c(jh.b(i2, "negative size: "));
        return null;
    }

    public static int zza(int i, int i2, String str) {
        String strZzb;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZzb = zzba.zzb("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                fg.c(jh.b(i2, "negative size: "));
                return 0;
            }
            strZzb = zzba.zzb("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZzb);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        yq.d(a(i, i2, FirebaseAnalytics.Param.INDEX));
        return 0;
    }

    public static Object zzc(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        o2.d("Executor was null.");
        return null;
    }

    public static void zzd(boolean z) {
        if (z) {
            return;
        }
        mi2.b();
    }

    public static void zze(int i, int i2, int i3) {
        String strA;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strA = a(i, i3, "start index");
            } else {
                strA = (i2 < 0 || i2 > i3) ? a(i2, i3, "end index") : zzba.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void zzf(boolean z, Object obj) {
        if (z) {
            return;
        }
        ah.f((String) obj);
    }
}

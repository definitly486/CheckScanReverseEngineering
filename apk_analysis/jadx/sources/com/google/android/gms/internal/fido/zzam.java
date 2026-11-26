package com.google.android.gms.internal.fido;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.fg;
import defpackage.jh;
import defpackage.mi2;
import defpackage.yq;

/* JADX INFO: loaded from: classes4.dex */
public final class zzam {
    public static String a(int i, int i2, String str) {
        if (i < 0) {
            return zzan.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzan.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        fg.c(jh.b(i2, "negative size: "));
        return null;
    }

    public static int zza(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzan.zza("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                fg.c(jh.b(i2, "negative size: "));
                return 0;
            }
            strZza = zzan.zza("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        yq.d(a(i, i2, FirebaseAnalytics.Param.INDEX));
        return 0;
    }

    public static void zzc(boolean z) {
        if (z) {
            return;
        }
        mi2.b();
    }

    public static void zzd(boolean z, String str, char c) {
        if (z) {
            return;
        }
        fg.c(zzan.zza(str, Character.valueOf(c)));
    }

    public static void zze(int i, int i2, int i3) {
        String strA;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strA = a(i, i3, "start index");
            } else {
                strA = (i2 < 0 || i2 > i3) ? a(i2, i3, "end index") : zzan.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }
}

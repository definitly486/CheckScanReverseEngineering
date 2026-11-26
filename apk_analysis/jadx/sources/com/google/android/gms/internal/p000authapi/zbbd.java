package com.google.android.gms.internal.p000authapi;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ag;
import defpackage.fg;
import defpackage.yq;

/* JADX INFO: loaded from: classes4.dex */
public final class zbbd {
    public static String a(int i, int i2, String str) {
        if (i < 0) {
            return zbbe.zba("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zbbe.zba("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        fg.c(ag.d(new StringBuilder(String.valueOf(i2).length() + 15), "negative size: ", i2));
        return null;
    }

    public static int zba(int i, int i2, String str) {
        String strZba;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZba = zbbe.zba("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                fg.c(ag.d(new StringBuilder(String.valueOf(i2).length() + 15), "negative size: ", i2));
                return 0;
            }
            strZba = zbbe.zba("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZba);
    }

    public static int zbb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        yq.d(a(i, i2, FirebaseAnalytics.Param.INDEX));
        return 0;
    }

    public static void zbc(int i, int i2, int i3) {
        String strA;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strA = a(i, i3, "start index");
            } else {
                strA = (i2 < 0 || i2 > i3) ? a(i2, i3, "end index") : zbbe.zba("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }
}

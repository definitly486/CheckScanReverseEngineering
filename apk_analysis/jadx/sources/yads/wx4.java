package yads;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wx4 {
    public static void a(int i, int i2) {
        String strA;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strA = gt5.a("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    defpackage.fg.c(vx4.a(i2, "negative size: "));
                    return;
                }
                strA = gt5.a("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void b(int i, int i2) {
        if (i < 0 || i > i2) {
            defpackage.yq.d(a(i, i2, FirebaseAnalytics.Param.INDEX));
        }
    }

    public static String a(int i, int i2, String str) {
        if (i < 0) {
            return gt5.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return gt5.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        defpackage.fg.c(vx4.a(i2, "negative size: "));
        return null;
    }

    public static void a(int i, int i2, int i3) {
        String strA;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strA = a(i, i3, "start index");
            } else if (i2 >= 0 && i2 <= i3) {
                strA = gt5.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                strA = a(i2, i3, "end index");
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }
}

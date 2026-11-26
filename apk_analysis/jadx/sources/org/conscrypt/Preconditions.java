package org.conscrypt;

import defpackage.fg;
import defpackage.jh;
import defpackage.ln;
import defpackage.nz0;
import defpackage.o2;
import defpackage.yq;

/* JADX INFO: loaded from: classes5.dex */
final class Preconditions {
    private Preconditions() {
    }

    private static String badPositionIndex(int i, int i2, String str) {
        if (i < 0) {
            return str + " (" + i + ") must not be negative";
        }
        if (i2 < 0) {
            fg.c(jh.b(i2, "negative size: "));
            return null;
        }
        return str + " (" + i + ") must not be greater than size (" + i2 + ")";
    }

    private static String badPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i > i3) {
            return badPositionIndex(i, i3, "start index");
        }
        return (i2 < 0 || i2 > i3) ? badPositionIndex(i2, i3, "end index") : ln.c(i2, i, "end index (", ") must not be less than start index (", ")");
    }

    public static void checkArgument(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        nz0.d(str, new Object[]{obj});
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        o2.d(str);
        return null;
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            yq.d(badPositionIndexes(i, i2, i3));
        }
    }

    public static void checkArgument(boolean z, String str) {
        if (z) {
            return;
        }
        fg.c(str);
    }
}

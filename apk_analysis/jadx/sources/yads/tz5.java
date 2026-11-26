package yads;

import defpackage.ra8;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class tz5 {
    public final char[] a;
    public int b;
    public final ArrayList c = new ArrayList();

    public tz5(char[] cArr) {
        this.a = cArr;
    }

    public static char b(tz5 tz5Var) {
        int i = tz5Var.b + 1;
        char[] cArr = tz5Var.a;
        if (i >= cArr.length) {
            return (char) 0;
        }
        return cArr[i];
    }

    public static char c(tz5 tz5Var) {
        int i = tz5Var.b - 1;
        if (i >= 0) {
            return tz5Var.a[i];
        }
        return (char) 0;
    }

    public final char a() {
        int i = this.b;
        char[] cArr = this.a;
        if (i >= cArr.length) {
            return (char) 0;
        }
        return cArr[i];
    }

    public final ArrayList d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!tz5.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return Arrays.equals(this.a, ((tz5) obj).a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public final String toString() {
        return defpackage.me0.c("TokenizationState(source=", Arrays.toString(this.a), ")");
    }

    public final char a(int i) {
        if (i < 0) {
            return (char) 0;
        }
        char[] cArr = this.a;
        if (i < cArr.length) {
            return cArr[i];
        }
        return (char) 0;
    }

    public final int c() {
        return this.b;
    }

    public final String a(int i, int i2) {
        return ra8.r(this.a, i, i2);
    }

    public final void b() {
        this.b += 2;
    }

    public static void a(tz5 tz5Var) {
        tz5Var.b++;
    }
}

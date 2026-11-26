package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class av3 {
    public static final gx0 d;
    public static final gx0 e;
    public static final gx0 f;
    public static final gx0 g;
    public static final gx0 h;
    public static final gx0 i;
    public final gx0 a;
    public final gx0 b;
    public final int c;

    static {
        gx0 gx0Var = gx0.e;
        d = gx0.a.c(StringUtils.PROCESS_POSTFIX_DELIMITER);
        e = gx0.a.c(":status");
        f = gx0.a.c(":method");
        g = gx0.a.c(":path");
        h = gx0.a.c(":scheme");
        i = gx0.a.c(":authority");
    }

    public av3(gx0 gx0Var, gx0 gx0Var2) {
        gx0Var.getClass();
        gx0Var2.getClass();
        this.a = gx0Var;
        this.b = gx0Var2;
        this.c = gx0Var2.f() + gx0Var.f() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof av3)) {
            return false;
        }
        av3 av3Var = (av3) obj;
        return aa4.e(this.a, av3Var.a) && aa4.e(this.b, av3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return this.a.x() + ": " + this.b.x();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public av3(String str, String str2) {
        this(gx0.a.c(str), gx0.a.c(str2));
        str.getClass();
        str2.getClass();
        gx0 gx0Var = gx0.e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public av3(gx0 gx0Var, String str) {
        this(gx0Var, gx0.a.c(str));
        gx0Var.getClass();
        str.getClass();
        gx0 gx0Var2 = gx0.e;
    }
}

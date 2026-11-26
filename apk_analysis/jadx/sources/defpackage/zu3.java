package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zu3 {
    public static final gx0 d;
    public static final gx0 e;
    public static final gx0 f;
    public static final gx0 g;
    public static final gx0 h;
    public final gx0 a;
    public final gx0 b;
    public final int c;

    static {
        gx0 gx0Var = gx0.e;
        d = gx0.a.c(":status");
        e = gx0.a.c(":method");
        f = gx0.a.c(":path");
        g = gx0.a.c(":scheme");
        h = gx0.a.c(":authority");
        gx0.a.c(":host");
        gx0.a.c(":version");
    }

    public zu3(gx0 gx0Var, gx0 gx0Var2) {
        this.a = gx0Var;
        this.b = gx0Var2;
        this.c = gx0Var2.f() + gx0Var.f() + 32;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zu3) {
            zu3 zu3Var = (zu3) obj;
            if (this.a.equals(zu3Var.a) && this.b.equals(zu3Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 527) * 31);
    }

    public final String toString() {
        return me0.c(this.a.x(), ": ", this.b.x());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zu3(String str, String str2) {
        this(gx0.a.c(str), gx0.a.c(str2));
        gx0 gx0Var = gx0.e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zu3(gx0 gx0Var, String str) {
        this(gx0Var, gx0.a.c(str));
        gx0 gx0Var2 = gx0.e;
    }
}

package yads;

import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class mo4 extends u13 {
    public static final mo4 a = new mo4();
    public static final List b = defpackage.kx2.b;
    public static final xo2 c = xo2.DATETIME;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        return new fd0(System.currentTimeMillis(), TimeZone.getDefault());
    }

    @Override // yads.u13
    public final String c() {
        return "nowLocal";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}

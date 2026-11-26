package yads;

import defpackage.g17;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hn2 extends u13 {
    public static final hn2 a = new hn2();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.h(new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        return new g17("[.*+?^${}()|\\[\\]\\\\]").f((String) obj, new defpackage.et0(8));
    }

    @Override // yads.u13
    public final String c() {
        return "encodeRegex";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return d;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }

    public static final CharSequence a(defpackage.r15 r15Var) {
        return "\\".concat(r15Var.getValue());
    }
}

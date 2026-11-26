package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class zs5 extends u13 {
    public static final zs5 a = new zs5();
    public static final List b = u96.h(new w13(xo2.STRING, 0));
    public static final xo2 c = xo2.COLOR;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        try {
            return new l20(k20.a((String) objT));
        } catch (IllegalArgumentException e) {
            wo2.a(wo2.a("toColor", list), "Unable to convert value to Color, expected format #AARRGGBB.", e);
            throw null;
        }
    }

    @Override // yads.u13
    public final String c() {
        return "toColor";
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
}

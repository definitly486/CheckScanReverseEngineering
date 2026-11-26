package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h30 extends u13 {
    public final r20 a;
    public final List b = u96.h(new w13(xo2.STRING, 0));
    public final xo2 c = xo2.NUMBER;
    public final boolean d = true;

    public h30(r20 r20Var) {
        this.a = r20Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        try {
            return this.a.b(yo2Var, uo2Var, u96.h(new l20(k20.a((String) objT))));
        } catch (IllegalArgumentException e) {
            wo2.a(wo2.a(c(), list), "Unable to convert value to Color, expected format #AARRGGBB.", e);
            throw null;
        }
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.c;
    }

    @Override // yads.u13
    public final boolean e() {
        return this.d;
    }

    @Override // yads.u13
    public final List a() {
        return this.b;
    }
}

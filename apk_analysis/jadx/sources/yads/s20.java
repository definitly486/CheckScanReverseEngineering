package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s20 extends u13 {
    public final defpackage.bm3 a;
    public final List b;
    public final xo2 c;
    public final boolean d;

    public s20(defpackage.bm3 bm3Var) {
        this.a = bm3Var;
        xo2 xo2Var = xo2.COLOR;
        this.b = u96.i(new w13(xo2Var, 0), new w13(xo2.NUMBER, 0));
        this.c = xo2Var;
        this.d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        int i = ((l20) obj).a;
        Object obj2 = list.get(1);
        obj2.getClass();
        Double d = (Double) obj2;
        try {
            return new l20(((l20) this.a.invoke(new l20(i), d)).a);
        } catch (IllegalArgumentException unused) {
            wo2.a(c(), "Value out of range 0..1.", u96.i(l20.d(i), d));
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

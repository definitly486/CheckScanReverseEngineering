package yads;

import defpackage.nl3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r20 extends u13 {
    public final nl3 a;
    public final List b = u96.h(new w13(xo2.COLOR, 0));
    public final xo2 c = xo2.NUMBER;
    public final boolean d = true;

    public r20(nl3 nl3Var) {
        this.a = nl3Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        nl3 nl3Var = this.a;
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        int iIntValue = ((Number) nl3Var.invoke((l20) objT)).intValue();
        if (iIntValue >= 0 && iIntValue < 256) {
            return Double.valueOf(((double) iIntValue) / 255.0d);
        }
        defpackage.fg.c("Value out of channel range 0..255");
        return null;
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

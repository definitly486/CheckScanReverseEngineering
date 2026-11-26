package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class vi extends u13 {
    public final xo2 a;
    public final List b;

    public vi(xo2 xo2Var) {
        this.a = xo2Var;
        this.b = u96.i(new w13(xo2.ARRAY, 0), new w13(xo2.INTEGER, 0), new w13(xo2Var, 0));
    }

    @Override // yads.u13
    public List a() {
        return this.b;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.a;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }
}

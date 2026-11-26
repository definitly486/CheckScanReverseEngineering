package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class vo0 extends u13 {
    public final List a;
    public final xo2 b;

    public vo0() {
        w13 w13Var = new w13(xo2.DICT, 0);
        xo2 xo2Var = xo2.STRING;
        this.a = u96.i(w13Var, new w13(xo2Var));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = jo0.a(c(), list, f());
        String str = objA instanceof String ? (String) objA : null;
        if (str != null) {
            return str;
        }
        jo0.a(c(), list, this.b, objA, f());
        throw null;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}

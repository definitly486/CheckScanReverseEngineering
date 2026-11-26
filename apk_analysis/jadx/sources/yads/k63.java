package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class k63 extends u13 {
    public final List a = u96.h(new w13(xo2.STRING, 0));

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object objA = ((id9) yo2Var.b).a((String) obj);
        if (objA != null) {
            return objA;
        }
        wo2.a(c(), "Missing value.", list);
        throw null;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}

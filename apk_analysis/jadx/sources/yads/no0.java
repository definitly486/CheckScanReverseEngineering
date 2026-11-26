package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class no0 extends u13 {
    public final List a;
    public final xo2 b;

    public no0() {
        xo2 xo2Var = xo2.BOOLEAN;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.DICT, 0), new w13(xo2.STRING));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Boolean bool = (Boolean) obj;
        Object objA = jo0.a(list, (Object) bool, false);
        Boolean bool2 = objA instanceof Boolean ? (Boolean) objA : null;
        return bool2 == null ? bool : bool2;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
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

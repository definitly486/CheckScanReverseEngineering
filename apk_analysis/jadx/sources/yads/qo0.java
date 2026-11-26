package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qo0 extends u13 {
    public final List a;
    public final xo2 b;

    public qo0() {
        xo2 xo2Var = xo2.INTEGER;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.DICT, 0), new w13(xo2.STRING));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Long l = (Long) obj;
        long jLongValue = l.longValue();
        Object objA = jo0.a(list, (Object) l, false);
        if (objA instanceof Integer) {
            jLongValue = ((Number) objA).intValue();
        } else if (objA instanceof Long) {
            jLongValue = ((Number) objA).longValue();
        }
        return Long.valueOf(jLongValue);
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

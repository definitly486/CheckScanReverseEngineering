package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k53 extends u13 {
    public static final k53 a = new k53();
    public static final List b;
    public static final xo2 c;

    static {
        w13 w13Var = new w13(xo2.STRING, 0);
        xo2 xo2Var = xo2.NUMBER;
        b = u96.i(w13Var, new w13(xo2Var, 0));
        c = xo2Var;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x002c  */
    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Number number;
        Object obj = list.get(0);
        obj.getClass();
        String str = (String) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        Number number2 = (Number) obj2;
        if (yo2Var.a.get(str) instanceof Long) {
            number = null;
        } else {
            Object obj3 = yo2Var.a.get(str);
            if (obj3 instanceof Number) {
                number = (Number) obj3;
            } else {
                number = null;
            }
        }
        return number == null ? number2 : number;
    }

    @Override // yads.u13
    public final String c() {
        return "getNumberValue";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}

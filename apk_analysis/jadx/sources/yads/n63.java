package yads;

import defpackage.id9;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class n63 extends u13 {
    public static final n63 a = new n63();
    public static final List b;
    public static final xo2 c;

    static {
        w13 w13Var = new w13(xo2.STRING, 0);
        xo2 xo2Var = xo2.NUMBER;
        b = u96.i(w13Var, new w13(xo2Var, 0));
        c = xo2Var;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0030  */
    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Number number;
        Object obj = list.get(0);
        obj.getClass();
        String str = (String) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        Number number2 = (Number) obj2;
        if (((id9) yo2Var.b).a(str) instanceof Long) {
            number = null;
        } else {
            Object objA = ((id9) yo2Var.b).a(str);
            if (objA instanceof Number) {
                number = (Number) objA;
            } else {
                number = null;
            }
        }
        return number == null ? number2 : number;
    }

    @Override // yads.u13
    public final String c() {
        return "getStoredNumberValue";
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

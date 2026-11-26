package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class gm3 extends u13 {
    public static final gm3 a = new gm3();
    public static final List b = u96.h(new w13(xo2.INTEGER, 0));
    public static final xo2 c = xo2.BOOLEAN;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        boolean z;
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        long jLongValue = ((Long) objT).longValue();
        if (jLongValue == 0) {
            z = false;
        } else {
            if (jLongValue != 1) {
                wo2.a("toBoolean", "Unable to convert value to Boolean.", list);
                throw null;
            }
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // yads.u13
    public final String c() {
        return "toBoolean";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return d;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}

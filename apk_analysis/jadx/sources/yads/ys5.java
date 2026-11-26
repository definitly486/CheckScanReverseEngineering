package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ys5 extends u13 {
    public static final ys5 a = new ys5();
    public static final List b = u96.h(new w13(xo2.STRING, 0));
    public static final xo2 c = xo2.BOOLEAN;
    public static final boolean d = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        boolean z;
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        String str = (String) objT;
        if (str.equals(TJAdUnitConstants.String.TRUE)) {
            z = true;
        } else {
            if (!str.equals(TJAdUnitConstants.String.FALSE)) {
                wo2.a("toBoolean", "Unable to convert value to Boolean.", list);
                throw null;
            }
            z = false;
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

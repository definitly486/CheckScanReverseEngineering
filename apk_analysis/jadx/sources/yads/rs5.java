package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ta8;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rs5 extends u13 {
    public static final rs5 a = new rs5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2.INTEGER;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        return Long.valueOf(ta8.K((String) obj, (String) obj2, 0, false, 2));
    }

    @Override // yads.u13
    public final String c() {
        return FirebaseAnalytics.Param.INDEX;
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

package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ul3 extends u13 {
    public static final ul3 a = new ul3();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.INTEGER;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objT = defpackage.qn1.T(list);
        objT.getClass();
        long jLongValue = ((Long) objT).longValue();
        Object objB0 = defpackage.qn1.b0(list);
        objB0.getClass();
        long jLongValue2 = ((Long) objB0).longValue();
        if (jLongValue2 != 0) {
            return Long.valueOf(jLongValue / jLongValue2);
        }
        wo2.a(TtmlNode.TAG_DIV, "Division by zero is not supported.", list);
        throw null;
    }

    @Override // yads.u13
    public final String c() {
        return TtmlNode.TAG_DIV;
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

package yads;

import defpackage.u96;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class hv3 extends e {
    public static final hv3 d = new hv3();
    public static final String e = "decimalFormat";
    public static final List f;

    static {
        w13 w13Var = new w13(xo2.NUMBER, 0);
        xo2 xo2Var = xo2.STRING;
        f = u96.i(w13Var, new w13(xo2Var, 0), new w13(xo2Var, 0));
    }

    @Override // yads.e
    public final String a(DecimalFormat decimalFormat, Number number) {
        return decimalFormat.format(Float.valueOf((float) number.doubleValue()));
    }

    @Override // yads.e
    public final Number b(Object obj) {
        obj.getClass();
        return (Double) obj;
    }

    @Override // yads.e
    public final Locale c(List list) {
        Object obj = list.get(2);
        obj.getClass();
        return Locale.forLanguageTag((String) obj);
    }

    @Override // yads.u13
    public final List a() {
        return f;
    }

    @Override // yads.u13
    public final String c() {
        return e;
    }
}

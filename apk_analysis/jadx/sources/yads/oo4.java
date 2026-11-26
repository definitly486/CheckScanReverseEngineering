package yads;

import defpackage.u96;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class oo4 extends e {
    public static final oo4 d = new oo4();
    public static final String e = "decimalFormat";
    public static final List f = u96.i(new w13(xo2.NUMBER, 0), new w13(xo2.STRING, 0));

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
        return Locale.getDefault();
    }

    @Override // yads.u13
    public final String c() {
        return e;
    }

    @Override // yads.u13
    public final List a() {
        return f;
    }
}

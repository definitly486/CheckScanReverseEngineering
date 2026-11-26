package yads;

import defpackage.ra8;
import defpackage.u96;
import java.net.URLEncoder;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ns5 extends u13 {
    public static final ns5 a = new ns5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.h(new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        return ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(URLEncoder.encode((String) obj, defpackage.ha1.b.name()), "+", "%20"), "%21", "!"), "%7E", "~"), "%27", "'"), "%28", "("), "%29", ")");
    }

    @Override // yads.u13
    public final String c() {
        return "encodeUri";
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

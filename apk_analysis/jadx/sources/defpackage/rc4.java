package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rc4 {
    public static final i54 a = k54.a("kotlinx.serialization.json.JsonUnquotedLiteral", ca8.a);

    public static final pd4 a(oc4 oc4Var) {
        pd4 pd4Var = oc4Var instanceof pd4 ? (pd4) oc4Var : null;
        if (pd4Var != null) {
            return pd4Var;
        }
        bg.h(x07.a(oc4Var.getClass()), "Element ", " is not a JsonPrimitive");
        return null;
    }

    public static final long b(pd4 pd4Var) {
        w98 w98VarB = yp2.b(xb4.d, pd4Var.a());
        String str = w98VarB.f;
        long jH = w98VarB.h();
        if (w98VarB.e() == 10) {
            return jH;
        }
        int i = w98VarB.b;
        int i2 = i > 0 ? i - 1 : i;
        w98.l(w98VarB, me0.c("Expected input to contain a single valid number, but got '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' after it"), i2, null, 4);
        throw null;
    }
}

package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pi6 {
    public static z96 a(hi6 hi6Var) {
        if (hi6Var instanceof fn2) {
            return y96.a((fn2) hi6Var);
        }
        if (hi6Var instanceof qs4) {
            return y96.a();
        }
        en4 en4Var = hi6Var.b;
        if (en4Var == null) {
            return y96.a(hi6Var.getMessage());
        }
        int i = en4Var.a;
        if (i >= 500) {
            return y96.b();
        }
        return y96.b(kv2.b(i, "Network Error.  Code: ", ".") + " Data: \n" + new String(en4Var.b, defpackage.ha1.b));
    }
}

package yads;

import defpackage.nl3;
import defpackage.vu2;

/* JADX INFO: loaded from: classes6.dex */
public enum o11 {
    LINEAR("linear"),
    EASE("ease"),
    EASE_IN("ease_in"),
    EASE_OUT("ease_out"),
    EASE_IN_OUT("ease_in_out"),
    SPRING("spring");

    public static final n11 c = new n11();
    public static final nl3 d = new vu2(9);
    public final String b;

    o11(String str) {
        this.b = str;
    }

    public static final o11 a(String str) {
        c.getClass();
        o11 o11Var = LINEAR;
        if (defpackage.aa4.e(str, "linear")) {
            return o11Var;
        }
        o11 o11Var2 = EASE;
        if (defpackage.aa4.e(str, "ease")) {
            return o11Var2;
        }
        o11 o11Var3 = EASE_IN;
        if (defpackage.aa4.e(str, "ease_in")) {
            return o11Var3;
        }
        o11 o11Var4 = EASE_OUT;
        if (defpackage.aa4.e(str, "ease_out")) {
            return o11Var4;
        }
        o11 o11Var5 = EASE_IN_OUT;
        if (defpackage.aa4.e(str, "ease_in_out")) {
            return o11Var5;
        }
        o11 o11Var6 = SPRING;
        if (defpackage.aa4.e(str, "spring")) {
            return o11Var6;
        }
        return null;
    }
}

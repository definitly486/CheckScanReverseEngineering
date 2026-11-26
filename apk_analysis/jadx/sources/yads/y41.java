package yads;

import defpackage.nl3;
import defpackage.uu2;

/* JADX INFO: loaded from: classes6.dex */
public enum y41 {
    SOURCE_IN("source_in"),
    SOURCE_ATOP("source_atop"),
    DARKEN("darken"),
    LIGHTEN("lighten"),
    MULTIPLY("multiply"),
    SCREEN("screen");

    public static final x41 c = new x41();
    public static final nl3 d = new uu2(3);
    public final String b;

    y41(String str) {
        this.b = str;
    }

    public static final y41 a(String str) {
        c.getClass();
        y41 y41Var = SOURCE_IN;
        if (defpackage.aa4.e(str, "source_in")) {
            return y41Var;
        }
        y41 y41Var2 = SOURCE_ATOP;
        if (defpackage.aa4.e(str, "source_atop")) {
            return y41Var2;
        }
        y41 y41Var3 = DARKEN;
        if (defpackage.aa4.e(str, "darken")) {
            return y41Var3;
        }
        y41 y41Var4 = LIGHTEN;
        if (defpackage.aa4.e(str, "lighten")) {
            return y41Var4;
        }
        y41 y41Var5 = MULTIPLY;
        if (defpackage.aa4.e(str, "multiply")) {
            return y41Var5;
        }
        y41 y41Var6 = SCREEN;
        if (defpackage.aa4.e(str, "screen")) {
            return y41Var6;
        }
        return null;
    }
}

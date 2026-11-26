package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum w52 {
    SLIDE("slide"),
    FADE("fade"),
    NONE("none");

    public static final v52 c = new v52();
    public static final nl3 d = new defpackage.uf0(7);
    public final String b;

    w52(String str) {
        this.b = str;
    }

    public static final w52 a(String str) {
        c.getClass();
        w52 w52Var = SLIDE;
        if (defpackage.aa4.e(str, "slide")) {
            return w52Var;
        }
        w52 w52Var2 = FADE;
        if (defpackage.aa4.e(str, "fade")) {
            return w52Var2;
        }
        w52 w52Var3 = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return w52Var3;
        }
        return null;
    }
}

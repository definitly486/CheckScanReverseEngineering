package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum g12 {
    DP("dp"),
    SP("sp"),
    PX("px");

    public static final f12 c = new f12();
    public static final nl3 d = new defpackage.mm(4);
    public final String b;

    g12(String str) {
        this.b = str;
    }

    public static final g12 a(String str) {
        c.getClass();
        g12 g12Var = DP;
        if (defpackage.aa4.e(str, "dp")) {
            return g12Var;
        }
        g12 g12Var2 = SP;
        if (defpackage.aa4.e(str, "sp")) {
            return g12Var2;
        }
        g12 g12Var3 = PX;
        if (defpackage.aa4.e(str, "px")) {
            return g12Var3;
        }
        return null;
    }
}

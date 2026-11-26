package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum yg2 {
    FILL("fill"),
    NO_SCALE("no_scale"),
    FIT("fit");

    public static final xg2 c = new xg2();
    public static final nl3 d = new defpackage.v71(9);
    public final String b;

    yg2(String str) {
        this.b = str;
    }

    public static final yg2 a(String str) {
        c.getClass();
        yg2 yg2Var = FILL;
        if (defpackage.aa4.e(str, "fill")) {
            return yg2Var;
        }
        yg2 yg2Var2 = NO_SCALE;
        if (defpackage.aa4.e(str, "no_scale")) {
            return yg2Var2;
        }
        yg2 yg2Var3 = FIT;
        if (defpackage.aa4.e(str, "fit")) {
            return yg2Var3;
        }
        return null;
    }
}

package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum vi1 {
    FILL("fill"),
    NO_SCALE("no_scale"),
    FIT("fit"),
    STRETCH("stretch");

    public static final ui1 c = new ui1();
    public static final nl3 d = new defpackage.cg1(2);
    public final String b;

    vi1(String str) {
        this.b = str;
    }

    public static final vi1 a(String str) {
        c.getClass();
        vi1 vi1Var = FILL;
        if (defpackage.aa4.e(str, "fill")) {
            return vi1Var;
        }
        vi1 vi1Var2 = NO_SCALE;
        if (defpackage.aa4.e(str, "no_scale")) {
            return vi1Var2;
        }
        vi1 vi1Var3 = FIT;
        if (defpackage.aa4.e(str, "fit")) {
            return vi1Var3;
        }
        vi1 vi1Var4 = STRETCH;
        if (defpackage.aa4.e(str, "stretch")) {
            return vi1Var4;
        }
        return null;
    }
}

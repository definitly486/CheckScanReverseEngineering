package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum aj1 {
    SCALE("scale"),
    WORM("worm"),
    SLIDER("slider");

    public static final zi1 c = new zi1();
    public static final nl3 d = new defpackage.u00(8);
    public final String b;

    aj1(String str) {
        this.b = str;
    }

    public static final aj1 a(String str) {
        c.getClass();
        aj1 aj1Var = SCALE;
        if (defpackage.aa4.e(str, "scale")) {
            return aj1Var;
        }
        aj1 aj1Var2 = WORM;
        if (defpackage.aa4.e(str, "worm")) {
            return aj1Var2;
        }
        aj1 aj1Var3 = SLIDER;
        if (defpackage.aa4.e(str, "slider")) {
            return aj1Var3;
        }
        return null;
    }
}

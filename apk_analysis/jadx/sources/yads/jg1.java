package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum jg1 {
    HORIZONTAL("horizontal"),
    VERTICAL("vertical");

    public static final ig1 c = new ig1();
    public static final nl3 d = new defpackage.gg1(7);
    public final String b;

    jg1(String str) {
        this.b = str;
    }

    public static final jg1 a(String str) {
        c.getClass();
        jg1 jg1Var = HORIZONTAL;
        if (defpackage.aa4.e(str, "horizontal")) {
            return jg1Var;
        }
        jg1 jg1Var2 = VERTICAL;
        if (defpackage.aa4.e(str, "vertical")) {
            return jg1Var2;
        }
        return null;
    }
}

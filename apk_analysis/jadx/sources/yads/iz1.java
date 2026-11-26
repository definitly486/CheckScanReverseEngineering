package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum iz1 {
    VERTICAL("vertical"),
    HORIZONTAL("horizontal");

    public static final hz1 c = new hz1();
    public static final nl3 d = new defpackage.w82(8);
    public final String b;

    iz1(String str) {
        this.b = str;
    }

    public static final iz1 a(String str) {
        c.getClass();
        iz1 iz1Var = VERTICAL;
        if (defpackage.aa4.e(str, "vertical")) {
            return iz1Var;
        }
        iz1 iz1Var2 = HORIZONTAL;
        if (defpackage.aa4.e(str, "horizontal")) {
            return iz1Var2;
        }
        return null;
    }
}

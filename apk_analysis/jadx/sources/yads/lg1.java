package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum lg1 {
    PAGING("paging"),
    DEFAULT("default");

    public static final kg1 c = new kg1();
    public static final nl3 d = new defpackage.uf(4);
    public final String b;

    lg1(String str) {
        this.b = str;
    }

    public static final lg1 a(String str) {
        c.getClass();
        lg1 lg1Var = PAGING;
        if (defpackage.aa4.e(str, "paging")) {
            return lg1Var;
        }
        lg1 lg1Var2 = DEFAULT;
        if (defpackage.aa4.e(str, "default")) {
            return lg1Var2;
        }
        return null;
    }
}

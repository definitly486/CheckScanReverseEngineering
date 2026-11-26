package yads;

import defpackage.lg8;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum tr1 {
    HORIZONTAL("horizontal"),
    VERTICAL("vertical");

    public static final sr1 c = new sr1();
    public static final nl3 d = new lg8(6);
    public final String b;

    tr1(String str) {
        this.b = str;
    }

    public static final tr1 a(String str) {
        c.getClass();
        tr1 tr1Var = HORIZONTAL;
        if (defpackage.aa4.e(str, "horizontal")) {
            return tr1Var;
        }
        tr1 tr1Var2 = VERTICAL;
        if (defpackage.aa4.e(str, "vertical")) {
            return tr1Var2;
        }
        return null;
    }
}

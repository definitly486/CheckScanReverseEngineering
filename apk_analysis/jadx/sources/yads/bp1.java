package yads;

import defpackage.nl3;
import defpackage.to;

/* JADX INFO: loaded from: classes6.dex */
public enum bp1 {
    NONE("none"),
    SINGLE("single");

    public static final ap1 c = new ap1();
    public static final nl3 d = new to(5);
    public final String b;

    bp1(String str) {
        this.b = str;
    }

    public static final bp1 a(String str) {
        c.getClass();
        bp1 bp1Var = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return bp1Var;
        }
        bp1 bp1Var2 = SINGLE;
        if (defpackage.aa4.e(str, "single")) {
            return bp1Var2;
        }
        return null;
    }
}

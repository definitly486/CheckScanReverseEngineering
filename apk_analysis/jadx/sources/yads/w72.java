package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum w72 {
    NORMAL("normal"),
    REVERSED("reversed");

    public static final v72 c = new v72();
    public static final nl3 d = new defpackage.p12(9);
    public final String b;

    w72(String str) {
        this.b = str;
    }

    public static final w72 a(String str) {
        c.getClass();
        w72 w72Var = NORMAL;
        if (defpackage.aa4.e(str, "normal")) {
            return w72Var;
        }
        w72 w72Var2 = REVERSED;
        if (defpackage.aa4.e(str, "reversed")) {
            return w72Var2;
        }
        return null;
    }
}

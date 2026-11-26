package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum zd2 {
    ON_CONDITION("on_condition"),
    ON_VARIABLE("on_variable");

    public static final yd2 c = new yd2();
    public static final nl3 d = new defpackage.ji(6);
    public final String b;

    zd2(String str) {
        this.b = str;
    }

    public static final zd2 a(String str) {
        c.getClass();
        zd2 zd2Var = ON_CONDITION;
        if (defpackage.aa4.e(str, "on_condition")) {
            return zd2Var;
        }
        zd2 zd2Var2 = ON_VARIABLE;
        if (defpackage.aa4.e(str, "on_variable")) {
            return zd2Var2;
        }
        return null;
    }
}

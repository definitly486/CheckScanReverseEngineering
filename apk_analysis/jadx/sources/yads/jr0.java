package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum jr0 {
    DEFAULT("default"),
    MERGE("merge"),
    EXCLUDE("exclude");

    public static final ir0 c = new ir0();
    public static final nl3 d = new defpackage.o44(4);
    public final String b;

    jr0(String str) {
        this.b = str;
    }

    public static final jr0 a(String str) {
        c.getClass();
        jr0 jr0Var = DEFAULT;
        if (defpackage.aa4.e(str, "default")) {
            return jr0Var;
        }
        jr0 jr0Var2 = MERGE;
        if (defpackage.aa4.e(str, "merge")) {
            return jr0Var2;
        }
        jr0 jr0Var3 = EXCLUDE;
        if (defpackage.aa4.e(str, "exclude")) {
            return jr0Var3;
        }
        return null;
    }
}

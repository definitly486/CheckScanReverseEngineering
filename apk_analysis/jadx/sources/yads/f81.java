package yads;

import defpackage.ii3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum f81 {
    NO_WRAP("no_wrap"),
    WRAP("wrap");

    public static final e81 c = new e81();
    public static final nl3 d = new ii3(4);
    public final String b;

    f81(String str) {
        this.b = str;
    }

    public static final f81 a(String str) {
        c.getClass();
        f81 f81Var = NO_WRAP;
        if (defpackage.aa4.e(str, "no_wrap")) {
            return f81Var;
        }
        f81 f81Var2 = WRAP;
        if (defpackage.aa4.e(str, "wrap")) {
            return f81Var2;
        }
        return null;
    }
}

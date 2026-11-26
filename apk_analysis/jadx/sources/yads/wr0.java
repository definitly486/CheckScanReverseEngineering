package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum wr0 {
    SELF("_self"),
    BLANK("_blank");

    public static final vr0 c = new vr0();
    public static final nl3 d = new defpackage.lm(8);
    public final String b;

    wr0(String str) {
        this.b = str;
    }

    public static final wr0 a(String str) {
        c.getClass();
        wr0 wr0Var = SELF;
        if (defpackage.aa4.e(str, "_self")) {
            return wr0Var;
        }
        wr0 wr0Var2 = BLANK;
        if (defpackage.aa4.e(str, "_blank")) {
            return wr0Var2;
        }
        return null;
    }
}

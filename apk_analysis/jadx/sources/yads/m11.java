package yads;

import defpackage.nl3;
import defpackage.wu2;

/* JADX INFO: loaded from: classes6.dex */
public enum m11 {
    NORMAL("normal"),
    REVERSE("reverse"),
    ALTERNATE("alternate"),
    ALTERNATE_REVERSE("alternate_reverse");

    public static final l11 c = new l11();
    public static final nl3 d = new wu2(10);
    public final String b;

    m11(String str) {
        this.b = str;
    }

    public static final m11 a(String str) {
        c.getClass();
        m11 m11Var = NORMAL;
        if (defpackage.aa4.e(str, "normal")) {
            return m11Var;
        }
        m11 m11Var2 = REVERSE;
        if (defpackage.aa4.e(str, "reverse")) {
            return m11Var2;
        }
        m11 m11Var3 = ALTERNATE;
        if (defpackage.aa4.e(str, "alternate")) {
            return m11Var3;
        }
        m11 m11Var4 = ALTERNATE_REVERSE;
        if (defpackage.aa4.e(str, "alternate_reverse")) {
            return m11Var4;
        }
        return null;
    }
}

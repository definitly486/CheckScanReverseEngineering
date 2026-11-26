package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum pd2 {
    DATA_CHANGE("data_change"),
    STATE_CHANGE("state_change"),
    VISIBILITY_CHANGE("visibility_change");

    public static final od2 c = new od2();
    public static final nl3 d = new defpackage.gt3(6);
    public final String b;

    pd2(String str) {
        this.b = str;
    }

    public static final pd2 a(String str) {
        c.getClass();
        pd2 pd2Var = DATA_CHANGE;
        if (defpackage.aa4.e(str, "data_change")) {
            return pd2Var;
        }
        pd2 pd2Var2 = STATE_CHANGE;
        if (defpackage.aa4.e(str, "state_change")) {
            return pd2Var2;
        }
        pd2 pd2Var3 = VISIBILITY_CHANGE;
        if (defpackage.aa4.e(str, "visibility_change")) {
            return pd2Var3;
        }
        return null;
    }
}

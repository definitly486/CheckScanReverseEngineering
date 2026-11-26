package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum nd2 {
    NONE("none"),
    DATA_CHANGE("data_change"),
    STATE_CHANGE("state_change"),
    ANY_CHANGE("any_change");

    public static final md2 c = new md2();
    public static final nl3 d = new defpackage.uf(5);
    public final String b;

    nd2(String str) {
        this.b = str;
    }

    public static final nd2 a(String str) {
        c.getClass();
        nd2 nd2Var = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return nd2Var;
        }
        nd2 nd2Var2 = DATA_CHANGE;
        if (defpackage.aa4.e(str, "data_change")) {
            return nd2Var2;
        }
        nd2 nd2Var3 = STATE_CHANGE;
        if (defpackage.aa4.e(str, "state_change")) {
            return nd2Var3;
        }
        nd2 nd2Var4 = ANY_CHANGE;
        if (defpackage.aa4.e(str, "any_change")) {
            return nd2Var4;
        }
        return null;
    }
}

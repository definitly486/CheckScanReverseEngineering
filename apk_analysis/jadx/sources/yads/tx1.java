package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum tx1 {
    NEAREST_CORNER("nearest_corner"),
    FARTHEST_CORNER("farthest_corner"),
    NEAREST_SIDE("nearest_side"),
    FARTHEST_SIDE("farthest_side");

    public static final sx1 c = new sx1();
    public static final nl3 d = new defpackage.mm(5);
    public final String b;

    tx1(String str) {
        this.b = str;
    }

    public static final tx1 a(String str) {
        c.getClass();
        tx1 tx1Var = NEAREST_CORNER;
        if (defpackage.aa4.e(str, "nearest_corner")) {
            return tx1Var;
        }
        tx1 tx1Var2 = FARTHEST_CORNER;
        if (defpackage.aa4.e(str, "farthest_corner")) {
            return tx1Var2;
        }
        tx1 tx1Var3 = NEAREST_SIDE;
        if (defpackage.aa4.e(str, "nearest_side")) {
            return tx1Var3;
        }
        tx1 tx1Var4 = FARTHEST_SIDE;
        if (defpackage.aa4.e(str, "farthest_side")) {
            return tx1Var4;
        }
        return null;
    }
}

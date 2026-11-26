package yads;

import defpackage.ii3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum pt1 {
    TRANSACTIONAL("transactional"),
    PARTIAL("partial");

    public static final ot1 c = new ot1();
    public static final nl3 d = new ii3(6);
    public final String b;

    pt1(String str) {
        this.b = str;
    }

    public static final pt1 a(String str) {
        c.getClass();
        pt1 pt1Var = TRANSACTIONAL;
        if (defpackage.aa4.e(str, "transactional")) {
            return pt1Var;
        }
        pt1 pt1Var2 = PARTIAL;
        if (defpackage.aa4.e(str, "partial")) {
            return pt1Var2;
        }
        return null;
    }
}

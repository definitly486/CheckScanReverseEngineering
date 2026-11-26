package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum ak1 {
    DEFAULT("default"),
    GO("go"),
    SEARCH(FirebaseAnalytics.Event.SEARCH),
    SEND("send"),
    DONE("done");

    public static final zj1 c = new zj1();
    public static final nl3 d = new defpackage.si1(5);
    public final String b;

    ak1(String str) {
        this.b = str;
    }

    public static final ak1 a(String str) {
        c.getClass();
        ak1 ak1Var = DEFAULT;
        if (defpackage.aa4.e(str, "default")) {
            return ak1Var;
        }
        ak1 ak1Var2 = GO;
        if (defpackage.aa4.e(str, "go")) {
            return ak1Var2;
        }
        ak1 ak1Var3 = SEARCH;
        if (defpackage.aa4.e(str, FirebaseAnalytics.Event.SEARCH)) {
            return ak1Var3;
        }
        ak1 ak1Var4 = SEND;
        if (defpackage.aa4.e(str, "send")) {
            return ak1Var4;
        }
        ak1 ak1Var5 = DONE;
        if (defpackage.aa4.e(str, "done")) {
            return ak1Var5;
        }
        return null;
    }
}

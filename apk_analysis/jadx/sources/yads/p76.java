package yads;

import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class p76 {
    public static final void a(ho6 ho6Var, g75 g75Var) {
        String strA;
        Set setB;
        try {
            c cVarA = g75Var.a();
            if (cVarA == null || (strA = cVarA.a()) == null) {
                strA = "";
            }
            c cVarA2 = g75Var.a();
            if (cVarA2 == null || (setB = cVarA2.b()) == null) {
                setB = defpackage.ox2.b;
            }
            ho6Var.a(strA);
            ho6Var.a(setB);
            setB.toString();
        } catch (Throwable th) {
            th.toString();
        }
    }
}

package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class l76 {
    public static void a(vq0 vq0Var, String str, fs2 fs2Var, nl3 nl3Var) {
        Object aVar;
        z66 z66VarB = w56.b(fs2Var);
        u66 u66VarA = z66VarB != null ? z66VarB.a(str) : null;
        if (u66VarA == null) {
            o01.a(vq0Var, new k76(defpackage.me0.c("Variable '", str, "' not defined!"), null));
            return;
        }
        try {
            u66VarA.b((u66) nl3Var.invoke(u66VarA));
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA == null) {
            return;
        }
        o01.a(vq0Var, new k76(defpackage.me0.c("Variable '", str, "' mutation failed!"), thA));
    }

    public static k76 a(vq0 vq0Var, String str, String str2, fs2 fs2Var) {
        Object aVar;
        z66 z66VarB = w56.b(fs2Var);
        u66 u66VarA = z66VarB != null ? z66VarB.a(str) : null;
        if (u66VarA == null) {
            k76 k76Var = new k76(defpackage.me0.c("Variable '", str, "' not defined!"), null);
            o01.a(vq0Var, k76Var);
            return k76Var;
        }
        try {
            u66VarA.c(str2);
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA == null) {
            return null;
        }
        k76 k76Var2 = new k76(defpackage.me0.c("Variable '", str, "' mutation failed!"), thA);
        o01.a(vq0Var, k76Var2);
        return k76Var2;
    }
}

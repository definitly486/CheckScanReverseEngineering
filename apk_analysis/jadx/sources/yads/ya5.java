package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class ya5 extends ar {
    public final nl3 e;

    public ya5(Context context, bf5 bf5Var, g1 g1Var, defpackage.y22 y22Var, nl3 nl3Var) {
        super(context, bf5Var, g1Var, y22Var);
        this.e = nl3Var;
    }

    @Override // yads.ar
    public final Object a(n8 n8Var, Object obj, zq zqVar) {
        ja5 ja5Var = (ja5) obj;
        if (fb5.d == null) {
            synchronized (fb5.c) {
                try {
                    if (fb5.d == null) {
                        fb5.d = new fb5();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        fb5 fb5Var = fb5.d;
        if (fb5Var == null) {
            defpackage.fg.c("Required value was null.");
            return null;
        }
        zz4 zz4Var = fb5Var.a;
        fb5Var.b.getClass();
        Object objA = zz4Var.a(b13.a(n8Var), ja5Var, zqVar);
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        if (objA != a32Var) {
            objA = j59.a;
        }
        return objA == a32Var ? objA : j59.a;
    }

    @Override // yads.ar
    public final s03 a(n8 n8Var, wq wqVar) {
        xa5 xa5Var = new xa5(this, n8Var);
        ea5 ea5Var = new ea5(this.a, this.b, new wa5(), xa5Var, n8Var);
        String str = n8Var.a;
        ea5Var.c.a(str);
        ea5Var.G.d = str;
        ea5Var.a(new va5(wqVar));
        ea5Var.b(n8Var);
        return ea5Var;
    }
}

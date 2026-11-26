package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class vp3 extends ar {
    public final nl3 e;

    public vp3(Context context, bf5 bf5Var, g1 g1Var, defpackage.y22 y22Var, nl3 nl3Var) {
        super(context, bf5Var, g1Var, y22Var);
        this.e = nl3Var;
    }

    @Override // yads.ar
    public final Object a(n8 n8Var, Object obj, zq zqVar) {
        np3 np3Var = (np3) obj;
        if (yp3.d == null) {
            synchronized (yp3.c) {
                try {
                    if (yp3.d == null) {
                        yp3.d = new yp3();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        yp3 yp3Var = yp3.d;
        if (yp3Var == null) {
            defpackage.fg.c("Required value was null.");
            return null;
        }
        zz4 zz4Var = yp3Var.a;
        yp3Var.b.getClass();
        Object objA = zz4Var.a(b13.a(n8Var), np3Var, zqVar);
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        if (objA != a32Var) {
            objA = j59.a;
        }
        return objA == a32Var ? objA : j59.a;
    }

    @Override // yads.ar
    public final s03 a(n8 n8Var, wq wqVar) {
        up3 up3Var = new up3(this, n8Var);
        ip3 ip3Var = new ip3(this.a, this.b, new tp3(), up3Var, n8Var);
        String str = n8Var.a;
        ip3Var.c.a(str);
        ip3Var.G.f = str;
        ip3Var.a(new sp3(wqVar));
        ip3Var.b(n8Var);
        return ip3Var;
    }
}

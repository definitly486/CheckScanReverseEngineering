package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class ph extends ar {
    public final nl3 e;

    public ph(Context context, bf5 bf5Var, g1 g1Var, defpackage.y22 y22Var, nl3 nl3Var) {
        super(context, bf5Var, g1Var, y22Var);
        this.e = nl3Var;
    }

    @Override // yads.ar
    public final Object a(n8 n8Var, Object obj, zq zqVar) {
        kh khVar = (kh) obj;
        if (jh.d == null) {
            synchronized (jh.c) {
                try {
                    if (jh.d == null) {
                        jh.d = new jh();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        jh jhVar = jh.d;
        if (jhVar == null) {
            defpackage.fg.c("Required value was null.");
            return null;
        }
        zz4 zz4Var = jhVar.a;
        jhVar.b.getClass();
        Object objA = zz4Var.a(b13.a(n8Var), khVar, zqVar);
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        if (objA != a32Var) {
            objA = j59.a;
        }
        return objA == a32Var ? objA : j59.a;
    }

    @Override // yads.ar
    public final s03 a(n8 n8Var, wq wqVar) {
        oh ohVar = new oh(this, n8Var);
        dh dhVar = new dh(this.a, this.b, new nh(), ohVar, n8Var);
        dhVar.c.a(n8Var.a);
        dhVar.a(new mh(wqVar));
        dhVar.b(n8Var);
        return dhVar;
    }
}

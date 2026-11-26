package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ar {
    public final Context a;
    public final bf5 b;
    public final g1 c;
    public final defpackage.y22 d;

    public ar(Context context, bf5 bf5Var, g1 g1Var, defpackage.y22 y22Var) {
        this.a = context;
        this.b = bf5Var;
        this.c = g1Var;
        this.d = y22Var;
    }

    public abstract Object a(n8 n8Var, Object obj, zq zqVar);

    public final Object a(n8 n8Var, m13 m13Var) throws Throwable {
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(m13Var));
        c31Var.u();
        wq wqVar = new wq(c31Var, n8Var, this.d, this.c, new zq(this, null));
        c31Var.n(new yq(wqVar, a(n8Var, wqVar), this, n8Var));
        Object objS = c31Var.s();
        return objS == defpackage.a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public abstract s03 a(n8 n8Var, wq wqVar);
}

package yads;

import android.content.Context;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ks implements ga5 {
    public final Context a;
    public final fw3 b;
    public final aw3 c;
    public final fa5 d;
    public final CopyOnWriteArrayList e;

    public ks(Context context, do6 do6Var) {
        fw3 fw3Var = new fw3(context);
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        fa5 fa5Var = new fa5(do6Var);
        this.a = context;
        this.b = fw3Var;
        this.c = aw3VarA;
        this.d = fa5Var;
        this.e = new CopyOnWriteArrayList();
    }

    @Override // yads.ga5
    public final void a() {
        this.b.a();
        this.c.a();
        for (ea5 ea5Var : this.e) {
            ea5Var.a((w80) null);
            ea5Var.c();
        }
        this.e.clear();
    }

    @Override // yads.ga5
    public final Object a(n8 n8Var, defpackage.e02 e02Var) {
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        return defpackage.av0.d(defpackage.uy4.a.k0(), new js(this, n8Var, null), e02Var);
    }

    @Override // yads.p5
    public final void a(Object obj) {
        ea5 ea5Var = (ea5) obj;
        ea5Var.a((w80) null);
        this.e.remove(ea5Var);
    }
}

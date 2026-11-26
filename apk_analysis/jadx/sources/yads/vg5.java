package yads;

import android.app.Activity;
import android.content.Context;
import defpackage.k57;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vg5 implements o03 {
    public final ea5 a;
    public final dp b;
    public final bf5 c;
    public final xf4 d;
    public final qd5 e;
    public final fk4 f;
    public final e4 g;
    public final vh4 h;
    public final x03 i;
    public d9 j;
    public pg4 k;
    public boolean l;

    public vg5(Context context, ea5 ea5Var, dp dpVar, bf5 bf5Var) {
        xf4 xf4Var = new xf4();
        this.a = ea5Var;
        this.b = dpVar;
        this.c = bf5Var;
        this.d = xf4Var;
        e4 e4Var = dpVar.b;
        this.g = e4Var;
        this.h = new vh4(e4Var);
        t5 t5Var = dpVar.a;
        this.e = new qd5(e4Var, bf5Var);
        this.f = new fk4(context, e4Var, t5Var, bf5Var);
        this.i = new x03(bf5Var);
    }

    @Override // yads.o03
    public final Object a(d13 d13Var, Activity activity) {
        ba5 ba5Var = (ba5) d13Var;
        k57.a aVarA = r57.a(z6.b);
        d9 d9Var = this.j;
        pg4 pg4Var = this.k;
        if (d9Var == null || pg4Var == null) {
            return aVarA;
        }
        e4 e4Var = this.g;
        Object objA = this.i.a(activity, new f2(d9Var, e4Var, ba5Var.c, this.c, pg4Var, e4Var.n, null, 64));
        this.j = null;
        this.k = null;
        return objA;
    }

    @Override // yads.o03
    public final List b() {
        xf4 xf4Var = this.d;
        pg4 pg4Var = this.k;
        xf4Var.getClass();
        return xf4.b(pg4Var);
    }

    @Override // yads.o03
    public final String getAdInfo() {
        return this.d.c(this.k);
    }

    @Override // yads.o03
    public final void a(Context context) {
        this.l = true;
        this.j = null;
        this.k = null;
        this.f.b.a();
    }

    @Override // yads.o03
    public final void a(Context context, d9 d9Var) {
        if (this.l) {
            return;
        }
        this.j = d9Var;
        this.b.a.a(s5.ADAPTER_LOADING, null);
        this.f.a(d9Var, new ug5(this), new tg5(this, context, d9Var));
    }
}

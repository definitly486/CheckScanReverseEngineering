package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class df4 {
    public final bf5 a;
    public final e4 b;
    public final t5 c;
    public final defpackage.y22 d;
    public final Context e;
    public final ff4 f;
    public final ck4 g;

    public df4(Context context, defpackage.y22 y22Var, e4 e4Var, t5 t5Var, bf5 bf5Var) {
        Context applicationContext = context.getApplicationContext();
        we4 we4Var = new we4(new il4(context, y22Var, e4Var, t5Var, bf5Var));
        ff4 ff4Var = new ff4(e4Var, bf5Var, we4Var);
        ck4 ck4Var = new ck4(context, bf5Var, t5Var, we4Var, y22Var);
        this.a = bf5Var;
        this.b = e4Var;
        this.c = t5Var;
        this.d = y22Var;
        this.e = applicationContext;
        this.f = ff4Var;
        this.g = ck4Var;
    }

    public final void a() {
        ck4 ck4Var = this.g;
        xj4 xj4Var = ck4Var.b;
        il4 il4Var = xj4Var.c;
        sl0 sl0Var = il4Var.b;
        synchronized (sl0Var.d) {
            sl0Var.b.a();
            j59 j59Var = j59.a;
        }
        il4Var.c.a();
        xj4Var.a.getClass();
        xj4Var.b.getClass();
        ck4Var.c.a();
        defpackage.z22.b(ck4Var.a, null);
    }
}

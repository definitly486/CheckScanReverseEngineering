package yads;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class r76 {
    public final eb6 a;
    public final of6 b;
    public final ja6 c;
    public final ec6 d;
    public final jf6 e;
    public final t5 f;
    public final ub6 g;
    public final rb6 h;
    public final xa6 i;

    public r76(Context context, bf5 bf5Var, eb6 eb6Var, of6 of6Var, ja6 ja6Var, me6 me6Var, ec6 ec6Var, jf6 jf6Var, ob6 ob6Var, ya6 ya6Var, d9 d9Var, boolean z) {
        this.a = eb6Var;
        this.b = of6Var;
        this.c = ja6Var;
        this.d = ec6Var;
        this.e = jf6Var;
        t5 t5Var = new t5();
        this.f = t5Var;
        ub6 ub6Var = new ub6(context, bf5Var, d9Var, ja6Var, t5Var, ec6Var, of6Var, me6Var, jf6Var);
        this.g = ub6Var;
        rb6 rb6Var = new rb6(eb6Var, ob6Var);
        this.h = rb6Var;
        this.i = new xa6(ja6Var, eb6Var, rb6Var, ub6Var, ec6Var, t5Var, jf6Var, ya6Var, z);
        j35 j35Var = new j35(jf6Var);
        k15 k15Var = new k15(context, ja6Var);
        b86 b86Var = new b86(ja6Var, of6Var, jf6Var, ya6Var);
        n86 n86Var = new n86(of6Var, jf6Var, eb6Var);
        lh6 lh6Var = new lh6(ja6Var, of6Var, ec6Var, jf6Var, ya6Var);
        if (!z) {
            defpackage.nn1.u(ob6Var.a, new nb6[]{b86Var});
        } else {
            defpackage.nn1.u(ob6Var.a, new nb6[]{j35Var, k15Var, n86Var, b86Var, lh6Var});
            defpackage.nn1.u(ob6Var.b, new pb6[]{lh6Var});
        }
    }

    public final void a() {
        this.a.a(this.i);
        this.a.a(this.c);
        this.f.a(s5.VIDEO_AD_PREPARE, null);
        View viewB = this.b.b();
        if (viewB != null) {
            this.e.a(viewB, this.b.a());
        }
        zb6 zb6Var = this.g.g;
        if (!zb6Var.e && !zb6Var.d) {
            zb6Var.e = true;
            zb6Var.f = defpackage.av0.c(zb6Var.c, null, null, new yb6(zb6Var, null), 3);
        }
        this.d.a(cc6.PREPARING);
    }
}

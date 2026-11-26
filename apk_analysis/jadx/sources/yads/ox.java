package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.jd8;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class ox extends bq implements ga5 {
    public final fa5 h;
    public final fb5 i;

    public ox(Context context, do6 do6Var) {
        fw3 fw3Var = new fw3(context);
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        fa5 fa5Var = new fa5(do6Var);
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
            throw null;
        }
        uz4 uz4Var = new uz4();
        cl0 cl0Var = new cl0(e1.a(), new ix(eb5.a()));
        Context context2 = do6Var.a;
        j90 j90Var = new j90(mw.a(context2, context2));
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        super(context, fw3Var, aw3VarA, uz4Var, cl0Var, defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.uy4.a.k0()).plus(j90Var)));
        this.h = fa5Var;
        this.i = fb5Var;
    }

    @Override // yads.bq
    public final void a(n8 n8Var, Object obj, String str) {
        n8 n8VarA = n8.a(n8Var, null, str, 6143);
        ea5 ea5Var = new ea5(this.a, this.h.a, this, new mx(this, n8VarA), n8VarA);
        this.g.add(ea5Var);
        String str2 = n8VarA.a;
        ea5Var.c.a(str2);
        ea5Var.G.d = str2;
        ea5Var.a((w80) obj);
        ea5Var.b(n8VarA);
    }

    @Override // yads.bq
    public final Object b(Object obj) {
        return new lx((w80) obj);
    }

    @Override // yads.bq
    public final void c(Object obj) {
        ((ea5) obj).a((w80) null);
    }

    @Override // yads.bq
    public final void d(Object obj) {
        ea5 ea5Var = (ea5) obj;
        ea5Var.a((w80) null);
        ea5Var.c();
    }

    @Override // yads.bq
    public final void a(Object obj, Object obj2) {
        ja5 ja5Var = (ja5) obj;
        w80 w80Var = (w80) obj2;
        if (w80Var != null) {
            w80Var.a(ja5Var);
        }
    }

    @Override // yads.bq
    public final Object a(zp zpVar) {
        return this.i.a.a(zpVar);
    }

    @Override // yads.bq
    public final Object a(n8 n8Var) {
        return new kx(this, n8Var);
    }

    @Override // yads.bq
    public final Object a(yp ypVar) {
        return new nx(ypVar);
    }
}

package defpackage;

import androidx.webkit.internal.AssetHelper;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class d61 implements u51 {
    public final o51 a;
    public final zt6 b;
    public final jf6 c;
    public final hi0<q99> d = new hi0<>();
    public final hi0<Boolean> e = hi0.i(Boolean.TRUE);

    public d61(o51 o51Var, zt6 zt6Var, jf6 jf6Var) {
        this.a = o51Var;
        this.b = zt6Var;
        this.c = jf6Var;
    }

    @Override // defpackage.u51
    public final h08 a() {
        mz7<List<m10>> mz7VarD = this.a.d();
        int i = 0;
        v51 v51Var = new v51(new y51(this, i), i);
        mz7VarD.getClass();
        return new h08(mz7VarD, v51Var);
    }

    @Override // defpackage.u51
    public final mz7<List<gq6>> b(int i) {
        return this.a.b(i);
    }

    @Override // defpackage.u51
    public final mz7<ot6> c(long j) {
        return this.b.c(j);
    }

    @Override // defpackage.u51
    public final qp1 d() {
        return this.b.d();
    }

    @Override // defpackage.u51
    public final mz7<e09> e(int i, int i2) {
        return this.a.f(new hz8(i, i2));
    }

    @Override // defpackage.u51
    public final Object f(q51 q51Var) {
        return this.a.g(q51Var);
    }

    @Override // defpackage.u51
    public final Object g(int i, r51 r51Var) {
        return this.a.h(i, r51Var);
    }

    @Override // defpackage.u51
    public final mz7<wb0> h(int i) {
        return this.a.e(Integer.valueOf(i));
    }

    @Override // defpackage.u51
    public final hi0<q99> i() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.u51
    public final Object j(long j, f02 f02Var) {
        z51 z51Var;
        if (f02Var instanceof z51) {
            z51Var = (z51) f02Var;
            int i = z51Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                z51Var.n = i - Integer.MIN_VALUE;
            } else {
                z51Var = new z51(this, f02Var);
            }
        } else {
            z51Var = new z51(this, f02Var);
        }
        Object objI = z51Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = z51Var.n;
        if (i2 == 0) {
            r57.b(objI);
            gd3 gd3Var = new gd3(j, "CLICK");
            z51Var.n = 1;
            objI = this.a.i(gd3Var, z51Var);
            if (objI == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objI);
        }
        if (((a57) objI).a.o()) {
            this.c.o(-1L);
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.u51
    public final Object k(long j, f02 f02Var) {
        a61 a61Var;
        if (f02Var instanceof a61) {
            a61Var = (a61) f02Var;
            int i = a61Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                a61Var.n = i - Integer.MIN_VALUE;
            } else {
                a61Var = new a61(this, f02Var);
            }
        } else {
            a61Var = new a61(this, f02Var);
        }
        Object objI = a61Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = a61Var.n;
        if (i2 == 0) {
            r57.b(objI);
            gd3 gd3Var = new gd3(j, "HIDE");
            a61Var.n = 1;
            objI = this.a.i(gd3Var, a61Var);
            if (objI == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objI);
        }
        if (((a57) objI).a.o()) {
            this.c.o(-1L);
        }
        return j59.a;
    }

    @Override // defpackage.u51
    public final e08 l(long j, lg5.c cVar, lg5.c cVar2, yt6 yt6Var) {
        String strName = yt6Var.name();
        Pattern pattern = j95.e;
        mz7<a57<b57>> mz7VarC = this.a.c(j, cVar, cVar2, g37.a.a(strName, j95.a.a(AssetHelper.DEFAULT_MIME_TYPE)));
        jl0 jl0Var = new jl0(new c61(this, j), 1);
        mz7VarC.getClass();
        return new e08(mz7VarC, jl0Var);
    }
}

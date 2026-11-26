package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s03 extends z93 {
    public final y03 A;
    public final ah4 B;
    public final q03 C;
    public o03 D;
    public o03 E;
    public d13 F;
    public final t03 z;

    public s03(Context context, e4 e4Var, bf5 bf5Var, t03 t03Var, t5 t5Var, y03 y03Var, ah4 ah4Var) {
        q03 q03Var = new q03(bf5Var);
        super(context, e4Var, t5Var, bf5Var);
        this.z = t03Var;
        this.A = y03Var;
        this.B = ah4Var;
        this.C = q03Var;
        this.c.a(v9.a.a);
    }

    public abstract o03 a(p03 p03Var);

    @Override // yads.pp
    public void a(d9 d9Var) {
        synchronized (this) {
            this.b.a(s5.NETWORK_REQUEST);
            this.w = d9Var;
        }
        this.B.d = d9Var;
        q03 q03Var = this.C;
        Context context = this.a;
        q03Var.getClass();
        o54 o54Var = d9Var.q;
        o03 o03VarA = a(o54Var != null ? new w34(context, d9Var, o54Var) : new pg5(context, q03Var.a));
        o03 o03Var = this.E;
        if (o03Var != null) {
            o03Var.a(this.a);
        }
        this.E = this.D;
        this.D = o03VarA;
        this.F = this.A.a(d9Var, this.c, o03VarA);
        Context contextA = s1.a();
        if (contextA == null) {
            contextA = this.a;
        }
        o03VarA.a(contextA, d9Var);
    }

    @Override // yads.pp
    public final void c() {
        if (ya.a(this)) {
            return;
        }
        this.F = null;
        Context context = this.a;
        o03[] o03VarArr = {this.E, this.D};
        for (int i = 0; i < 2; i++) {
            o03 o03Var = o03VarArr[i];
            if (o03Var != null) {
                o03Var.a(context);
            }
        }
        this.E = null;
        this.D = null;
        super.c();
    }

    @Override // yads.pp
    public final void e() {
        this.z.onAdFailedToLoad(o8.h);
    }

    @Override // yads.pp
    public final synchronized void f() {
        try {
            d13 d13Var = this.F;
            this.F = null;
            t03 t03Var = this.z;
            if (d13Var != null) {
                t03Var.a(d13Var);
            } else {
                t03Var.onAdFailedToLoad(o8.b);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // yads.pp
    public final void a(m4 m4Var) {
        this.z.onAdFailedToLoad(m4Var);
    }
}

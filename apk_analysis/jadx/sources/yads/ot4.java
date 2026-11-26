package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class ot4 implements oh5 {
    public vz2 a;
    public vx5 b;
    public k06 c;

    public ot4(String str) {
        uz2 uz2Var = new uz2();
        uz2Var.k = str;
        this.a = new vz2(uz2Var);
    }

    @Override // yads.oh5
    public final void a(os4 os4Var) {
        long jA;
        vx5 vx5Var = this.b;
        if (vx5Var == null) {
            defpackage.ud.g();
            return;
        }
        int i = u56.a;
        synchronized (vx5Var) {
            try {
                long j = vx5Var.c;
                jA = j != C.TIME_UNSET ? j + vx5Var.b : vx5Var.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        long jB = this.b.b();
        if (jA == C.TIME_UNSET || jB == C.TIME_UNSET) {
            return;
        }
        vz2 vz2Var = this.a;
        if (jB != vz2Var.q) {
            uz2 uz2Var = new uz2(vz2Var);
            uz2Var.o = jB;
            vz2 vz2Var2 = new vz2(uz2Var);
            this.a = vz2Var2;
            this.c.a(vz2Var2);
        }
        int i2 = os4Var.c - os4Var.b;
        this.c.a(i2, os4Var);
        this.c.a(jA, 1, i2, 0, null);
    }

    @Override // yads.oh5
    public final void a(vx5 vx5Var, zs2 zs2Var, t26 t26Var) {
        this.b = vx5Var;
        t26Var.a();
        t26Var.b();
        k06 k06VarA = zs2Var.a(t26Var.d, 5);
        this.c = k06VarA;
        k06VarA.a(this.a);
    }
}

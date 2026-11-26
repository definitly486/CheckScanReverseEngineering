package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class o26 implements oh5 {
    public final ns4 a = new ns4(new byte[4]);
    public final /* synthetic */ q26 b;

    public o26(q26 q26Var) {
        this.b = q26Var;
    }

    @Override // yads.oh5
    public final void a(os4 os4Var) {
        if (os4Var.k() == 0 && (os4Var.k() & 128) != 0) {
            os4Var.e(os4Var.b + 6);
            int i = (os4Var.c - os4Var.b) / 4;
            for (int i2 = 0; i2 < i; i2++) {
                ns4 ns4Var = this.a;
                os4Var.a(ns4Var.a, 0, 4);
                ns4Var.b(0);
                int iA = this.a.a(16);
                this.a.c(3);
                ns4 ns4Var2 = this.a;
                if (iA == 0) {
                    ns4Var2.c(13);
                } else {
                    int iA2 = ns4Var2.a(13);
                    if (this.b.g.get(iA2) == null) {
                        q26 q26Var = this.b;
                        q26Var.g.put(iA2, new ph5(new p26(q26Var, iA2)));
                        this.b.m++;
                    }
                }
            }
            q26 q26Var2 = this.b;
            if (q26Var2.a != 2) {
                q26Var2.g.remove(0);
            }
        }
    }

    @Override // yads.oh5
    public final void a(vx5 vx5Var, zs2 zs2Var, t26 t26Var) {
    }
}

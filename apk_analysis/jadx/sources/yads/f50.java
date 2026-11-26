package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class f50 implements l14, ul2 {
    public final Object a;
    public k14 b;
    public tl2 c;
    public final /* synthetic */ h50 d;

    public f50(h50 h50Var, Object obj) {
        this.d = h50Var;
        this.b = new k14(h50Var.c.c, 0, null, 0L);
        this.c = new tl2(h50Var.d.c, 0, null);
        this.a = obj;
    }

    public final boolean a(int i, h14 h14Var) {
        h14 h14VarA;
        int i2;
        if (h14Var != null) {
            h14VarA = this.d.a(this.a, h14Var);
            if (h14VarA == null) {
                return false;
            }
        } else {
            h14VarA = null;
        }
        h14 h14Var2 = h14VarA;
        k14 k14Var = this.b;
        if (k14Var.a == i && u56.a(k14Var.b, h14Var2)) {
            i2 = i;
        } else {
            i2 = i;
            this.b = new k14(this.d.c.c, i2, h14Var2, 0L);
        }
        tl2 tl2Var = this.c;
        if (tl2Var.a == i2 && u56.a(tl2Var.b, h14Var2)) {
            return true;
        }
        this.c = new tl2(this.d.d.c, i2, h14Var2);
        return true;
    }

    @Override // yads.l14
    public final void b(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.c(cu3Var, a(r04Var));
        }
    }

    @Override // yads.l14
    public final void c(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.a(cu3Var, a(r04Var));
        }
    }

    @Override // yads.l14
    public final void b(int i, h14 h14Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.a(a(r04Var));
        }
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, cu3 cu3Var, r04 r04Var, IOException iOException, boolean z) {
        if (a(i, h14Var)) {
            this.b.a(cu3Var, a(r04Var), iOException, z);
        }
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.b(a(r04Var));
        }
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.b(cu3Var, a(r04Var));
        }
    }

    public final r04 a(r04 r04Var) {
        long j = r04Var.f;
        long j2 = r04Var.g;
        return (j == j && j2 == j2) ? r04Var : new r04(r04Var.a, r04Var.b, r04Var.c, r04Var.d, r04Var.e, j, j2);
    }
}

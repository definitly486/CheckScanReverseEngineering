package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class n14 implements l14, ul2 {
    public final p14 a;
    public k14 b;
    public tl2 c;
    public final /* synthetic */ q14 d;

    public n14(q14 q14Var, p14 p14Var) {
        this.d = q14Var;
        this.b = q14Var.f;
        this.c = q14Var.g;
        this.a = p14Var;
    }

    public final boolean a(int i, h14 h14Var) {
        h14 h14VarA = null;
        if (h14Var != null) {
            p14 p14Var = this.a;
            for (int i2 = 0; i2 < p14Var.c.size(); i2++) {
                if (((h14) p14Var.c.get(i2)).d == h14Var.d) {
                    h14VarA = h14Var.a(f.a(p14Var.b, h14Var.a));
                    break;
                }
            }
            if (h14VarA == null) {
                return false;
            }
        }
        h14 h14Var2 = h14VarA;
        int i3 = i + this.a.d;
        k14 k14Var = this.b;
        if (k14Var.a != i3 || !u56.a(k14Var.b, h14Var2)) {
            this.b = new k14(this.d.f.c, i3, h14Var2, 0L);
        }
        tl2 tl2Var = this.c;
        if (tl2Var.a == i3 && u56.a(tl2Var.b, h14Var2)) {
            return true;
        }
        this.c = new tl2(this.d.g.c, i3, h14Var2);
        return true;
    }

    @Override // yads.l14
    public final void b(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.c(cu3Var, r04Var);
        }
    }

    @Override // yads.l14
    public final void c(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.a(cu3Var, r04Var);
        }
    }

    @Override // yads.l14
    public final void b(int i, h14 h14Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.a(r04Var);
        }
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, cu3 cu3Var, r04 r04Var, IOException iOException, boolean z) {
        if (a(i, h14Var)) {
            this.b.a(cu3Var, r04Var, iOException, z);
        }
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.b(r04Var);
        }
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        if (a(i, h14Var)) {
            this.b.b(cu3Var, r04Var);
        }
    }
}

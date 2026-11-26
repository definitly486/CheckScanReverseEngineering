package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class li2 {
    public final ji2 a;

    public li2(ji2 ji2Var) {
        this.a = ji2Var;
    }

    public final void a(String str, int i, boolean z) {
        int iC;
        lr4 lr4VarA = jr4.a(str, this.a.a(), this.a.b(), this.a.e(), this.a.d(), this.a.c());
        if (i > 0) {
            iC = lr4VarA.a(i);
        } else if (i >= 0) {
            return;
        } else {
            iC = lr4VarA.c(-i);
        }
        a(iC, z);
    }

    public final void b(String str, int i, boolean z) {
        if (i == 0) {
            return;
        }
        this.a.a(jr4.a(str, this.a.a(), this.a.b(), this.a.e(), this.a.d(), this.a.c()).b(i), g12.PX, z);
    }

    public final void a(int i, boolean z) {
        ji2 ji2Var = this.a;
        if (z) {
            ji2Var.a(i);
        } else {
            ji2Var.b(i);
        }
    }
}

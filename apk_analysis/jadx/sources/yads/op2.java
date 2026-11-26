package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class op2 implements Runnable {
    public final r75 b;
    public final z85 c;
    public final dw d;

    public op2(r75 r75Var, z85 z85Var, dw dwVar) {
        this.b = r75Var;
        this.c = z85Var;
        this.d = dwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x85 x85Var;
        if (this.b.i()) {
            this.b.b("canceled-at-delivery");
            return;
        }
        z85 z85Var = this.c;
        hi6 hi6Var = z85Var.c;
        r75 r75Var = this.b;
        if (hi6Var == null) {
            r75Var.a(z85Var.a);
        } else {
            synchronized (r75Var.f) {
                x85Var = r75Var.g;
            }
            if (x85Var != null) {
                x85Var.a(hi6Var);
            }
        }
        boolean z = this.c.d;
        r75 r75Var2 = this.b;
        if (z) {
            r75Var2.a("intermediate-response");
        } else {
            r75Var2.b("done");
        }
        dw dwVar = this.d;
        if (dwVar != null) {
            dwVar.run();
        }
    }
}

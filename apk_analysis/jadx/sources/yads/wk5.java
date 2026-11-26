package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wk5 extends rt5 {
    public final /* synthetic */ xk5 f;

    public wk5(xk5 xk5Var) {
        this.f = xk5Var;
    }

    @Override // yads.rt5
    public final void b() {
        xk5 xk5Var = this.f;
        synchronized (xk5Var.b) {
            this.b = 0;
            this.d = null;
            rt5[] rt5VarArr = xk5Var.f;
            int i = xk5Var.h;
            xk5Var.h = i + 1;
            rt5VarArr[i] = this;
            xk5Var.d();
        }
    }
}

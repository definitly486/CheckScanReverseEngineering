package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vc3 implements Runnable {
    public final /* synthetic */ zc3 b;

    public vc3(zc3 zc3Var) {
        this.b = zc3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (wc3 wc3Var : this.b.e.values()) {
            for (xc3 xc3Var : wc3Var.d) {
                yc3 yc3Var = xc3Var.b;
                if (yc3Var != null) {
                    hi6 hi6Var = wc3Var.c;
                    if (hi6Var == null) {
                        xc3Var.a = wc3Var.b;
                        yc3Var.a(xc3Var, false);
                    } else {
                        yc3Var.a(hi6Var);
                    }
                }
            }
        }
        this.b.e.clear();
        this.b.g = null;
    }
}

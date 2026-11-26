package yads;

import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class wi4 extends defpackage.qm3 implements ll3 {
    public wi4(xi4 xi4Var) {
        super(0, xi4Var, xi4.class, "stopCountdownTimer", "stopCountdownTimer()V", 0);
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        xi4 xi4Var = (xi4) this.receiver;
        z95 z95Var = xi4Var.e;
        if (z95Var != null) {
            z95Var.c.a();
        }
        xi4Var.e = null;
        return j59.a;
    }
}

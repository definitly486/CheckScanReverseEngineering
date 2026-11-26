package yads;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class px5 extends defpackage.qm3 implements nl3 {
    public px5(sx5 sx5Var) {
        super(1, sx5Var, sx5.class, "updateTimerVariable", "updateTimerVariable(J)V", 0);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        vq0 vq0Var;
        long jLongValue = ((Number) obj).longValue();
        sx5 sx5Var = (sx5) this.receiver;
        String str = sx5Var.f;
        if (str != null && (vq0Var = sx5Var.e) != null) {
            l76.a(vq0Var, str, String.valueOf(jLongValue), vq0.a(vq0Var.z));
        }
        return j59.a;
    }
}

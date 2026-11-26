package defpackage;

import androidx.lifecycle.LifecycleOwnerKt;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vj1 extends qm3 implements bm3<k69, ll3<? extends j59>, j59> {
    @Override // defpackage.bm3
    public final j59 invoke(k69 k69Var, ll3<? extends j59> ll3Var) {
        k69 k69Var2 = k69Var;
        ll3<? extends j59> ll3Var2 = ll3Var;
        k69Var2.getClass();
        ll3Var2.getClass();
        CiceroneActivity ciceroneActivity = (CiceroneActivity) this.receiver;
        int i = CiceroneActivity.s;
        s68 s68Var = ciceroneActivity.m;
        if (s68Var == null || !s68Var.isActive()) {
            ciceroneActivity.m = av0.c(LifecycleOwnerKt.getLifecycleScope(ciceroneActivity), null, null, new tj1(ciceroneActivity, k69Var2, ll3Var2, null), 3);
        }
        return j59.a;
    }
}

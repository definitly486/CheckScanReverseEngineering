package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ma1 implements oa1 {
    public final oa1[] b;

    public ma1(oa1... oa1VarArr) {
        this.b = oa1VarArr;
    }

    @Override // yads.oa1
    public final View a(ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var) {
        oa1 oa1Var;
        View viewA;
        oa1[] oa1VarArr = this.b;
        int length = oa1VarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                oa1Var = null;
                break;
            }
            oa1Var = oa1VarArr[i];
            if (oa1Var.a(ka1Var.j)) {
                break;
            }
            i++;
        }
        return (oa1Var == null || (viewA = oa1Var.a(ka1Var, vq0Var, fs2Var, n32Var)) == null) ? new View(vq0Var.l) : viewA;
    }

    @Override // yads.oa1
    public final boolean a(String str) {
        for (oa1 oa1Var : this.b) {
            if (oa1Var.a(str)) {
                return true;
            }
        }
        return false;
    }
}

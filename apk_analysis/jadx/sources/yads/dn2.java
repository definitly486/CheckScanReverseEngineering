package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class dn2 implements wx3 {
    public final vx3 a = new vx3();

    @Override // yads.wx3
    public final vx3 a(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 1073741824);
        vx3 vx3Var = this.a;
        vx3Var.a = iMakeMeasureSpec;
        vx3Var.b = iMakeMeasureSpec;
        return vx3Var;
    }
}

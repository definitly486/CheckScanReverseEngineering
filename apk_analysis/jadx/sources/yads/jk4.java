package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class jk4 implements m15 {
    public final /* synthetic */ kk4 a;

    public jk4(kk4 kk4Var) {
        this.a = kk4Var;
    }

    @Override // yads.m15
    public final void a(long j, long j2) {
        kk4 kk4Var = this.a;
        View view = kk4Var.c;
        if (view != null) {
            kk4Var.a.a(view, j, j2);
        }
    }

    @Override // yads.m15
    public final void a() {
        View view = this.a.c;
        if (view == null) {
            return;
        }
        view.setVisibility(8);
    }
}

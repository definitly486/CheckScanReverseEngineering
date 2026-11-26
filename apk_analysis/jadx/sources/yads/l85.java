package yads;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class l85 implements on0 {
    public final x2 a;
    public final int b;

    public l85(x2 x2Var, int i) {
        this.a = x2Var;
        this.b = i;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        int i = this.b;
        x2 x2Var = this.a;
        if (i == 1) {
            x2Var.a(7);
        } else {
            x2Var.a(6);
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}

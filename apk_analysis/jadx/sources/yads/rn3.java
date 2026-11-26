package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class rn3 implements qn3 {
    public final yn a;

    public rn3(yn ynVar) {
        this.a = ynVar;
    }

    @Override // yads.qn3
    public final void a(Context context, pn3 pn3Var) {
    }

    @Override // yads.qn3
    public final void onAttachedToWindow() {
        int i = ya.b;
        if (ya.a(this.a)) {
            return;
        }
        this.a.i();
    }

    @Override // yads.qn3
    public final void onDetachedFromWindow() {
        int i = ya.b;
        if (ya.a(this.a)) {
            return;
        }
        this.a.k();
    }
}

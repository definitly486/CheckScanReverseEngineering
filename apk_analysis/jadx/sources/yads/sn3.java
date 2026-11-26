package yads;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes6.dex */
public final class sn3 implements qn3 {
    @Override // yads.qn3
    public final void a(Context context, pn3 pn3Var) {
        pn3Var.setVisibility(0);
        pn3Var.setMinimumHeight(defpackage.w65.b(TypedValue.applyDimension(1, 50.0f, context.getResources().getDisplayMetrics())));
    }

    @Override // yads.qn3
    public final void onAttachedToWindow() {
    }

    @Override // yads.qn3
    public final void onDetachedFromWindow() {
    }
}

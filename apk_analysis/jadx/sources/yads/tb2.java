package yads;

import androidx.activity.OnBackPressedCallback;

/* JADX INFO: loaded from: classes6.dex */
public final class tb2 extends OnBackPressedCallback {
    public final /* synthetic */ xb2 a;
    public final /* synthetic */ qb2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tb2(xb2 xb2Var, qb2 qb2Var, vq0 vq0Var) {
        super(true);
        this.a = xb2Var;
        this.b = qb2Var;
    }

    @Override // androidx.activity.OnBackPressedCallback
    public final void handleOnBackPressed() {
        this.a.a(this.b.g);
    }
}

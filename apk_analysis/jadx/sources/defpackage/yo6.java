package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class yo6 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ zo6 f;
    public final /* synthetic */ vj9.a g;
    public final /* synthetic */ vj9 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yo6(zo6 zo6Var, vj9.a aVar, vj9 vj9Var) {
        super(1);
        this.f = zo6Var;
        this.g = aVar;
        this.h = vj9Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onWithdrawClicked(this.g.b, this.h.f);
        return j59.a;
    }
}

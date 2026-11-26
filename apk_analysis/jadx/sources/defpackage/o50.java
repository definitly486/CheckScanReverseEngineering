package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class o50 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ n50 f;
    public final /* synthetic */ uj9.a g;
    public final /* synthetic */ uj9 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o50(n50 n50Var, uj9.a aVar, uj9 uj9Var) {
        super(1);
        this.f = n50Var;
        this.g = aVar;
        this.h = uj9Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onWithdrawClicked(this.g.b, this.h.f);
        return j59.a;
    }
}

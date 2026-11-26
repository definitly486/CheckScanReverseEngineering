package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class ew7 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ dw7 f;
    public final /* synthetic */ dn1 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ew7(dw7 dw7Var, dn1 dn1Var) {
        super(1);
        this.f = dw7Var;
        this.g = dn1Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onOrdClick(this.g.e);
        return j59.a;
    }
}

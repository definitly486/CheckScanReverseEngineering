package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class yh4 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ ai4 f;
    public final /* synthetic */ ej4 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yh4(ai4 ai4Var, ej4 ej4Var) {
        super(1);
        this.f = ai4Var;
        this.g = ej4Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onLinkClicked(this.g.c);
        return j59.a;
    }
}

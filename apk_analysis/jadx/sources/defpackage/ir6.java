package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class ir6 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ jr6 f;
    public final /* synthetic */ gr6 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ir6(jr6 jr6Var, gr6 gr6Var) {
        super(1);
        this.f = jr6Var;
        this.g = gr6Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.invoke(Long.valueOf(this.g.a));
        return j59.a;
    }
}

package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class h56 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ i56 f;
    public final /* synthetic */ j56 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h56(i56 i56Var, j56 j56Var) {
        super(1);
        this.f = i56Var;
        this.g = j56Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onChipClicked(this.g);
        return j59.a;
    }
}

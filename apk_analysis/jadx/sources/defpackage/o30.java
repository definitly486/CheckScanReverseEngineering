package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class o30 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ r30 f;
    public final /* synthetic */ n30 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o30(r30 r30Var, n30 n30Var) {
        super(1);
        this.f = r30Var;
        this.g = n30Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        String str = this.f.c;
        if (str != null) {
            this.g.b.onHidableBannerClicked(str);
        }
        return j59.a;
    }
}

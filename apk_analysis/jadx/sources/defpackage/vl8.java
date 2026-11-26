package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class vl8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ tl8 f;
    public final /* synthetic */ zl8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vl8(tl8 tl8Var, zl8 zl8Var) {
        super(1);
        this.f = tl8Var;
        this.g = zl8Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onBannerOrdClicked(this.g.d);
        return j59.a;
    }
}

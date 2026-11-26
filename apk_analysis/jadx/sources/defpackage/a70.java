package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class a70 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ il2 g;
    public final /* synthetic */ pz3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a70(il2 il2Var, pz3 pz3Var, int i) {
        super(1);
        this.f = i;
        this.g = il2Var;
        this.h = pz3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        pz3 pz3Var = this.h;
        il2 il2Var = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((z60) il2Var).b.onSubscriptionBannerClicked(((ec8) pz3Var).f);
                break;
            default:
                ((View) obj).getClass();
                rh9 rh9Var = (rh9) pz3Var;
                ((qh9) il2Var).c.onBonusPointsClaimClicked(rh9Var.a, rh9Var.g);
                break;
        }
        return j59.a;
    }
}

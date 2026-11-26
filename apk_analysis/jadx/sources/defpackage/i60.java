package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class i60 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ pz3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i60(vd9 vd9Var, pz3 pz3Var, int i) {
        super(1);
        this.f = i;
        this.g = vd9Var;
        this.h = pz3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        pz3 pz3Var = this.h;
        vd9 vd9Var = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((k60) vd9Var).b.onPromoBannerHideClicked(((b70) pz3Var).a);
                break;
            case 1:
                ((View) obj).getClass();
                ((ob1) vd9Var).b.onClaimClicked(((pb1) pz3Var).d);
                break;
            default:
                ((View) obj).getClass();
                ((rd5) vd9Var).b.onSelectionClicked(((pd5) pz3Var).a);
                break;
        }
        return j59.a;
    }
}

package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class fi4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ pz3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fi4(vd9 vd9Var, pz3 pz3Var, int i) {
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
                ((gi4) vd9Var).b.onCheckBoxClick(((hi4) pz3Var).c);
                break;
            default:
                ((View) obj).getClass();
                ((jm6) vd9Var).b.onPrivatePolicyClicked(((km6) pz3Var).b);
                break;
        }
        return j59.a;
    }
}

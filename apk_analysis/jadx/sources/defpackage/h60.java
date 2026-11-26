package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class h60 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ pz3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h60(vd9 vd9Var, pz3 pz3Var, int i) {
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
                b70 b70Var = (b70) pz3Var;
                ((k60) vd9Var).b.onPromoBannerClicked(b70Var.a, b70Var.c);
                break;
            default:
                ((View) obj).getClass();
                mb1 mb1Var = (mb1) pz3Var;
                ((lb1) vd9Var).b.onButtonStepTaskClicked(mb1Var.c, mb1Var.b.d);
                break;
        }
        return j59.a;
    }
}

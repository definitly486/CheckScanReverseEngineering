package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class ag5 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ pz3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ag5(vd9 vd9Var, pz3 pz3Var, int i) {
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
                ((zf5) vd9Var).b.onSubTaskClicked(((bg5) pz3Var).a);
                break;
            default:
                ((View) obj).getClass();
                kz7 kz7Var = (kz7) pz3Var;
                ((am8) vd9Var).b.onTaskClicked(kz7Var.a, kz7Var.j, kz7Var.l);
                break;
        }
        return j59.a;
    }
}

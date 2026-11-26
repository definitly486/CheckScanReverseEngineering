package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class bx3 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bx3(vd9 vd9Var, Object obj, int i) {
        super(1);
        this.f = i;
        this.g = vd9Var;
        this.h = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        vd9 vd9Var = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                yw3 yw3Var = (yw3) obj2;
                ((zw3) vd9Var).c.invoke(yw3Var.l, yw3Var.j);
                break;
            default:
                ((View) obj).getClass();
                ((tj9) vd9Var).b.onWithdrawClicked(((uj9.a) obj2).b, null);
                break;
        }
        return j59.a;
    }
}

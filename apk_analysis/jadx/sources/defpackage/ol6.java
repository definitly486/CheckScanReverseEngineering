package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class ol6 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ol6(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((nl6) obj2).b.onShareCode();
                return j59.a;
            default:
                bz8 bz8Var = (bz8) obj;
                bz8Var.getClass();
                ((nz8) obj2).getClass();
                return new az8(bz8Var.e(), bz8Var.d(), bz8Var.g(), bz8Var.c(), bz8Var.b(), bz8Var.a(), bz8Var.f());
        }
    }
}

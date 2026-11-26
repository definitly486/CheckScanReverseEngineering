package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class ab1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ab1(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((za1) obj3).b.onCheckboxClicked((gc1) obj2);
                return j59.a;
            default:
                oz6 oz6Var = (oz6) obj;
                oz6Var.getClass();
                return ((uv2) obj3).a.c(oz6Var, "Bearer ".concat((String) obj2)).g(ne7.b);
        }
    }
}

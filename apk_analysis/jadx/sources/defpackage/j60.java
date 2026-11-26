package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class j60 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j60(vd9 vd9Var, Object obj, int i) {
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
                ((k60) vd9Var).b.onPromoBannerOrdClicked((b06) obj2);
                break;
            case 1:
                ((View) obj).getClass();
                sb1 sb1Var = (sb1) obj2;
                ((rb1) vd9Var).c.onCheckboxButtonClicked(sb1Var.b, sb1Var.e.e);
                break;
            default:
                ((View) obj).getClass();
                ((fl6) vd9Var).b.onAddEmailClicked(((hl6) obj2).h.e);
                break;
        }
        return j59.a;
    }
}

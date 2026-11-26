package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class qo0 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qo0(vd9 vd9Var, Object obj, int i) {
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
                ((po0) vd9Var).b.onHidePromoBanner(((to0) obj2).a.a);
                break;
            case 1:
                ((View) obj).getClass();
                ((vo5) vd9Var).b.onNotificationCardClicked(false, (String) obj2);
                break;
            case 2:
                ((View) obj).getClass();
                ((li6) vd9Var).b.onCollapseShops(!((ni6) obj2).b);
                break;
            case 3:
                ((View) obj).getClass();
                ((up6) vd9Var).b.onSelectionClicked(((vp6) obj2).a);
                break;
            default:
                ((View) obj).getClass();
                ((k58) vd9Var).b.onSpecialAdClicked((b06) obj2);
                break;
        }
        return j59.a;
    }
}

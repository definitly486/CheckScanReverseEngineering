package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvBalanceImageBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class t30 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t30(vd9 vd9Var, Object obj, int i) {
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
                ((u30) vd9Var).b.onBannerClick(((ItemRvBalanceImageBinding) obj2).getRoot().getTag().toString());
                break;
            case 1:
                ((View) obj).getClass();
                ((vo5) vd9Var).b.onNotificationOrdClicked(((cp5) obj2).i);
                break;
            default:
                ((View) obj).getClass();
                ((k58) vd9Var).b.onSpecialClicked(((mc0) obj2).a);
                break;
        }
        return j59.a;
    }
}

package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvBalanceNestedImageBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class v50 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v50(vd9 vd9Var, Object obj, int i) {
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
                ((w50) vd9Var).b.onBannerClick(((ItemRvBalanceNestedImageBinding) obj2).getRoot().getTag().toString());
                break;
            default:
                ((View) obj).getClass();
                jv1 jv1Var = (jv1) obj2;
                ((iv1) vd9Var).b.onConditionsClicked(jv1Var.a, jv1Var.b);
                break;
        }
        return j59.a;
    }
}

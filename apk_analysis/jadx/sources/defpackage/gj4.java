package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvLandingOrdBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class gj4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gj4(int i, Object obj, Object obj2) {
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
                LandingPresenter landingPresenter = ((hj4) obj3).b;
                Object tag = ((ItemRvLandingOrdBinding) obj2).getRoot().getTag();
                tag.getClass();
                landingPresenter.onOrdClick((String) tag);
                break;
            default:
                s59 s59Var = (s59) obj3;
                s59Var.f(new c69(s59Var, (c31) obj2, ((Boolean) obj).booleanValue()));
                break;
        }
        return j59.a;
    }
}

package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import com.warefly.checkscan.subscription.databinding.ItemActivatedSubscriptionBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class c7 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c7(vd9 vd9Var, Object obj, int i) {
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
                BonusesMainNewPresenter bonusesMainNewPresenter = ((b7) vd9Var).b;
                Object tag = ((ItemActivatedSubscriptionBannerBinding) obj2).getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onActiveSubscriptionBannerClicked((String) tag);
                break;
            default:
                ((View) obj).getClass();
                gr6 gr6Var = (gr6) obj2;
                ((jr6) vd9Var).c.invoke(Long.valueOf(gr6Var.a), Boolean.valueOf(!gr6Var.c));
                break;
        }
        return j59.a;
    }
}

package defpackage;

import android.view.View;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class t32 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t32(fz7 fz7Var, ez7 ez7Var) {
        super(1);
        this.f = 2;
        this.g = fz7Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((CouponNewFragment) obj2).o().onGoToAllOperationsClicked();
                break;
            case 1:
                ((View) obj).getClass();
                ((QueueFragment) obj2).n().showSortDialog();
                break;
            default:
                ((View) obj).getClass();
                ((fz7) obj2).i.invoke(0, null);
                break;
        }
        return j59.a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t32(BaseFragment baseFragment, int i) {
        super(1);
        this.f = i;
        this.g = baseFragment;
    }
}

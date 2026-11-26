package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvBalanceWithdrawAnonBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class m70 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m70(int i, Object obj, Object obj2) {
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
                BalancePresenter balancePresenter = ((n70) obj3).b;
                Object tag = ((ItemRvBalanceWithdrawAnonBinding) obj2).getRoot().getTag();
                tag.getClass();
                balancePresenter.onWithdrawClick((p70) tag);
                return j59.a;
            default:
                Long l = (Long) obj;
                l.getClass();
                yg1 yg1Var = (yg1) obj3;
                long jLongValue = l.longValue();
                hv6 hv6Var = (hv6) obj2;
                return yg1Var.e(jLongValue, hv6Var, new vg1(yg1Var, jLongValue, hv6Var));
        }
    }
}

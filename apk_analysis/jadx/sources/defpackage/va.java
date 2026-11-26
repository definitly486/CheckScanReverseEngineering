package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvBalanceCardTextWithButtonsBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class va extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ va(vd9 vd9Var, Object obj, int i) {
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
                xa xaVar = (xa) obj2;
                ((ta) vd9Var).b.onAdvanceSelectCardClicked(xaVar.a, xaVar.i.b);
                break;
            default:
                ((View) obj).getClass();
                BalancePresenter balancePresenter = ((e20) vd9Var).b;
                Object tag = ((ItemRvBalanceCardTextWithButtonsBinding) obj2).btnTop.getTag();
                tag.getClass();
                balancePresenter.onButtonClick((o10) tag);
                break;
        }
        return j59.a;
    }
}

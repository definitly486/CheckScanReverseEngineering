package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvBalanceWithdrawMethodBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class s70 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ t70 f;
    public final /* synthetic */ ItemRvBalanceWithdrawMethodBinding g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s70(t70 t70Var, ItemRvBalanceWithdrawMethodBinding itemRvBalanceWithdrawMethodBinding) {
        super(1);
        this.f = t70Var;
        this.g = itemRvBalanceWithdrawMethodBinding;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        BalancePresenter balancePresenter = this.f.b;
        Object tag = this.g.getRoot().getTag();
        tag.getClass();
        balancePresenter.onWithdrawClick((p70) tag);
        return j59.a;
    }
}

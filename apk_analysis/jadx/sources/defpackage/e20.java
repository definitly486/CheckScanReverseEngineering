package defpackage;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceCardTextWithButtonsBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class e20 extends vd9<c20, ItemRvBalanceCardTextWithButtonsBinding> {
    public final BalancePresenter b;

    public e20(BalancePresenter balancePresenter) {
        super(d20.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof c20;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, c20 c20Var) {
        ItemRvBalanceCardTextWithButtonsBinding itemRvBalanceCardTextWithButtonsBinding = (ItemRvBalanceCardTextWithButtonsBinding) viewBinding;
        c20 c20Var2 = c20Var;
        itemRvBalanceCardTextWithButtonsBinding.getClass();
        String str = c20Var2.d;
        String str2 = c20Var2.c;
        itemRvBalanceCardTextWithButtonsBinding.tvTitle.setText(c20Var2.a);
        AppCompatTextView appCompatTextView = itemRvBalanceCardTextWithButtonsBinding.tvDescription;
        String str3 = c20Var2.b;
        appCompatTextView.setText(str3);
        AppCompatTextView appCompatTextView2 = itemRvBalanceCardTextWithButtonsBinding.tvDescription;
        appCompatTextView2.getClass();
        appCompatTextView2.setVisibility(!ta8.M(str3) ? 0 : 8);
        AppCompatTextView appCompatTextView3 = itemRvBalanceCardTextWithButtonsBinding.btnTop;
        appCompatTextView3.getClass();
        appCompatTextView3.setVisibility(!ta8.M(str2) ? 0 : 8);
        appCompatTextView3.setText(str2);
        appCompatTextView3.setTag(c20Var2.e);
        AppCompatTextView appCompatTextView4 = itemRvBalanceCardTextWithButtonsBinding.btnBottom;
        appCompatTextView4.getClass();
        appCompatTextView4.setVisibility(ta8.M(str) ? 8 : 0);
        appCompatTextView4.setText(str);
        appCompatTextView4.setTag(c20Var2.f);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceCardTextWithButtonsBinding itemRvBalanceCardTextWithButtonsBinding = (ItemRvBalanceCardTextWithButtonsBinding) viewBinding;
        itemRvBalanceCardTextWithButtonsBinding.getClass();
        ConstraintLayout root = itemRvBalanceCardTextWithButtonsBinding.getRoot();
        root.getClass();
        le9.c(16, root);
        AppCompatTextView appCompatTextView = itemRvBalanceCardTextWithButtonsBinding.btnTop;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new va(this, itemRvBalanceCardTextWithButtonsBinding, 1)));
        AppCompatTextView appCompatTextView2 = itemRvBalanceCardTextWithButtonsBinding.btnBottom;
        appCompatTextView2.getClass();
        appCompatTextView2.setOnClickListener(new lb7(new wa(1, this, itemRvBalanceCardTextWithButtonsBinding)));
    }
}

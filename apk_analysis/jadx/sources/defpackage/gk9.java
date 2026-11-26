package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalHeaderLogoBannersBinding;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.presenter.WithdrawalMethodsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class gk9 extends vd9<oj9, ItemWithdrawalHeaderLogoBannersBinding> {
    public final WithdrawalMethodsPresenter b;

    public final class a extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.top = pl2.e(16);
        }
    }

    public gk9(WithdrawalMethodsPresenter withdrawalMethodsPresenter) {
        super(fk9.c);
        this.b = withdrawalMethodsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof oj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, oj9 oj9Var) {
        ItemWithdrawalHeaderLogoBannersBinding itemWithdrawalHeaderLogoBannersBinding = (ItemWithdrawalHeaderLogoBannersBinding) viewBinding;
        oj9 oj9Var2 = oj9Var;
        itemWithdrawalHeaderLogoBannersBinding.getClass();
        RecyclerView.Adapter adapter = itemWithdrawalHeaderLogoBannersBinding.rvBanners.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(oj9Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalHeaderLogoBannersBinding itemWithdrawalHeaderLogoBannersBinding = (ItemWithdrawalHeaderLogoBannersBinding) viewBinding;
        itemWithdrawalHeaderLogoBannersBinding.getClass();
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.setAdapter(new eu1(new mj9(true, this.b)));
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.setLayoutManager(new LinearLayoutManager(itemWithdrawalHeaderLogoBannersBinding.getRoot().getContext(), 1, false));
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.addItemDecoration(new a());
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.setNestedScrollingEnabled(false);
    }
}

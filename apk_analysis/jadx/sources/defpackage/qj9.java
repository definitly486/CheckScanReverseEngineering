package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalHeaderLogoBannersBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class qj9 extends vd9<oj9, ItemWithdrawalHeaderLogoBannersBinding> {
    public final BalancePresenter b;

    public final class a extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
            Integer numValueOf = eu1Var != null ? Integer.valueOf(eu1Var.getItemCount() - 1) : null;
            if (childAdapterPosition == 0) {
                rect.left = pl2.e(16);
            } else if (numValueOf == null || childAdapterPosition != numValueOf.intValue()) {
                rect.left = pl2.e(8);
            } else {
                rect.left = pl2.e(8);
                rect.right = pl2.e(16);
            }
        }
    }

    public qj9(BalancePresenter balancePresenter) {
        super(pj9.c);
        this.b = balancePresenter;
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
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.setAdapter(new eu1(new mj9(false, this.b)));
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.setLayoutManager(new LinearLayoutManager(itemWithdrawalHeaderLogoBannersBinding.getRoot().getContext(), 0, false));
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.addItemDecoration(new a());
        itemWithdrawalHeaderLogoBannersBinding.rvBanners.setNestedScrollingEnabled(true);
    }
}

package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceWithdrawMethodsBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class x70 extends vd9<v70, ItemRvBalanceWithdrawMethodsBinding> {
    public final BalancePresenter b;

    public final class a extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            m8 m8Var;
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            pz3 pz3VarF = null;
            eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
            if (eu1Var != null && (m8Var = eu1Var.i) != null) {
                pz3VarF = m8Var.f(childAdapterPosition);
            }
            if (!(pz3VarF instanceof nj9) && !(pz3VarF instanceof oj9)) {
                rect.right = pl2.e(16);
                rect.left = pl2.e(16);
            }
            if (childAdapterPosition != 0) {
                rect.bottom = pl2.e(16);
            } else {
                rect.top = pl2.e(16);
                rect.bottom = pl2.e(16);
            }
        }
    }

    public x70(BalancePresenter balancePresenter) {
        super(w70.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof v70;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, v70 v70Var) {
        ItemRvBalanceWithdrawMethodsBinding itemRvBalanceWithdrawMethodsBinding = (ItemRvBalanceWithdrawMethodsBinding) viewBinding;
        v70 v70Var2 = v70Var;
        itemRvBalanceWithdrawMethodsBinding.getClass();
        RecyclerView.Adapter adapter = itemRvBalanceWithdrawMethodsBinding.rvMethods.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(v70Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceWithdrawMethodsBinding itemRvBalanceWithdrawMethodsBinding = (ItemRvBalanceWithdrawMethodsBinding) viewBinding;
        itemRvBalanceWithdrawMethodsBinding.getClass();
        RecyclerView recyclerView = itemRvBalanceWithdrawMethodsBinding.rvMethods;
        kp6 kp6Var = new kp6(cj9.c, 1);
        BalancePresenter balancePresenter = this.b;
        recyclerView.setAdapter(new eu1(kp6Var, new yi9(balancePresenter), new ak9(balancePresenter), new dk9(), new kj9(balancePresenter), new tj9(balancePresenter), new ij9(balancePresenter), new qj9(balancePresenter), new mj9(true, balancePresenter), new mj9(true, balancePresenter), new xj9(balancePresenter)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvBalanceWithdrawMethodsBinding.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new a());
    }
}

package com.warefly.checkscan.presentation.balance.withdrawalMethods.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.FragmentWithdrawalMethodsBinding;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.presenter.WithdrawalMethodsPresenter;
import defpackage.aa4;
import defpackage.ak9;
import defpackage.b40;
import defpackage.bs6;
import defpackage.dk9;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.gk9;
import defpackage.hk9;
import defpackage.ij9;
import defpackage.iw2;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kj9;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mj9;
import defpackage.mk1;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.sj9;
import defpackage.tj9;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class WithdrawalMethodsFragment extends WithdrawalFragment<FragmentWithdrawalMethodsBinding, WithdrawalMethodsPresenter> implements WithdrawalMethodsView {
    public static final /* synthetic */ ze4<Object>[] q;
    public final int m = R.layout.fragment_withdrawal_methods;
    public final ol4 n = new ol4(FragmentWithdrawalMethodsBinding.class);
    public final String o = "WITHDRAWAL_METHODS_FRAGMENT_TAG";
    public eu1 p;
    public WithdrawalMethodsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            WithdrawalMethodsFragment.this.n().onBackClicked();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(WithdrawalMethodsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;", 0);
        x07.a.getClass();
        q = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.m;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        n().onBackClicked();
        return false;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment
    public final String o() {
        return this.o;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ze4<?>[] ze4VarArr = q;
        ze4<?> ze4Var = ze4VarArr[0];
        ol4 ol4Var = this.n;
        RecyclerView recyclerView = ((FragmentWithdrawalMethodsBinding) ol4Var.getValue(this, ze4Var)).rvContent;
        recyclerView.setItemAnimator(null);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        eu1 eu1Var = new eu1(new ak9(n()), new kj9(n()), new tj9(n()), new ij9(n()), new gk9(n()), new mj9(true, n()), new mj9(true, n()), new dk9());
        this.p = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new sj9(this));
        ImageView imageView = ((FragmentWithdrawalMethodsBinding) ol4Var.getValue(this, ze4VarArr[0])).toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    public final WithdrawalMethodsPresenter providePresenter() {
        return new WithdrawalMethodsPresenter((b40) m2.c(b40.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null), (mk1) m2.c(mk1.class, e.e(this), null, null), (iw2) m2.c(iw2.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final WithdrawalMethodsPresenter n() {
        WithdrawalMethodsPresenter withdrawalMethodsPresenter = this.presenter;
        if (withdrawalMethodsPresenter != null) {
            return withdrawalMethodsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsView
    public final void setToolbarTitle(String str) {
        str.getClass();
        ((FragmentWithdrawalMethodsBinding) this.n.getValue(this, q[0])).toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsView
    public final void showWithdrawalMethods(List<? extends hk9> list) {
        list.getClass();
        eu1 eu1Var = this.p;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}

package com.warefly.checkscan.products.presentation.selections.view;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.products.databinding.FragmentSelectionsBinding;
import com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter;
import defpackage.aa4;
import defpackage.an;
import defpackage.ao7;
import defpackage.bo7;
import defpackage.bs6;
import defpackage.e;
import defpackage.e83;
import defpackage.en7;
import defpackage.eu1;
import defpackage.ew5;
import defpackage.f83;
import defpackage.ie1;
import defpackage.jf6;
import defpackage.kd;
import defpackage.l3;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.ol4;
import defpackage.pz3;
import defpackage.qa3;
import defpackage.r86;
import defpackage.uf3;
import defpackage.up6;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectionsFragment extends BaseFragment<FragmentSelectionsBinding> implements SelectionsView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_selections;
    public final ol4 g = new ol4(FragmentSelectionsBinding.class);
    public eu1 h;
    public SelectionsPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(SelectionsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentSelectionsBinding n() {
        return (FragmentSelectionsBinding) this.g.getValue(this, j[0]);
    }

    public final SelectionsPresenter o() {
        SelectionsPresenter selectionsPresenter = this.presenter;
        if (selectionsPresenter != null) {
            return selectionsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        new kd.p0.a.d("SelectionsOpened").c();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        eu1 eu1Var = new eu1(new an(o()), new qa3(o()), new en7(o()), new up6(o()));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new ao7(this));
        recyclerView.setItemAnimator(null);
        recyclerView.addOnScrollListener(new ew5(recyclerView, 15, new bo7(this)));
        n().incldError.getRoot().setBackgroundColor(-1);
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ie1(this, 2)));
        n().swipeToRefresh.setOnRefreshListener(new l3(this, 5));
    }

    public final SelectionsPresenter providePresenter() {
        e83 e83Var = (e83) m2.c(e83.class, e.e(this), null, null);
        return new SelectionsPresenter((f83) m2.c(f83.class, e.e(this), null, null), e83Var, (jf6) m2.c(jf6.class, e.e(this), null, null), (r86) m2.c(r86.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), h(), null));
    }

    @Override // com.warefly.checkscan.products.presentation.selections.view.SelectionsView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.products.presentation.selections.view.SelectionsView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.selections.view.SelectionsView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.selections.view.SelectionsView
    public final void turnOffRefreshing() {
        n().swipeToRefresh.setRefreshing(false);
    }
}

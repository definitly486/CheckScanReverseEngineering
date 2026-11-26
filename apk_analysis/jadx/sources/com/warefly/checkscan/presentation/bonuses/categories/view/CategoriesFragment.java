package com.warefly.checkscan.presentation.bonuses.categories.view;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentCategoriesBinding;
import com.warefly.checkscan.databinding.LayoutToolbarSimpleTitleBinding;
import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesPresenter;
import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesView;
import defpackage.aa4;
import defpackage.bm0;
import defpackage.bs6;
import defpackage.cs0;
import defpackage.cw5;
import defpackage.e;
import defpackage.e71;
import defpackage.eu1;
import defpackage.f71;
import defpackage.g71;
import defpackage.m2;
import defpackage.n2;
import defpackage.ol4;
import defpackage.uf3;
import defpackage.x07;
import defpackage.yc9;
import defpackage.zc9;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CategoriesFragment extends BaseFragment<FragmentCategoriesBinding> implements CategoriesView {
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_categories;
    public final ol4 g = new ol4(FragmentCategoriesBinding.class);
    public eu1 h;
    public CategoriesPresenter presenter;

    static {
        bs6 bs6Var = new bs6(CategoriesFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentCategoriesBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesView
    public final void hideLoading(boolean z) {
        FrameLayout root = ((FragmentCategoriesBinding) this.g.getValue(this, i[0])).incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 8 : 0);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        CategoriesPresenter categoriesPresenter = this.presenter;
        if (categoriesPresenter != null) {
            categoriesPresenter.onBackPressed();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.h = null;
        super.onDestroyView();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ze4<?>[] ze4VarArr = i;
        ze4<?> ze4Var = ze4VarArr[0];
        ol4 ol4Var = this.g;
        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding = ((FragmentCategoriesBinding) ol4Var.getValue(this, ze4Var)).toolbar;
        layoutToolbarSimpleTitleBinding.tvTitle.setText(getString(R.string.categories_fragment_toolbar_title));
        layoutToolbarSimpleTitleBinding.ivBtnBack.setOnClickListener(new e71(this, 0));
        RecyclerView recyclerView = ((FragmentCategoriesBinding) ol4Var.getValue(this, ze4VarArr[0])).rvCategories;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext(), 1, false);
        recyclerView.addOnScrollListener(new cw5(linearLayoutManager, new f71(this)));
        recyclerView.setLayoutManager(linearLayoutManager);
        g71 g71Var = new g71(this);
        zc9 zc9Var = new zc9(yc9.c);
        zc9Var.b = g71Var;
        eu1 eu1Var = new eu1(zc9Var);
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
    }

    public final CategoriesPresenter providePresenter() {
        return new CategoriesPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (bm0) m2.c(bm0.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesView
    public final void showCategories(List<? extends cs0> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}

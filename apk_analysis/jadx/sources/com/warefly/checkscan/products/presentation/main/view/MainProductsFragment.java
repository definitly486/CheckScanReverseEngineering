package com.warefly.checkscan.products.presentation.main.view;

import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.products.databinding.FragmentMainProductsBinding;
import com.warefly.checkscan.products.presentation.main.presenter.MainProductsPresenter;
import com.warefly.checkscan.products.presentation.products.view.ProductsFragment;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment;
import defpackage.b36;
import defpackage.bs6;
import defpackage.bz4;
import defpackage.cz4;
import defpackage.e;
import defpackage.m2;
import defpackage.ol4;
import defpackage.r86;
import defpackage.x07;
import defpackage.ze4;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class MainProductsFragment extends BaseFragment<FragmentMainProductsBinding> implements MainProductsView {
    public static final a h;
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_main_products;
    public final ol4 g = new ol4(FragmentMainProductsBinding.class);
    public MainProductsPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(MainProductsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
        h = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentMainProductsBinding n() {
        return (FragmentMainProductsBinding) this.g.getValue(this, i[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ArrayList arrayList = new ArrayList();
        Integer numValueOf = Integer.valueOf(R.string.selections_tab_title);
        SelectionsFragment.i.getClass();
        arrayList.add(new b36(numValueOf, new SelectionsFragment()));
        Integer numValueOf2 = Integer.valueOf(R.string.products_tab_title);
        ProductsFragment.i.getClass();
        arrayList.add(new b36(numValueOf2, new ProductsFragment()));
        n().vpProducts.setAdapter(new cz4(arrayList, getChildFragmentManager(), getViewLifecycleOwner().getLifecycle()));
        n().vpProducts.setUserInputEnabled(false);
        FragmentMainProductsBinding fragmentMainProductsBindingN = n();
        new TabLayoutMediator(fragmentMainProductsBindingN.tlProducts, fragmentMainProductsBindingN.vpProducts, new bz4(arrayList, this)).attach();
    }

    public final MainProductsPresenter providePresenter() {
        return new MainProductsPresenter((r86) m2.c(r86.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.products.presentation.main.view.MainProductsView
    public final void showPlaceholder(boolean z) {
        ConstraintLayout root = n().incldPlaceholder.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}

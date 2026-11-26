package com.warefly.checkscan.products.presentation.products.view;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.products.databinding.FragmentProductsBinding;
import com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter;
import defpackage.aa4;
import defpackage.an;
import defpackage.bj6;
import defpackage.bs6;
import defpackage.cj6;
import defpackage.cn;
import defpackage.e;
import defpackage.ew5;
import defpackage.i58;
import defpackage.jf6;
import defpackage.ka3;
import defpackage.kd;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mu4;
import defpackage.n2;
import defpackage.ol4;
import defpackage.p73;
import defpackage.pl2;
import defpackage.pz3;
import defpackage.q73;
import defpackage.qa3;
import defpackage.r86;
import defpackage.sg;
import defpackage.ti6;
import defpackage.uf3;
import defpackage.vo0;
import defpackage.wg6;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductsFragment extends BaseFragment<FragmentProductsBinding> implements ProductsView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_products;
    public final ol4 g = new ol4(FragmentProductsBinding.class);
    public i58 h;
    public ProductsPresenter presenter;

    public static final class a {
    }

    public final class b extends RecyclerView.ItemDecoration {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            i58 i58Var = ProductsFragment.this.h;
            pz3 pz3VarE = i58Var != null ? i58Var.i.e(childAdapterPosition) : null;
            if (pz3VarE instanceof ti6) {
                rect.top = pl2.e(8);
                rect.left = pl2.e(4);
                rect.right = pl2.e(4);
            } else if (pz3VarE instanceof cn) {
                rect.set(pl2.e(4), pl2.e(8), pl2.e(4), pl2.e(16));
            } else if (pz3VarE instanceof ka3) {
                rect.right = pl2.e(4);
                rect.left = pl2.e(4);
            }
        }
    }

    static {
        bs6 bs6Var = new bs6(ProductsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentProductsBinding n() {
        return (FragmentProductsBinding) this.g.getValue(this, j[0]);
    }

    public final ProductsPresenter o() {
        ProductsPresenter productsPresenter = this.presenter;
        if (productsPresenter != null) {
            return productsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        new kd.p0.a.b("GoodsOpened").c();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 2);
        gridLayoutManager.setSpanSizeLookup(new cj6(this));
        recyclerView.setLayoutManager(gridLayoutManager);
        i58 i58Var = new i58(new an(o()), new qa3(o()), new wg6(o()));
        this.h = i58Var;
        recyclerView.setAdapter(i58Var);
        recyclerView.setItemAnimator(null);
        recyclerView.addOnScrollListener(new ew5(recyclerView, 15, new bj6(this)));
        n().incldError.getRoot().setBackgroundColor(-1);
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new mu4(this, 1)));
        n().swipeToRefresh.setOnRefreshListener(new vo0(this));
    }

    public final ProductsPresenter providePresenter() {
        return new ProductsPresenter((q73) m2.c(q73.class, e.e(this), null, null), (p73) m2.c(p73.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (r86) m2.c(r86.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), h(), null));
    }

    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        i58 i58Var = this.h;
        if (i58Var != null) {
            i58Var.submitList(list);
        }
        RecyclerView recyclerView = n().rvContent;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        recyclerView.addItemDecoration(new b(), 0);
    }

    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public final void turnOffRefreshing() {
        n().swipeToRefresh.setRefreshing(false);
    }
}

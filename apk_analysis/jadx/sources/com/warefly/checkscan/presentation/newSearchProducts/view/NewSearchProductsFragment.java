package com.warefly.checkscan.presentation.newSearchProducts.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.warefly.checkscan.CheckScanApplication;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentNewSearchProductsBinding;
import com.warefly.checkscan.presentation.newSearchProducts.presenter.NewSearchProductPresenter;
import com.warefly.checkscan.ui.SearchBar;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c21;
import defpackage.dv3;
import defpackage.e;
import defpackage.eu1;
import defpackage.fn5;
import defpackage.gh4;
import defpackage.i16;
import defpackage.id1;
import defpackage.in5;
import defpackage.j59;
import defpackage.jn5;
import defpackage.kn1;
import defpackage.kn5;
import defpackage.la8;
import defpackage.lb7;
import defpackage.li1;
import defpackage.ln5;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oa;
import defpackage.ol4;
import defpackage.p61;
import defpackage.pl2;
import defpackage.uf3;
import defpackage.vi6;
import defpackage.x07;
import defpackage.xd1;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class NewSearchProductsFragment extends BaseFragment<FragmentNewSearchProductsBinding> implements NewSearchProductsView {
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_new_search_products;
    public final ol4 g = new ol4(FragmentNewSearchProductsBinding.class);
    public SearchBar h;
    public eu1 i;
    public eu1 j;
    public eu1 k;
    public NewSearchProductPresenter presenter;

    public static final class a implements SearchBar.c {
        public final /* synthetic */ SearchBar b;

        public a(SearchBar searchBar) {
            this.b = searchBar;
        }

        @Override // com.warefly.checkscan.ui.SearchBar.c
        public final void a() {
            NewSearchProductPresenter newSearchProductPresenterO = NewSearchProductsFragment.this.o();
            CharSequence querySequence = this.b.getQuerySequence();
            String string = querySequence != null ? querySequence.toString() : null;
            if (string == null) {
                string = "";
            }
            newSearchProductPresenterO.searchItem(string);
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            NewSearchProductsFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(NewSearchProductsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void allProductInChequeLoaded() {
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void hidePopularCategory() {
        RecyclerView recyclerView = n().rvChips;
        recyclerView.getClass();
        recyclerView.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void hideProducts() {
        FragmentNewSearchProductsBinding fragmentNewSearchProductsBindingN = n();
        fragmentNewSearchProductsBindingN.tvHeaderProductInCheque.setVisibility(8);
        fragmentNewSearchProductsBindingN.rvProducts.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void hideShops() {
        FragmentNewSearchProductsBinding fragmentNewSearchProductsBindingN = n();
        fragmentNewSearchProductsBindingN.tvHeaderShopInCheque.setVisibility(8);
        fragmentNewSearchProductsBindingN.rvShops.setVisibility(8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentNewSearchProductsBinding n() {
        return (FragmentNewSearchProductsBinding) this.g.getValue(this, l[0]);
    }

    public final NewSearchProductPresenter o() {
        NewSearchProductPresenter newSearchProductPresenter = this.presenter;
        if (newSearchProductPresenter != null) {
            return newSearchProductPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        SearchBar searchBar = this.h;
        if (searchBar != null) {
            searchBar.setOnQueryTextChangedListener(null);
            searchBar.setQuerySequence("", false);
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentNewSearchProductsBinding fragmentNewSearchProductsBindingN = n();
        SearchBar searchBar = fragmentNewSearchProductsBindingN.toolbarSearch.searchBar;
        this.h = searchBar;
        if (searchBar != null) {
            searchBar.setOnQueryTextChangedListener(new a(searchBar));
            Context context = CheckScanApplication.c;
            searchBar.setQueryHint(CheckScanApplication.a.a().getString(R.string.search_product_search_hint));
        }
        TextView textView = fragmentNewSearchProductsBindingN.toolbarSearch.btnCancel;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(requireContext());
        flexboxLayoutManager.B(0);
        flexboxLayoutManager.D(0);
        RecyclerView recyclerView = n().rvChips;
        recyclerView.setLayoutManager(flexboxLayoutManager);
        eu1 eu1Var = new eu1(new li1(new oa(this, 1)));
        this.k = eu1Var;
        recyclerView.setAdapter(eu1Var);
        RecyclerView recyclerView2 = n().rvProducts;
        eu1 eu1Var2 = new eu1(new dv3(), new vi6(new in5(1, o(), NewSearchProductPresenter.class, "onProductInChequeClick", "onProductInChequeClick(I)V", 0)), new id1(new jn5(1, o(), NewSearchProductPresenter.class, "onChequeClick", "onChequeClick(I)V", 0)));
        this.i = eu1Var2;
        recyclerView2.setAdapter(eu1Var2);
        recyclerView2.addItemDecoration(new i16(pl2.o(10)));
        RecyclerView recyclerView3 = n().rvShops;
        eu1 eu1Var3 = new eu1(new dv3(), new vi6(new kn5(1, o(), NewSearchProductPresenter.class, "onProductInChequeClick", "onProductInChequeClick(I)V", 0)), new id1(new ln5(1, o(), NewSearchProductPresenter.class, "onChequeClick", "onChequeClick(I)V", 0)));
        this.j = eu1Var3;
        recyclerView3.setAdapter(eu1Var3);
        recyclerView3.addItemDecoration(new i16(pl2.o(10)));
        fragmentNewSearchProductsBindingN.smartNested.setOnScrollChangeListener(new c21(this, 2));
    }

    public final NewSearchProductPresenter providePresenter() {
        return new NewSearchProductPresenter((p61) m2.c(p61.class, e.e(this), null, null), (xd1) m2.c(xd1.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void setItemFromChip(String str) {
        str.getClass();
        SearchBar searchBar = this.h;
        if (searchBar != null) {
            searchBar.setQuerySequence(str, true);
        }
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void showChips(List<String> list) {
        list.getClass();
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            List<String> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new la8((String) it.next()));
            }
            eu1Var.submitList(arrayList);
        }
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void showLoading(boolean z) {
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void showProducts(List<? extends fn5> list) {
        list.getClass();
        FragmentNewSearchProductsBinding fragmentNewSearchProductsBindingN = n();
        fragmentNewSearchProductsBindingN.rvChips.setVisibility(8);
        fragmentNewSearchProductsBindingN.smartNested.setVisibility(0);
        fragmentNewSearchProductsBindingN.tvHeaderProductInCheque.setVisibility(0);
        fragmentNewSearchProductsBindingN.rvProducts.setVisibility(0);
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public final void showShopInCheques(List<? extends fn5> list) {
        list.getClass();
        FragmentNewSearchProductsBinding fragmentNewSearchProductsBindingN = n();
        fragmentNewSearchProductsBindingN.tvHeaderShopInCheque.setVisibility(0);
        fragmentNewSearchProductsBindingN.rvShops.setVisibility(0);
        eu1 eu1Var = this.j;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}

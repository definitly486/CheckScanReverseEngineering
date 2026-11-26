package com.warefly.checkscan.presentation.operations.allOperations.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentAllOperationsBinding;
import com.warefly.checkscan.databinding.LayoutToolbarSimpleTitleBinding;
import com.warefly.checkscan.databinding.LayoutTryAgainBinding;
import com.warefly.checkscan.presentation.common.filters.FiltersDialog;
import com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsPresenter;
import com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c9;
import defpackage.cw5;
import defpackage.dz5;
import defpackage.eu1;
import defpackage.ga3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.j92;
import defpackage.kn1;
import defpackage.kz5;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oc;
import defpackage.ol4;
import defpackage.pc;
import defpackage.py5;
import defpackage.ty5;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AllOperationsFragment extends BaseFragment<FragmentAllOperationsBinding> implements AllOperationsView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_all_operations;
    public final ol4 g = new ol4(FragmentAllOperationsBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(pc.class), new i());
    public eu1 i;
    public AllOperationsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<ga3, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(ga3 ga3Var) {
            ga3 ga3Var2 = ga3Var;
            ga3Var2.getClass();
            AllOperationsFragment.this.o().onCategorySelected(new py5(ga3Var2.a, ga3Var2.b));
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onChooseCategoryClicked();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onChooseCategoryClicked();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onRefreshPage();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onRefreshPage();
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onRefreshPage();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllOperationsFragment.this.o().onCategoryRemoved();
            return j59.a;
        }
    }

    public static final class i implements ll3<Bundle> {
        public i() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            AllOperationsFragment allOperationsFragment = AllOperationsFragment.this;
            Bundle arguments = allOperationsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(allOperationsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(AllOperationsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    public final FragmentAllOperationsBinding n() {
        return (FragmentAllOperationsBinding) this.g.getValue(this, j[0]);
    }

    public final AllOperationsPresenter o() {
        AllOperationsPresenter allOperationsPresenter = this.presenter;
        if (allOperationsPresenter != null) {
            return allOperationsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvOperations;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext());
        recyclerView.addOnScrollListener(new cw5(linearLayoutManager, new oc(this)));
        recyclerView.setLayoutManager(linearLayoutManager);
        eu1 eu1Var = new eu1(new j92(), new dz5(), new ty5());
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setNestedScrollingEnabled(true);
        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding = n().toolbar;
        layoutToolbarSimpleTitleBinding.tvTitle.setText(getString(R.string.operations_title));
        ImageView imageView = layoutToolbarSimpleTitleBinding.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AllOperationsPresenter providePresenter() {
        return new AllOperationsPresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), ((pc) this.h.getValue()).a, (kz5) m2.c(kz5.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void removeCategory() {
        FragmentAllOperationsBinding fragmentAllOperationsBindingN = n();
        TextView textView = fragmentAllOperationsBindingN.tvFilterName;
        Context context = getContext();
        textView.setText(context != null ? context.getString(R.string.operations_filters_name) : null);
        fragmentAllOperationsBindingN.btnRemoveFilter.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showAllOperationsLoaded() {
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void showBeginList() {
        RecyclerView.LayoutManager layoutManager = n().rvOperations.getLayoutManager();
        if (layoutManager != null) {
            layoutManager.scrollToPosition(0);
        }
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void showCategories(List<py5> list) {
        list.getClass();
        Context context = getContext();
        if (context != null) {
            String string = context.getString(R.string.operations_filters_title);
            string.getClass();
            b bVar = new b();
            List<py5> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (py5 py5Var : list2) {
                arrayList.add(new ga3(py5Var.a(), py5Var.b()));
            }
            new FiltersDialog(context, string, bVar, arrayList).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void showCategoriesLoaded(boolean z) {
        FragmentAllOperationsBinding fragmentAllOperationsBindingN = n();
        ImageView imageView = fragmentAllOperationsBindingN.btnChooseFilter;
        if (!z) {
            imageView.setVisibility(8);
            fragmentAllOperationsBindingN.tvFilterName.setVisibility(8);
            fragmentAllOperationsBindingN.btnRemoveFilter.setVisibility(8);
            return;
        }
        imageView.setVisibility(0);
        imageView.setOnClickListener(new lb7(new c()));
        TextView textView = fragmentAllOperationsBindingN.tvFilterName;
        Context context = textView.getContext();
        textView.setText(context != null ? context.getString(R.string.operations_filters_name) : null);
        textView.setVisibility(0);
        textView.setOnClickListener(new lb7(new d()));
        fragmentAllOperationsBindingN.btnRemoveFilter.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void showCouldntLoadCategories(boolean z) {
        LayoutTryAgainBinding layoutTryAgainBinding = n().viewTryAgain;
        if (!z) {
            layoutTryAgainBinding.getRoot().setVisibility(8);
            return;
        }
        layoutTryAgainBinding.getRoot().setVisibility(0);
        layoutTryAgainBinding.tvMessage.setText(getString(R.string.partner_couldnt_load_info));
        TextView textView = layoutTryAgainBinding.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new e()));
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showEmptyOperations(boolean z) {
        FragmentAllOperationsBinding fragmentAllOperationsBindingN = n();
        RecyclerView recyclerView = fragmentAllOperationsBindingN.rvOperations;
        if (!z) {
            recyclerView.setVisibility(0);
            fragmentAllOperationsBindingN.viewTryAgain.getRoot().setVisibility(8);
            j59 j59Var = j59.a;
            return;
        }
        recyclerView.setVisibility(8);
        LayoutTryAgainBinding layoutTryAgainBinding = fragmentAllOperationsBindingN.viewTryAgain;
        layoutTryAgainBinding.getRoot().setVisibility(0);
        layoutTryAgainBinding.tvMessage.setText(getString(R.string.operations_no_results));
        TextView textView = layoutTryAgainBinding.btnTryAgain;
        textView.setText(getString(R.string.operations_no_btn_retry));
        textView.setOnClickListener(new lb7(new f()));
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showEmptyOperationsError(boolean z) {
        FragmentAllOperationsBinding fragmentAllOperationsBindingN = n();
        RecyclerView recyclerView = fragmentAllOperationsBindingN.rvOperations;
        if (!z) {
            recyclerView.setVisibility(0);
            fragmentAllOperationsBindingN.viewTryAgain.getRoot().setVisibility(8);
            j59 j59Var = j59.a;
            return;
        }
        recyclerView.setVisibility(8);
        LayoutTryAgainBinding layoutTryAgainBinding = fragmentAllOperationsBindingN.viewTryAgain;
        layoutTryAgainBinding.getRoot().setVisibility(0);
        layoutTryAgainBinding.tvMessage.setText(getString(R.string.operations_no_results_error));
        TextView textView = layoutTryAgainBinding.btnTryAgain;
        textView.setText(getString(R.string.operations_no_btn_retry));
        textView.setOnClickListener(new lb7(new g()));
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showEmptyOperationsProgress(boolean z) {
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void showLoadingCategories(boolean z) {
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showOperations(boolean z, List<Object> list) {
        eu1 eu1Var;
        list.getClass();
        RecyclerView recyclerView = n().rvOperations;
        recyclerView.getClass();
        recyclerView.setVisibility(z ? 0 : 8);
        if (!z || (eu1Var = this.i) == null) {
            return;
        }
        eu1Var.submitList(list);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showPageOfOperationsProgress(boolean z) {
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showRefreshOperationsProgress(boolean z) {
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public final void showSelectedCategory(py5 py5Var) {
        py5Var.getClass();
        FragmentAllOperationsBinding fragmentAllOperationsBindingN = n();
        fragmentAllOperationsBindingN.tvFilterName.setText(py5Var.b());
        ImageView imageView = fragmentAllOperationsBindingN.btnRemoveFilter;
        imageView.setVisibility(0);
        imageView.setOnClickListener(new lb7(new h()));
    }
}

package com.warefly.checkscan.presentation.operations.base;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentOperationsBinding;
import com.warefly.checkscan.databinding.LayoutTryAgainBinding;
import com.warefly.checkscan.presentation.operations.base.OperationsPresenter;
import defpackage.bs6;
import defpackage.dz5;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.j59;
import defpackage.j92;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.nz1;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.ty5;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OperationsFragment<P extends OperationsPresenter<OperationsView>> extends BaseFragment<FragmentOperationsBinding> implements OperationsView {
    public static final /* synthetic */ ze4<Object>[] i;
    public final ol4 f = new ol4(FragmentOperationsBinding.class);
    public final int g = R.layout.fragment_operations;
    public eu1 h;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OperationsFragment.this.o().onLoadMoreOperations();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OperationsFragment.this.o().onRefreshPage();
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
            OperationsFragment.this.o().onRefreshPage();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(OperationsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.g;
    }

    public final FragmentOperationsBinding n() {
        return (FragmentOperationsBinding) this.f.getValue(this, i[0]);
    }

    public abstract CatalogCardOperationsPresenter o();

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvOperations;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        eu1 eu1Var = new eu1(new j92(), new dz5(), new ty5());
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        TextView textView = n().btnLoadMore;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            oz1.c(context, str, nz1.f);
        }
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showAllOperationsLoaded() {
        n().btnLoadMore.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showEmptyOperations(boolean z) {
        if (!z) {
            n().rvOperations.setVisibility(0);
            n().viewTryAgain.getRoot().setVisibility(8);
            return;
        }
        n().rvOperations.setVisibility(8);
        LayoutTryAgainBinding layoutTryAgainBinding = n().viewTryAgain;
        layoutTryAgainBinding.getRoot().setVisibility(0);
        layoutTryAgainBinding.tvMessage.setText("");
        TextView textView = layoutTryAgainBinding.btnTryAgain;
        if (textView != null) {
            textView.setText(getString(R.string.operations_no_btn_retry));
            textView.setOnClickListener(new lb7(new b()));
        }
        n().btnLoadMore.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showEmptyOperationsError(boolean z) {
        if (!z) {
            n().rvOperations.setVisibility(0);
            n().viewTryAgain.getRoot().setVisibility(8);
            return;
        }
        n().rvOperations.setVisibility(8);
        LayoutTryAgainBinding layoutTryAgainBinding = n().viewTryAgain;
        layoutTryAgainBinding.getRoot().setVisibility(0);
        layoutTryAgainBinding.tvMessage.setText(getString(R.string.operations_no_results_error));
        TextView textView = layoutTryAgainBinding.btnTryAgain;
        textView.setText(getString(R.string.operations_no_btn_retry));
        textView.setOnClickListener(new lb7(new c()));
        n().btnLoadMore.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showEmptyOperationsProgress(boolean z) {
        n().pbLoading.setVisibility(z ? 0 : 8);
        n().btnLoadMore.setVisibility(z ? 8 : 0);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showOperations(boolean z, List<Object> list) {
        list.getClass();
        if (!z) {
            n().rvOperations.setVisibility(8);
            return;
        }
        n().rvOperations.setVisibility(0);
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showPageOfOperationsProgress(boolean z) {
        n().pbLoading.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public final void showRefreshOperationsProgress(boolean z) {
        n().pbLoading.setVisibility(z ? 0 : 8);
    }
}

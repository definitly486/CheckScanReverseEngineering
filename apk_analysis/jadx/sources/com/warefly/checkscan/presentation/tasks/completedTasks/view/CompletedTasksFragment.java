package com.warefly.checkscan.presentation.tasks.completedTasks.view;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter;
import com.warefly.checkscan.tasks.databinding.FragmentCompletedTasksBinding;
import defpackage.aa4;
import defpackage.am8;
import defpackage.bs6;
import defpackage.c47;
import defpackage.d73;
import defpackage.dm8;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pl2;
import defpackage.pm8;
import defpackage.sg;
import defpackage.so8;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vq;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zl2;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CompletedTasksFragment extends BaseFragment<FragmentCompletedTasksBinding> implements CompletedTasksView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_completed_tasks;
    public final ol4 g = new ol4(FragmentCompletedTasksBinding.class);
    public eu1 h;
    public LoadingDialog i;
    public CompletedTasksPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CompletedTasksFragment.this.o().refreshContent();
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
            CompletedTasksFragment.this.o().onBackClicked();
            return j59.a;
        }
    }

    public static final class d extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.top = pl2.e(8);
        }
    }

    static {
        bs6 bs6Var = new bs6(CompletedTasksFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentCompletedTasksBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClicked();
        return false;
    }

    public final FragmentCompletedTasksBinding n() {
        return (FragmentCompletedTasksBinding) this.g.getValue(this, k[0]);
    }

    public final CompletedTasksPresenter o() {
        CompletedTasksPresenter completedTasksPresenter = this.presenter;
        if (completedTasksPresenter != null) {
            return completedTasksPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        TextView textView = n().incldTryAgain.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
        ImageView imageView = n().toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
        n().toolbar.tvTitle.setText(getString(R.string.completed_tasks_title));
        RecyclerView recyclerView = n().rvContent;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        eu1 eu1Var = new eu1(new pm8(o(), o()), new am8(o(), o()), new dm8());
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new d());
        n().swipeToRefresh.setOnRefreshListener(new vq(this, 2));
    }

    public final CompletedTasksPresenter providePresenter() {
        return new CompletedTasksPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (d73) m2.c(d73.class, e.e(this), null, null), (c47) m2.c(c47.class, e.e(this), null, null), (zl2) m2.c(zl2.class, e.e(this), null, null), (up8) m2.c(up8.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public final void setContent(List<? extends so8> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public final void showDefaultError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public final void showErrorLoading(boolean z) {
        ConstraintLayout root = n().incldTryAgain.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialogB;
        LoadingDialog loadingDialog = this.i;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
        } else {
            loadingDialogB = null;
        }
        this.i = loadingDialogB;
    }

    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public final void turnOffRefreshing() {
        n().swipeToRefresh.setRefreshing(false);
    }
}

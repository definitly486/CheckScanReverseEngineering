package com.warefly.checkscan.presentation.tasks.grouped.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter;
import com.warefly.checkscan.tasks.databinding.FragmentGroupedTasksBinding;
import defpackage.aa4;
import defpackage.am8;
import defpackage.bc7;
import defpackage.bs6;
import defpackage.c47;
import defpackage.eu1;
import defpackage.g73;
import defpackage.gh4;
import defpackage.hn8;
import defpackage.j59;
import defpackage.lb7;
import defpackage.lw7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.no8;
import defpackage.nw7;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pz3;
import defpackage.ss3;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vn8;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class GroupedTasksFragment extends BaseFragment<FragmentGroupedTasksBinding> implements GroupedTasksView {
    public static final a m;
    public static final /* synthetic */ ze4<Object>[] n;
    public final int f = R.layout.fragment_grouped_tasks;
    public final ol4 g = new ol4(FragmentGroupedTasksBinding.class);
    public eu1 h;
    public nw7 i;
    public TaskSuccessBottomSheet j;
    public TaskErrorBottomSheet k;
    public LoadingDialog l;
    public GroupedTasksPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            GroupedTasksFragment.this.o().refreshContent();
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
            GroupedTasksFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Boolean, j59> {
        public static final d f = new d(1);

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            bool.getClass();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<lw7, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(lw7 lw7Var) {
            lw7 lw7Var2 = lw7Var;
            lw7Var2.getClass();
            GroupedTasksFragment.this.o().onShowcaseItemShown(lw7Var2);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(GroupedTasksFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
        m = new a();
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

    public final FragmentGroupedTasksBinding n() {
        return (FragmentGroupedTasksBinding) this.g.getValue(this, n[0]);
    }

    public final GroupedTasksPresenter o() {
        GroupedTasksPresenter groupedTasksPresenter = this.presenter;
        if (groupedTasksPresenter != null) {
            return groupedTasksPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        nw7 nw7Var = this.i;
        if (nw7Var != null) {
            nw7Var.k = z;
            nw7Var.b();
        }
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
        RecyclerView recyclerView = n().rvContent;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        eu1 eu1Var = new eu1(new am8(o(), o()));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new ss3());
        RecyclerView recyclerView2 = n().rvContent;
        recyclerView2.getClass();
        nw7 nw7Var = new nw7(recyclerView2, o().getShowcaseRenderState(), d.f, new e(), 0.9f);
        nw7Var.k = isHidden();
        nw7Var.b();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        nw7Var.a(viewLifecycleOwner);
        this.i = nw7Var;
    }

    public final GroupedTasksPresenter providePresenter() {
        return new GroupedTasksPresenter(requireArguments().getInt("GROUPED_TASKS_ID_KEY"), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (vn8) m2.c(vn8.class, defpackage.e.e(this), null, null), (g73) m2.c(g73.class, defpackage.e.e(this), null, null), (c47) m2.c(c47.class, defpackage.e.e(this), null, null), (bc7) m2.c(bc7.class, defpackage.e.e(this), null, null), (up8) m2.c(up8.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showDefaultError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldTryAgain.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showItems(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        nw7 nw7Var = this.i;
        if (nw7Var != null) {
            nw7Var.d(o().getShowcaseRows());
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialogB;
        LoadingDialog loadingDialog = this.l;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
        } else {
            loadingDialogB = null;
        }
        this.l = loadingDialogB;
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showTaskError(hn8 hn8Var) {
        hn8Var.getClass();
        TaskErrorBottomSheet taskErrorBottomSheet = this.k;
        if (taskErrorBottomSheet != null) {
            taskErrorBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskErrorBottomSheet taskErrorBottomSheet2 = new TaskErrorBottomSheet(context, hn8Var);
            this.k = taskErrorBottomSheet2;
            taskErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showTaskSuccess(int i, no8 no8Var) {
        no8Var.getClass();
        TaskSuccessBottomSheet taskSuccessBottomSheet = this.j;
        if (taskSuccessBottomSheet != null) {
            taskSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskSuccessBottomSheet taskSuccessBottomSheet2 = new TaskSuccessBottomSheet(context, i, no8Var);
            this.j = taskSuccessBottomSheet2;
            taskSuccessBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public final void showToolbarTitle(String str) {
        str.getClass();
        n().toolbar.tvTitle.setText(str);
    }
}

package com.warefly.checkscan.presentation.tasks.taskDetails.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import com.warefly.checkscan.presentation.tasks.taskDetails.presenter.TaskDetailsPresenter;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.InfoBottomSheet;
import com.warefly.checkscan.tasks.databinding.FragmentTaskDetailsBinding;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bs6;
import defpackage.dn8;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.hn8;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mk1;
import defpackage.n2;
import defpackage.nl3;
import defpackage.no8;
import defpackage.o83;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.q83;
import defpackage.uf3;
import defpackage.um8;
import defpackage.up8;
import defpackage.vm8;
import defpackage.x07;
import defpackage.xm8;
import defpackage.zd3;
import defpackage.ze4;
import eightbitlab.com.blurview.BlurView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskDetailsFragment extends BaseFragment<FragmentTaskDetailsBinding> implements TaskDetailsView {
    public static final a m;
    public static final /* synthetic */ ze4<Object>[] n;
    public final int f = R.layout.fragment_task_details;
    public final ol4 g = new ol4(FragmentTaskDetailsBinding.class);
    public OrdAdInfoDialog h;
    public TaskSuccessBottomSheet i;
    public TaskErrorBottomSheet j;
    public InfoBottomSheet k;
    public eu1 l;
    public TaskDetailsPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TaskDetailsFragment.this.o().onBackClicked();
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
            TaskDetailsFragment.this.o().loadContent();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ um8 f;
        public final /* synthetic */ TaskDetailsFragment g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(um8 um8Var, TaskDetailsFragment taskDetailsFragment) {
            super(1);
            this.f = um8Var;
            this.g = taskDetailsFragment;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            com.warefly.checkscan.shared.infoBottomSheet.presentation.b bVar = this.f.i;
            if (bVar != null) {
                this.g.o().onInfoBadgeClicked(bVar.b);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ TaskDetailsFragment f;
        public final /* synthetic */ um8 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(um8 um8Var, TaskDetailsFragment taskDetailsFragment) {
            super(1);
            this.f = taskDetailsFragment;
            this.g = um8Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            this.f.o().onActionClicked(this.g.f.c);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ TaskDetailsFragment f;
        public final /* synthetic */ um8 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(um8 um8Var, TaskDetailsFragment taskDetailsFragment) {
            super(1);
            this.f = taskDetailsFragment;
            this.g = um8Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            this.f.o().onClaimClicked(this.g.a);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b06 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(b06 b06Var) {
            super(1);
            this.g = b06Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TaskDetailsFragment.this.o().onOrdClicked(this.g);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TaskDetailsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
        m = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentTaskDetailsBinding n() {
        return (FragmentTaskDetailsBinding) this.g.getValue(this, n[0]);
    }

    public final TaskDetailsPresenter o() {
        TaskDetailsPresenter taskDetailsPresenter = this.presenter;
        if (taskDetailsPresenter != null) {
            return taskDetailsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().loadContent();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentTaskDetailsBinding fragmentTaskDetailsBindingN = n();
        RecyclerView recyclerView = fragmentTaskDetailsBindingN.rvBadges;
        eu1 eu1Var = new eu1(new vm8(o()), new dn8());
        this.l = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new TaskDetailsFragment$setUpBadges$1$1$2(fragmentTaskDetailsBindingN.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new xm8());
        recyclerView.setItemAnimator(null);
        ImageView imageView = n().btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
    }

    public final TaskDetailsPresenter providePresenter() {
        return new TaskDetailsPresenter(requireArguments().getInt("TASK_ID_KEY"), (q83) m2.c(q83.class, defpackage.e.e(this), null, null), (o83) m2.c(o83.class, defpackage.e.e(this), null, null), (mk1) m2.c(mk1.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (up8) m2.c(up8.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showActionLoading(boolean z) {
        n().btnAction.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showClaimButtonLoading(boolean z) {
        n().btnClaimReward.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showDetails(um8 um8Var) {
        um8Var.getClass();
        um8.b bVar = um8Var.g;
        um8.a aVar = um8Var.f;
        FragmentTaskDetailsBinding fragmentTaskDetailsBindingN = n();
        com.bumptech.glide.a.d(requireContext()).h(um8Var.b).L(fragmentTaskDetailsBindingN.ivLogo);
        fragmentTaskDetailsBindingN.tvTitle.setText(um8Var.d);
        MaterialCardView root = fragmentTaskDetailsBindingN.incldInfoBadge.getRoot();
        root.getClass();
        com.warefly.checkscan.shared.infoBottomSheet.presentation.b bVar2 = um8Var.i;
        root.setVisibility(bVar2 != null ? 0 : 8);
        fragmentTaskDetailsBindingN.incldInfoBadge.tvTitle.setText(bVar2 != null ? bVar2.a : null);
        MaterialCardView root2 = fragmentTaskDetailsBindingN.incldInfoBadge.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new d(um8Var, this)));
        eu1 eu1Var = this.l;
        if (eu1Var != null) {
            eu1Var.submitList(um8Var.c);
        }
        LoadingButton loadingButton = fragmentTaskDetailsBindingN.btnAction;
        loadingButton.setText(aVar.a);
        loadingButton.setEnabled(aVar.b);
        loadingButton.setOnClickListener(new lb7(new e(um8Var, this)));
        LoadingButton loadingButton2 = fragmentTaskDetailsBindingN.btnClaimReward;
        loadingButton2.setText(bVar.a);
        loadingButton2.setEnabled(bVar.c);
        loadingButton2.setOnClickListener(new lb7(new f(um8Var, this)));
        b06 b06Var = um8Var.h;
        if (b06Var == null || !b06Var.b) {
            return;
        }
        BlurView blurView = fragmentTaskDetailsBindingN.incldAdsBadge.blurView;
        blurView.getClass();
        ConstraintLayout root3 = fragmentTaskDetailsBindingN.getRoot();
        root3.getClass();
        zd3.h(blurView, root3);
        BlurView root4 = fragmentTaskDetailsBindingN.incldAdsBadge.getRoot();
        root4.getClass();
        root4.setOnClickListener(new lb7(new g(b06Var)));
        BlurView root5 = fragmentTaskDetailsBindingN.incldAdsBadge.getRoot();
        root5.getClass();
        root5.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showErrorState(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showInfoBottomSheet(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        Context context = getContext();
        if (context != null) {
            InfoBottomSheet infoBottomSheet = this.k;
            if (infoBottomSheet != null) {
                infoBottomSheet.dismiss();
            }
            InfoBottomSheet infoBottomSheet2 = new InfoBottomSheet(context, list, false);
            this.k = infoBottomSheet2;
            infoBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showLoadingSpinner(boolean z) {
        ConstraintLayout root = n().incldLoadingSpinner.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showOrdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.h;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.h = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showTaskError(hn8 hn8Var) {
        hn8Var.getClass();
        TaskErrorBottomSheet taskErrorBottomSheet = this.j;
        if (taskErrorBottomSheet != null) {
            taskErrorBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskErrorBottomSheet taskErrorBottomSheet2 = new TaskErrorBottomSheet(context, hn8Var);
            this.j = taskErrorBottomSheet2;
            taskErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showTaskNotFinished(String str) {
        str.getClass();
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public final void showTaskSuccess(int i, no8 no8Var) {
        no8Var.getClass();
        TaskSuccessBottomSheet taskSuccessBottomSheet = this.i;
        if (taskSuccessBottomSheet != null) {
            taskSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskSuccessBottomSheet taskSuccessBottomSheet2 = new TaskSuccessBottomSheet(context, i, no8Var);
            this.i = taskSuccessBottomSheet2;
            taskSuccessBottomSheet2.show();
        }
    }
}

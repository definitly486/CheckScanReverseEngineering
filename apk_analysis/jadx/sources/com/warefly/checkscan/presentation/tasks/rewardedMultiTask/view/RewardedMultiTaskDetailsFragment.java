package com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.InfoBottomSheet;
import com.warefly.checkscan.tasks.databinding.FragmentRewardedMultiTaskDetailsBinding;
import defpackage.a77;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b77;
import defpackage.bs6;
import defpackage.dn8;
import defpackage.e;
import defpackage.eu1;
import defpackage.g77;
import defpackage.gh4;
import defpackage.h77;
import defpackage.hn8;
import defpackage.i77;
import defpackage.j59;
import defpackage.k77;
import defpackage.lb7;
import defpackage.m2;
import defpackage.m77;
import defpackage.n2;
import defpackage.nl3;
import defpackage.no8;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vn8;
import defpackage.x07;
import defpackage.zd3;
import defpackage.ze4;
import eightbitlab.com.blurview.BlurView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class RewardedMultiTaskDetailsFragment extends BaseFragment<FragmentRewardedMultiTaskDetailsBinding> implements RewardedMultiTaskDetailsView {
    public static final a m;
    public static final /* synthetic */ ze4<Object>[] n;
    public final int f = R.layout.fragment_rewarded_multi_task_details;
    public final ol4 g = new ol4(FragmentRewardedMultiTaskDetailsBinding.class);
    public OrdAdInfoDialog h;
    public TaskSuccessBottomSheet i;
    public TaskErrorBottomSheet j;
    public eu1 k;
    public InfoBottomSheet l;
    public RewardedMultiTaskDetailsPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RewardedMultiTaskDetailsFragment.this.o().onBackClicked();
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
            RewardedMultiTaskDetailsFragment.this.o().loadContent();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b06 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(b06 b06Var) {
            super(1);
            this.g = b06Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RewardedMultiTaskDetailsFragment.this.o().onOrdClicked(this.g);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(RewardedMultiTaskDetailsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentRewardedMultiTaskDetailsBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
        m = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentRewardedMultiTaskDetailsBinding n() {
        return (FragmentRewardedMultiTaskDetailsBinding) this.g.getValue(this, n[0]);
    }

    public final RewardedMultiTaskDetailsPresenter o() {
        RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter = this.presenter;
        if (rewardedMultiTaskDetailsPresenter != null) {
            return rewardedMultiTaskDetailsPresenter;
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
        FragmentRewardedMultiTaskDetailsBinding fragmentRewardedMultiTaskDetailsBindingN = n();
        RecyclerView recyclerView = fragmentRewardedMultiTaskDetailsBindingN.rvContent;
        eu1 eu1Var = new eu1(new i77(h77.c), new com.warefly.checkscan.shared.infoBottomSheet.presentation.a(o()), new b77(a77.c), new m77(o(), o()), new dn8());
        this.k = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new g77());
        recyclerView.setLayoutManager(new LinearLayoutManager(fragmentRewardedMultiTaskDetailsBindingN.getRoot().getContext(), 1, false));
        recyclerView.setItemAnimator(null);
        ImageView imageView = n().btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
    }

    public final RewardedMultiTaskDetailsPresenter providePresenter() {
        return new RewardedMultiTaskDetailsPresenter(requireArguments().getInt("TASK_ID_KEY"), (vn8) m2.c(vn8.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null), (up8) m2.c(up8.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
    public final void showDetails(k77 k77Var) {
        k77Var.getClass();
        FragmentRewardedMultiTaskDetailsBinding fragmentRewardedMultiTaskDetailsBindingN = n();
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            eu1Var.submitList(k77Var.a);
        }
        b06 b06Var = k77Var.b;
        if (b06Var == null || !b06Var.b) {
            return;
        }
        BlurView blurView = fragmentRewardedMultiTaskDetailsBindingN.incldAdsBadge.blurView;
        blurView.getClass();
        ConstraintLayout root = fragmentRewardedMultiTaskDetailsBindingN.getRoot();
        root.getClass();
        zd3.h(blurView, root);
        BlurView root2 = fragmentRewardedMultiTaskDetailsBindingN.incldAdsBadge.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new d(b06Var)));
        BlurView root3 = fragmentRewardedMultiTaskDetailsBindingN.incldAdsBadge.getRoot();
        root3.getClass();
        root3.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
    public final void showError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
    public final void showErrorState(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
    public final void showInfoBottomSheet(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        Context context = getContext();
        if (context != null) {
            InfoBottomSheet infoBottomSheet = this.l;
            if (infoBottomSheet != null) {
                infoBottomSheet.dismiss();
            }
            InfoBottomSheet infoBottomSheet2 = new InfoBottomSheet(context, list, false);
            this.l = infoBottomSheet2;
            infoBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
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

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
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

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
    public final void showTaskNotFinished(String str) {
        str.getClass();
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView
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

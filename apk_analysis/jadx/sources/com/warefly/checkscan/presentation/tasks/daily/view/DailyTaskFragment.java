package com.warefly.checkscan.presentation.tasks.daily.view;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultDialog;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import com.warefly.checkscan.tasks.databinding.FragmentDailyTasksBinding;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.c82;
import defpackage.d82;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.h82;
import defpackage.i82;
import defpackage.j59;
import defpackage.kv1;
import defpackage.l82;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.o37;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.r7;
import defpackage.u72;
import defpackage.uf3;
import defpackage.up8;
import defpackage.v72;
import defpackage.w72;
import defpackage.wk8;
import defpackage.x07;
import defpackage.x72;
import defpackage.y72;
import defpackage.y82;
import defpackage.z72;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyTaskFragment extends BaseFragment<FragmentDailyTasksBinding> implements DailyTaskView {
    public static final a k;
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_daily_tasks;
    public final ol4 g = new ol4(FragmentDailyTasksBinding.class);
    public eu1 h;
    public DailyTaskResultDialog i;
    public NoAttemptsDialog j;
    public DailyTaskPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DailyTaskPresenter dailyTaskPresenter = DailyTaskFragment.this.presenter;
            if (dailyTaskPresenter != null) {
                dailyTaskPresenter.onBackClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements bm3<String, Bundle, j59> {
        public c() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            str2.getClass();
            bundle.getClass();
            DailyTaskFragment dailyTaskFragment = DailyTaskFragment.this;
            FragmentKt.clearFragmentResult(dailyTaskFragment, str2);
            DailyTaskPresenter dailyTaskPresenter = dailyTaskFragment.presenter;
            if (dailyTaskPresenter != null) {
                dailyTaskPresenter.onBackClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class d<T> implements o37 {
        public final /* synthetic */ FragmentDailyTasksBinding a;

        public d(FragmentDailyTasksBinding fragmentDailyTasksBinding) {
            this.a = fragmentDailyTasksBinding;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            FragmentDailyTasksBinding fragmentDailyTasksBinding = this.a;
            SafeImageView safeImageView = fragmentDailyTasksBinding.ivBanner;
            safeImageView.getClass();
            safeImageView.setVisibility(0);
            ShimmerFrameLayout shimmerFrameLayout = fragmentDailyTasksBinding.ivLoading;
            shimmerFrameLayout.getClass();
            shimmerFrameLayout.setVisibility(8);
            fragmentDailyTasksBinding.ivBanner.setImageDrawableWithCache((Drawable) obj);
            return false;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DailyTaskPresenter dailyTaskPresenter = DailyTaskFragment.this.presenter;
            if (dailyTaskPresenter != null) {
                dailyTaskPresenter.onGetRewardClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class f extends gh4 implements ll3<j59> {
        public f() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            DailyTaskPresenter dailyTaskPresenter = DailyTaskFragment.this.presenter;
            if (dailyTaskPresenter != null) {
                dailyTaskPresenter.refreshContent();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(DailyTaskFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
        k = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentDailyTasksBinding n() {
        return (FragmentDailyTasksBinding) this.g.getValue(this, l[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        eu1 eu1Var = new eu1(new x72(w72.c, 0), new v72(u72.c), new z72(y72.c), new i82(h82.c));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        DailyTaskFragment$setUpAdapter$1$2 dailyTaskFragment$setUpAdapter$1$2 = new DailyTaskFragment$setUpAdapter$1$2(recyclerView.getContext());
        dailyTaskFragment$setUpAdapter$1$2.C(1);
        dailyTaskFragment$setUpAdapter$1$2.B(0);
        dailyTaskFragment$setUpAdapter$1$2.D(2);
        recyclerView.setLayoutManager(dailyTaskFragment$setUpAdapter$1$2);
        recyclerView.addItemDecoration(new c82(this));
        ImageView imageView = n().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        NoAttemptsDialog.d.getClass();
        FragmentKt.setFragmentResultListener(this, NoAttemptsDialog.f, new c());
    }

    public final DailyTaskPresenter providePresenter() throws Exception {
        uf3 uf3Var = (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null);
        d82 d82Var = (d82) m2.c(d82.class, defpackage.e.e(this), null, null);
        Bundle arguments = getArguments();
        if (arguments != null) {
            return new DailyTaskPresenter(uf3Var, d82Var, arguments.getInt("TASK_ID_KEY"), (up8) m2.c(up8.class, defpackage.e.e(this), null, null));
        }
        throw new Exception("Task id can not be null");
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showButtonLoading(boolean z) {
        n().btnGetReward.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showConfetti() {
        ConfettiLayoutBinding confettiLayoutBinding = n().incldConfetti;
        confettiLayoutBinding.getClass();
        kv1.a(confettiLayoutBinding);
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showContent(l82 l82Var) {
        l82Var.getClass();
        l82.a aVar = l82Var.b;
        FragmentDailyTasksBinding fragmentDailyTasksBindingN = n();
        String str = l82Var.a;
        if (str != null) {
            com.bumptech.glide.a.e(fragmentDailyTasksBindingN.ivBanner).h(str).F(new d(fragmentDailyTasksBindingN)).O();
        }
        LinearLayout linearLayout = fragmentDailyTasksBindingN.layoutButtonGetReward;
        linearLayout.getClass();
        linearLayout.setVisibility(0);
        fragmentDailyTasksBindingN.btnGetReward.setText(aVar.a);
        fragmentDailyTasksBindingN.btnGetReward.setEnabled(aVar.b);
        LoadingButton loadingButton = fragmentDailyTasksBindingN.btnGetReward;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new e()));
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(l82Var.d);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showDefaultError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showNoAttemptsDialog(int i, DailyTaskNoAttempts dailyTaskNoAttempts) {
        dailyTaskNoAttempts.getClass();
        NoAttemptsDialog noAttemptsDialog = this.j;
        if (noAttemptsDialog != null) {
            noAttemptsDialog.dismiss();
        }
        NoAttemptsDialog.d.getClass();
        NoAttemptsDialog noAttemptsDialog2 = new NoAttemptsDialog();
        noAttemptsDialog2.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(i)), new b36("DAILY_TASK_NO_ATTEMPTS_KEY", dailyTaskNoAttempts)));
        m(noAttemptsDialog2);
        this.j = noAttemptsDialog2;
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showResultDialog(int i, DailyTaskResult dailyTaskResult) {
        dailyTaskResult.getClass();
        DailyTaskResultDialog dailyTaskResultDialog = this.i;
        if (dailyTaskResultDialog != null) {
            dailyTaskResultDialog.dismiss();
        }
        DailyTaskResultDialog.d.getClass();
        DailyTaskResultDialog dailyTaskResultDialog2 = new DailyTaskResultDialog();
        dailyTaskResultDialog2.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(i)), new b36("TASK_RESULT_KEY", dailyTaskResult)));
        m(dailyTaskResultDialog2);
        this.i = dailyTaskResultDialog2;
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void showScreenLoadingError() {
        CoordinatorLayout coordinatorLayout = n().coordLayout;
        coordinatorLayout.getClass();
        String string = getString(R.string.daily_task_loading_error);
        string.getClass();
        String string2 = getString(R.string.daily_task_loading_error_button);
        string2.getClass();
        oz1.f(coordinatorLayout, string, string2, new f());
    }

    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public final void vibrate() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 400L);
        }
    }
}

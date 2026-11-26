package com.warefly.checkscan.presentation.tasks.main.view;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.adResult.DailyBonusPointsDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.tasks.databinding.FragmentTasksBinding;
import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.a32;
import defpackage.a8;
import defpackage.aa4;
import defpackage.ah;
import defpackage.am8;
import defpackage.ar1;
import defpackage.av0;
import defpackage.b0;
import defpackage.b06;
import defpackage.b36;
import defpackage.bc7;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.c47;
import defpackage.cc7;
import defpackage.cl4;
import defpackage.dm8;
import defpackage.e02;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.hn8;
import defpackage.hr0;
import defpackage.ir0;
import defpackage.j59;
import defpackage.k07;
import defpackage.k57;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.lw7;
import defpackage.m2;
import defpackage.m8;
import defpackage.mm8;
import defpackage.mo7;
import defpackage.n2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.nm8;
import defpackage.no8;
import defpackage.nw7;
import defpackage.o22;
import defpackage.o32;
import defpackage.o83;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p63;
import defpackage.pg8;
import defpackage.pl2;
import defpackage.pm8;
import defpackage.po4;
import defpackage.pz3;
import defpackage.qh9;
import defpackage.qn1;
import defpackage.qo8;
import defpackage.r57;
import defpackage.ro8;
import defpackage.s22;
import defpackage.sg;
import defpackage.so8;
import defpackage.tl8;
import defpackage.uf3;
import defpackage.up8;
import defpackage.v10;
import defpackage.vn8;
import defpackage.w48;
import defpackage.wl8;
import defpackage.x07;
import defpackage.xl8;
import defpackage.y22;
import defpackage.y68;
import defpackage.yl8;
import defpackage.ze4;
import defpackage.zl2;
import defpackage.zl8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TasksFragment extends BaseFragment<FragmentTasksBinding> implements TasksView {
    public static final a q;
    public static final /* synthetic */ ze4<Object>[] r;
    public final int f = R.layout.fragment_tasks;
    public final ol4 g = new ol4(FragmentTasksBinding.class);
    public final cl4 h = nm4.a(po4.SYNCHRONIZED, new l());
    public eu1 i;
    public k07 j;
    public nw7 k;
    public OrdAdInfoDialog l;
    public LoadingDialog m;
    public DailyBonusPointsDialog n;
    public TaskSuccessBottomSheet o;
    public TaskErrorBottomSheet p;
    public TasksPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TasksFragment.this.o().refreshContent(true);
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Integer, y68<? extends Long>> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final y68<? extends Long> invoke(Integer num) {
            return TasksFragment.this.o().getCountdownFlow(num.intValue());
        }
    }

    public static final class d extends gh4 implements nl3<Integer, y68<? extends Long>> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final y68<? extends Long> invoke(Integer num) {
            return TasksFragment.this.o().getCountdownFlow(num.intValue());
        }
    }

    public static final class e extends RecyclerView.ItemDecoration {
        public e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            m8 m8Var;
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            eu1 eu1Var = TasksFragment.this.i;
            pz3 pz3VarF = (eu1Var == null || (m8Var = eu1Var.i) == null) ? null : m8Var.f(childAdapterPosition);
            if (pz3VarF instanceof nm8 ? true : aa4.e(pz3VarF, yl8.a) ? true : pz3VarF instanceof zl8) {
                rect.top = pl2.e(8);
                return;
            }
            if (pz3VarF instanceof ir0) {
                pl2.e(16);
            } else if (pz3VarF instanceof ro8) {
                rect.top = pl2.e(24);
            } else {
                rect.top = pl2.e(8);
            }
        }
    }

    public static final class f extends gh4 implements nl3<Integer, Object> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Object invoke(Integer num) {
            m8 m8Var;
            List<pz3> list;
            int iIntValue = num.intValue();
            eu1 eu1Var = TasksFragment.this.i;
            if (eu1Var == null || (m8Var = eu1Var.i) == null || (list = m8Var.b) == null) {
                return null;
            }
            return (pz3) qn1.W(iIntValue, list);
        }
    }

    public static final class g extends gh4 implements nl3<Integer, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            TasksFragment.this.o().sendBannerShownEvent(num.intValue());
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<Boolean, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            TasksFragment.this.o().onShowcaseRenderStarted(bool.booleanValue());
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<lw7, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(lw7 lw7Var) {
            lw7 lw7Var2 = lw7Var;
            lw7Var2.getClass();
            TasksFragment.this.o().onShowcaseItemShown(lw7Var2);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.view.TasksFragment$showAd$1$2", f = "TasksFragment.kt", l = {PsExtractor.VIDEO_STREAM_MASK}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ List<w48> n;

        public static final class a extends gh4 implements ll3<j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(TasksFragment tasksFragment) {
                super(0);
                this.f = tasksFragment;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                this.f.o().showLoading(true);
                return j59.a;
            }
        }

        public static final class b extends gh4 implements ll3<j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(TasksFragment tasksFragment) {
                super(0);
                this.f = tasksFragment;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                this.f.o().showLoading(false);
                return j59.a;
            }
        }

        public static final class c extends gh4 implements ll3<j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(TasksFragment tasksFragment) {
                super(0);
                this.f = tasksFragment;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                a aVar = TasksFragment.q;
                View view = this.f.getView();
                if (view != null) {
                    oz1.i(R.string.ad_load_error_message, view);
                }
                return j59.a;
            }
        }

        public static final class d extends gh4 implements nl3<String, j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(TasksFragment tasksFragment) {
                super(1);
                this.f = tasksFragment;
            }

            @Override // defpackage.nl3
            public final j59 invoke(String str) {
                String str2 = str;
                str2.getClass();
                TasksPresenter.sendAdWatched$default(this.f.o(), null, str2, 1, null);
                return j59.a;
            }
        }

        public static final class e extends gh4 implements ll3<j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(TasksFragment tasksFragment) {
                super(0);
                this.f = tasksFragment;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                this.f.o().onAdShown();
                return j59.a;
            }
        }

        public static final class f extends gh4 implements ll3<j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(TasksFragment tasksFragment) {
                super(0);
                this.f = tasksFragment;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                this.f.o().onAdDismissedWithoutReward();
                return j59.a;
            }
        }

        public static final class g extends gh4 implements ll3<j59> {
            public final /* synthetic */ TasksFragment f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public g(TasksFragment tasksFragment) {
                super(0);
                this.f = tasksFragment;
            }

            @Override // defpackage.ll3
            public final j59 invoke() {
                this.f.o().onAdNoFill();
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public j(List<? extends w48> list, e02<? super j> e02Var) {
            super(2, e02Var);
            this.n = list;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TasksFragment.this.new j(this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((j) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                a aVar = TasksFragment.q;
                TasksFragment tasksFragment = TasksFragment.this;
                a8 a8Var = (a8) tasksFragment.h.getValue();
                FragmentActivity fragmentActivityRequireActivity = tasksFragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                a aVar2 = new a(tasksFragment);
                b bVar = new b(tasksFragment);
                c cVar = new c(tasksFragment);
                d dVar = new d(tasksFragment);
                e eVar = new e(tasksFragment);
                f fVar = new f(tasksFragment);
                g gVar = new g(tasksFragment);
                this.l = 1;
                if (a8Var.a(fragmentActivityRequireActivity, aVar2, bVar, cVar, dVar, eVar, fVar, gVar, this.n, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public static final class k extends b0 implements s22 {
        public k() {
            super(s22.a.b);
        }

        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
            a aVar = TasksFragment.q;
            View view = TasksFragment.this.getView();
            if (view != null) {
                oz1.i(R.string.ad_load_error_message, view);
            }
        }
    }

    public static final class l implements ll3<a8> {
        public l() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [a8, java.lang.Object] */
        @Override // defpackage.ll3
        public final a8 invoke() {
            return m2.c(a8.class, defpackage.e.e(TasksFragment.this), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(TasksFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;", 0);
        x07.a.getClass();
        r = new ze4[]{bs6Var};
        q = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentTasksBinding n() {
        return (FragmentTasksBinding) this.g.getValue(this, r[0]);
    }

    public final TasksPresenter o() {
        TasksPresenter tasksPresenter = this.presenter;
        if (tasksPresenter != null) {
            return tasksPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        k07 k07Var = this.j;
        if (k07Var != null) {
            k07Var.b(z);
        }
        nw7 nw7Var = this.k;
        if (nw7Var != null) {
            nw7Var.k = z;
            nw7Var.b();
        }
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().onResume();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        TextView textView = n().incldTryAgain.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
        RecyclerView recyclerView = n().rvContent;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        eu1 eu1Var = new eu1(new tl8(o()), new mm8(o()), new v10(qo8.c, 2), new pm8(o(), o()), new am8(o(), o()), new xl8(wl8.c), new dm8(), new hr0(o(), new c(), LifecycleOwnerKt.getLifecycleScope(this)), new qh9(o(), new d(), LifecycleOwnerKt.getLifecycleScope(this)), new ar1(o()));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new e());
        n().swipeToRefresh.setOnRefreshListener(new o32(this));
        RecyclerView recyclerView2 = n().rvContent;
        recyclerView2.getClass();
        k07 k07Var = new k07(recyclerView2, new f(), new g(), 0.8f);
        k07Var.b(isHidden());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        k07Var.a(viewLifecycleOwner);
        this.j = k07Var;
        RecyclerView recyclerView3 = n().rvContent;
        recyclerView3.getClass();
        nw7 nw7Var = new nw7(recyclerView3, o().getShowcaseRenderState(), new h(), new i(), 0.9f);
        nw7Var.k = isHidden();
        nw7Var.b();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        viewLifecycleOwner2.getClass();
        nw7Var.a(viewLifecycleOwner2);
        this.k = nw7Var;
    }

    public final TasksPresenter providePresenter() {
        Parcelable parcelable;
        uf3 uf3Var = (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null);
        vn8 vn8Var = (vn8) m2.c(vn8.class, defpackage.e.e(this), null, null);
        zl2 zl2Var = (zl2) m2.c(zl2.class, defpackage.e.e(this), null, null);
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("REASON_KEY", TasksReason.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("REASON_KEY");
            if (!(parcelable2 instanceof TasksReason)) {
                parcelable2 = null;
            }
            parcelable = (TasksReason) parcelable2;
        }
        return new TasksPresenter(uf3Var, vn8Var, zl2Var, (TasksReason) parcelable, (p63) m2.c(p63.class, defpackage.e.e(this), null, null), (o83) m2.c(o83.class, defpackage.e.e(this), null, null), (c47) m2.c(c47.class, defpackage.e.e(this), null, null), (mo7) m2.c(mo7.class, defpackage.e.e(this), null, null), (up8) m2.c(up8.class, defpackage.e.e(this), null, null), (cc7) m2.c(cc7.class, defpackage.e.e(this), null, null), (bc7) m2.c(bc7.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void setContent(List<? extends so8> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        nw7 nw7Var = this.k;
        if (nw7Var != null) {
            nw7Var.d(o().getShowcaseRows());
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showAd(List<? extends w48> list) {
        Object aVar;
        list.getClass();
        try {
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            viewLifecycleOwner.getClass();
            aVar = av0.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), new k(), null, new j(list, null), 2);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            o().showLoading(false);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showAdResult(DailyBonusPoints dailyBonusPoints) {
        dailyBonusPoints.getClass();
        DailyBonusPointsDialog dailyBonusPointsDialog = this.n;
        if (dailyBonusPointsDialog != null) {
            dailyBonusPointsDialog.dismiss();
        }
        DailyBonusPointsDialog.d.getClass();
        DailyBonusPointsDialog dailyBonusPointsDialog2 = new DailyBonusPointsDialog();
        dailyBonusPointsDialog2.setArguments(BundleKt.bundleOf(new b36("DAILY_BONUS_KEY", dailyBonusPoints)));
        this.n = dailyBonusPointsDialog2;
        l(dailyBonusPointsDialog2);
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showDefaultError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showErrorLoading(boolean z) {
        ConstraintLayout root = n().incldTryAgain.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialog = this.m;
        if (!z) {
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
        } else {
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.m = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showOrdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.l;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.l = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showTaskError(hn8 hn8Var) {
        hn8Var.getClass();
        TaskErrorBottomSheet taskErrorBottomSheet = this.p;
        if (taskErrorBottomSheet != null) {
            taskErrorBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskErrorBottomSheet taskErrorBottomSheet2 = new TaskErrorBottomSheet(context, hn8Var);
            this.p = taskErrorBottomSheet2;
            taskErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showTaskSuccess(int i2, no8 no8Var) {
        no8Var.getClass();
        TaskSuccessBottomSheet taskSuccessBottomSheet = this.o;
        if (taskSuccessBottomSheet != null) {
            taskSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskSuccessBottomSheet taskSuccessBottomSheet2 = new TaskSuccessBottomSheet(context, i2, no8Var);
            this.o = taskSuccessBottomSheet2;
            taskSuccessBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void showToolbar(boolean z) {
        TextView textView = n().toolbar;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public final void turnOffRefreshing() {
        n().swipeToRefresh.setRefreshing(false);
    }
}

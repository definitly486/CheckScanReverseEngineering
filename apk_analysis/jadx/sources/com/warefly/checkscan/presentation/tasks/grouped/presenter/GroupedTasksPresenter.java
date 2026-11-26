package com.warefly.checkscan.presentation.tasks.grouped.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.am8;
import defpackage.av0;
import defpackage.b0;
import defpackage.b36;
import defpackage.b47;
import defpackage.bc7;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.c47;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fe;
import defpackage.g73;
import defpackage.hn8;
import defpackage.i57;
import defpackage.id3;
import defpackage.j59;
import defpackage.jn8;
import defpackage.kd;
import defpackage.kk1;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.li7;
import defpackage.lw7;
import defpackage.nn8;
import defpackage.no8;
import defpackage.o22;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.qw7;
import defpackage.r57;
import defpackage.rw7;
import defpackage.s22;
import defpackage.s57;
import defpackage.sw7;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vn8;
import defpackage.wp8;
import defpackage.xn8;
import defpackage.y22;
import defpackage.zn8;
import defpackage.zp8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class GroupedTasksPresenter extends BasePresenter<GroupedTasksView> implements am8.b, fe {
    private final g73 fetchGroupedTasksUseCase;
    private final uf3 flowRouter;
    private final vn8 interactor;
    private boolean isSameShowcaseList;
    private final c47 resolveTaskOpenTargetUseCase;
    private final bc7 saveShowcaseClick;
    private final up8 showcaseAnalytics;
    private wp8 showcaseContext;
    private final qw7 showcaseRenderState;
    private List<? extends List<? extends sw7>> showcaseRows;
    private final rw7 shownState;
    private final int taskId;

    public static final class a extends b0 implements s22 {
        public a() {
            super(s22.a.b);
        }

        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
            GroupedTasksView groupedTasksView = (GroupedTasksView) GroupedTasksPresenter.this.getViewState();
            if (groupedTasksView != null) {
                groupedTasksView.showError(true);
            }
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter$fetchContent$2", f = "GroupedTasksPresenter.kt", l = {114}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return GroupedTasksPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0044  */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            boolean z;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            GroupedTasksPresenter groupedTasksPresenter = GroupedTasksPresenter.this;
            if (i == 0) {
                r57.b(obj);
                g73 g73Var = groupedTasksPresenter.fetchGroupedTasksUseCase;
                int i2 = groupedTasksPresenter.taskId;
                this.l = 1;
                obj = g73Var.a.b(i2, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            jn8 jn8Var = (jn8) obj;
            String str = jn8Var.c;
            ArrayList arrayList = jn8Var.b;
            if (str != null) {
                wp8 wp8Var = groupedTasksPresenter.showcaseContext;
                z = str.equals(wp8Var != null ? wp8Var.a : null);
            }
            groupedTasksPresenter.isSameShowcaseList = z;
            groupedTasksPresenter.showcaseContext = new wp8(jn8Var.c, jn8Var.d, jn8Var.e, jn8Var.f, null);
            groupedTasksPresenter.showcaseRows = zp8.b(arrayList);
            GroupedTasksView groupedTasksView = (GroupedTasksView) groupedTasksPresenter.getViewState();
            if (groupedTasksView != null) {
                groupedTasksView.showToolbarTitle(jn8Var.a);
            }
            GroupedTasksView groupedTasksView2 = (GroupedTasksView) groupedTasksPresenter.getViewState();
            if (groupedTasksView2 != null) {
                groupedTasksView2.showError(false);
            }
            GroupedTasksView groupedTasksView3 = (GroupedTasksView) groupedTasksPresenter.getViewState();
            if (groupedTasksView3 != null) {
                groupedTasksView3.showItems(arrayList);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter$onClaimReward$1", f = "GroupedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i, e02<? super c> e02Var) {
            super(2, e02Var);
            this.n = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = GroupedTasksPresenter.this.new c(this.n, e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            kk1 kk1Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if ((i57Var instanceof i57.c) && (kk1Var = (kk1) ((i57.c) i57Var).a) != null) {
                GroupedTasksPresenter.this.handleClaimResult(this.n, kk1Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter$onClaimReward$2", f = "GroupedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements dm3<id3<? super i57<? extends kk1>>, Throwable, e02<? super j59>, Object> {
        public d(e02<? super d> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super i57<? extends kk1>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return GroupedTasksPresenter.this.new d(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            GroupedTasksPresenter.this.fetchContent();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter$openSkipDetailsTask$1", f = "GroupedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<i57<? extends xn8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ TasksReason n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(TasksReason tasksReason, e02<? super e> e02Var) {
            super(2, e02Var);
            this.n = tasksReason;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = GroupedTasksPresenter.this.new e(this.n, e02Var);
            eVar.l = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends xn8> i57Var, e02<? super j59> e02Var) {
            return ((e) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            GroupedTasksPresenter groupedTasksPresenter = GroupedTasksPresenter.this;
            if (z) {
                GroupedTasksView groupedTasksView = (GroupedTasksView) groupedTasksPresenter.getViewState();
                if (groupedTasksView != null) {
                    groupedTasksView.showLoading(false);
                }
                GroupedTasksView groupedTasksView2 = (GroupedTasksView) groupedTasksPresenter.getViewState();
                if (groupedTasksView2 != null) {
                    groupedTasksView2.showDefaultError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                GroupedTasksView groupedTasksView3 = (GroupedTasksView) groupedTasksPresenter.getViewState();
                if (groupedTasksView3 != null) {
                    groupedTasksView3.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                GroupedTasksView groupedTasksView4 = (GroupedTasksView) groupedTasksPresenter.getViewState();
                if (groupedTasksView4 != null) {
                    groupedTasksView4.showLoading(false);
                }
                zn8.a(groupedTasksPresenter.flowRouter, (xn8) ((i57.c) i57Var).a, this.n, (BaseView) groupedTasksPresenter.getViewState());
            }
            return j59.a;
        }
    }

    public static final class f implements qw7 {
        public final /* synthetic */ rw7 a;

        public f() {
            this.a = GroupedTasksPresenter.this.shownState;
        }

        @Override // defpackage.qw7
        public final void a(String str) {
            str.getClass();
            rw7 rw7Var = this.a;
            rw7Var.getClass();
            rw7Var.b.add(str);
        }

        @Override // defpackage.qw7
        public final boolean b(String str) {
            str.getClass();
            rw7 rw7Var = this.a;
            rw7Var.getClass();
            return rw7Var.b.contains(str);
        }

        @Override // defpackage.qw7
        public final List<b36<String, Integer>> c() {
            return this.a.a;
        }

        @Override // defpackage.qw7
        public final void d() {
            GroupedTasksPresenter groupedTasksPresenter = GroupedTasksPresenter.this;
            if (groupedTasksPresenter.isSameShowcaseList) {
                return;
            }
            groupedTasksPresenter.shownState.d();
        }

        @Override // defpackage.qw7
        public final void e(List<b36<String, Integer>> list) {
            rw7 rw7Var = this.a;
            rw7Var.getClass();
            rw7Var.a = list;
        }
    }

    public GroupedTasksPresenter(int i, uf3 uf3Var, vn8 vn8Var, g73 g73Var, c47 c47Var, bc7 bc7Var, up8 up8Var) {
        uf3Var.getClass();
        vn8Var.getClass();
        g73Var.getClass();
        c47Var.getClass();
        bc7Var.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.flowRouter = uf3Var;
        this.interactor = vn8Var;
        this.fetchGroupedTasksUseCase = g73Var;
        this.resolveTaskOpenTargetUseCase = c47Var;
        this.saveShowcaseClick = bc7Var;
        this.showcaseAnalytics = up8Var;
        this.shownState = new rw7();
        this.showcaseRenderState = new f();
        this.showcaseRows = kx2.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fetchContent() {
        av0.c(getPresenterScope(), new a(), null, new b(null), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(int i, kk1 kk1Var) {
        GroupedTasksView groupedTasksView;
        if (kk1Var instanceof no8) {
            GroupedTasksView groupedTasksView2 = (GroupedTasksView) getViewState();
            if (groupedTasksView2 != null) {
                groupedTasksView2.showTaskSuccess(i, (no8) kk1Var);
                return;
            }
            return;
        }
        if (!(kk1Var instanceof hn8) || (groupedTasksView = (GroupedTasksView) getViewState()) == null) {
            return;
        }
        groupedTasksView.showTaskError((hn8) kk1Var);
    }

    private final void openSkipDetailsTask(int i, TasksReason tasksReason) {
        c47 c47Var = this.resolveTaskOpenTargetUseCase;
        c47Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new b47(c47Var, i, null))), new e(tasksReason, null)));
    }

    private final void sendShowcaseClick(int i) {
        String strB;
        ArrayList arrayListR = kn1.r(this.showcaseRows);
        Iterator it = arrayListR.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            Integer numA = ((sw7) it.next()).a();
            if (numA != null && numA.intValue() == i) {
                break;
            } else {
                i2++;
            }
        }
        up8 up8Var = this.showcaseAnalytics;
        sw7 sw7Var = (sw7) qn1.W(i2, arrayListR);
        if (sw7Var == null || (strB = sw7Var.b()) == null) {
            strB = "task";
        }
        up8Var.k(strB, i, i2 >= 0 ? Integer.valueOf(i2 + 1) : null, arrayListR.size(), this.showcaseContext);
    }

    public final qw7 getShowcaseRenderState() {
        return this.showcaseRenderState;
    }

    public final List<List<sw7>> getShowcaseRows() {
        return this.showcaseRows;
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // am8.b
    public void onClaimReward(int i) {
        vn8 vn8Var = this.interactor;
        vn8Var.getClass();
        launchInPresenter(new be3(new df3(s57.a(new tb7(new nn8(vn8Var, i, null))), new c(i, null)), new d(null)));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        fetchContent();
    }

    public final void onShowcaseItemShown(lw7 lw7Var) {
        lw7Var.getClass();
        this.showcaseAnalytics.l(lw7Var, this.showcaseContext);
    }

    @Override // am8.b
    public void onTaskClicked(int i, TasksReason tasksReason, boolean z) {
        tasksReason.getClass();
        new kd.s0.f.a.c(i).a();
        wp8 wp8Var = this.showcaseContext;
        if (wp8Var != null) {
            this.saveShowcaseClick.a.b(i, wp8Var);
        }
        sendShowcaseClick(i);
        if (z && (tasksReason instanceof TasksReason.TaskDetails)) {
            openSkipDetailsTask(i, tasksReason);
            return;
        }
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(tasksReason);
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    public final void refreshContent() {
        GroupedTasksView groupedTasksView = (GroupedTasksView) getViewState();
        if (groupedTasksView != null) {
            groupedTasksView.showError(false);
        }
        fetchContent();
    }

    @Override // defpackage.fe
    public void sendTaskShownEvent(int i) {
        new kd.s0.f.a.e(i).a();
    }
}

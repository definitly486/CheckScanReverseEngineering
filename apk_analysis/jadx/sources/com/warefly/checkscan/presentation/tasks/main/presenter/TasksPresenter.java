package com.warefly.checkscan.presentation.tasks.main.presenter;

import android.os.SystemClock;
import com.my.tracker.ads.AdFormat;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.presentation.tasks.main.view.TasksView;
import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.am8;
import defpackage.ar1;
import defpackage.av0;
import defpackage.b06;
import defpackage.b47;
import defpackage.bc7;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.c47;
import defpackage.cc7;
import defpackage.cr1;
import defpackage.de3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.em8;
import defpackage.eo0;
import defpackage.f02;
import defpackage.fe;
import defpackage.fm8;
import defpackage.fo0;
import defpackage.gh4;
import defpackage.hd3;
import defpackage.hg;
import defpackage.hn8;
import defpackage.i57;
import defpackage.id3;
import defpackage.ir0;
import defpackage.j59;
import defpackage.kd;
import defpackage.kk1;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.kz7;
import defpackage.li7;
import defpackage.ll3;
import defpackage.lw7;
import defpackage.mb4;
import defpackage.me0;
import defpackage.mm8;
import defpackage.mo7;
import defpackage.n83;
import defpackage.nl3;
import defpackage.nm8;
import defpackage.nn1;
import defpackage.nn8;
import defpackage.no8;
import defpackage.o63;
import defpackage.o83;
import defpackage.oi2;
import defpackage.p63;
import defpackage.pg8;
import defpackage.pm8;
import defpackage.pn8;
import defpackage.px;
import defpackage.qn1;
import defpackage.qo2;
import defpackage.qw7;
import defpackage.r57;
import defpackage.rh9;
import defpackage.rw7;
import defpackage.s57;
import defpackage.sh2;
import defpackage.so8;
import defpackage.sw7;
import defpackage.tb7;
import defpackage.tl8;
import defpackage.u96;
import defpackage.ud3;
import defpackage.uf3;
import defpackage.un8;
import defpackage.up8;
import defpackage.vn8;
import defpackage.w48;
import defpackage.wp8;
import defpackage.xg5;
import defpackage.xn8;
import defpackage.y22;
import defpackage.y68;
import defpackage.yl8;
import defpackage.yo8;
import defpackage.zl2;
import defpackage.zl8;
import defpackage.zn8;
import defpackage.zp8;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class TasksPresenter extends BasePresenter<TasksView> implements am8.b, pm8.b, mm8.a, tl8.a, eo0.a, ar1.a, fe {

    @Deprecated
    public static final long COUNTDOWN_TICK_MILLIS = 1000;
    private static final a Companion = new a();
    private List<? extends w48> adOrder;
    private final xg5<i57<yo8>> content;
    private final Map<Integer, Long> countdownEnds;
    private mb4 countdownJob;
    private final Map<Integer, xg5<Long>> countdownMap;
    private final zl2 desktopInteractor;
    private final p63 fetchAdOrderUseCase;
    private mb4 fetchJob;
    private final o83 fetchTaskActionUseCase;
    private final uf3 flowRouter;
    private final vn8 interactor;
    private boolean isBannerFetchInProgress;
    private boolean isFirstFetch;
    private final i57.c<yo8> loadingContent;
    private final c47 resolveTaskOpenTargetUseCase;
    private final bc7 saveShowcaseClick;
    private final cc7 saveShowcaseContext;
    private final mo7 sendBannerWatchUseCase;
    private final xg5<Boolean> showAdLoading;
    private final up8 showcaseAnalytics;
    private final qw7 showcaseRenderState;
    private yo8 showcaseResponse;
    private List<? extends List<? extends sw7>> showcaseRows;
    private final TasksReason tasksReason;

    public static final class a {
    }

    public static final class b {
        public final String a;
        public final int b;

        public b(String str, int i) {
            str.getClass();
            this.a = str;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return hg.d(this.b, "ShowcaseClickTarget(block=", this.a, ", position=", ")");
        }
    }

    public static final /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[fo0.c.values().length];
            try {
                iArr[fo0.c.AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fo0.c.DAILY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class d implements hd3<i57<? extends yo8>> {
        public final /* synthetic */ de3 b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ TasksPresenter d;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;
            public final /* synthetic */ boolean c;
            public final /* synthetic */ TasksPresenter d;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$d$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$fetchContent$$inlined$map$1$2", f = "TasksPresenter.kt", l = {217}, m = "emit")
            public static final class C0172a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0172a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(id3 id3Var, boolean z, TasksPresenter tasksPresenter) {
                this.b = id3Var;
                this.c = z;
                this.d = tasksPresenter;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0172a c0172a;
                if (e02Var instanceof C0172a) {
                    c0172a = (C0172a) e02Var;
                    int i = c0172a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0172a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0172a = new C0172a(e02Var);
                    }
                } else {
                    c0172a = new C0172a(e02Var);
                }
                Object obj2 = c0172a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0172a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    i57 i57VarKeepShownBanner = (i57) obj;
                    if (!this.c) {
                        i57VarKeepShownBanner = this.d.keepShownBanner(i57VarKeepShownBanner);
                    }
                    c0172a.m = 1;
                    if (this.b.emit(i57VarKeepShownBanner, c0172a) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj2);
                }
                return j59.a;
            }
        }

        public d(de3 de3Var, boolean z, TasksPresenter tasksPresenter) {
            this.b = de3Var;
            this.c = z;
            this.d = tasksPresenter;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super i57<? extends yo8>> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var, this.c, this.d), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$fetchContent$2", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<i57<? extends yo8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = TasksPresenter.this.new e(e02Var);
            eVar.l = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends yo8> i57Var, e02<? super j59> e02Var) {
            return ((e) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (!(i57Var instanceof i57.b)) {
                boolean z = i57Var instanceof i57.a;
                TasksPresenter tasksPresenter = TasksPresenter.this;
                if (!z || !tasksPresenter.hasLoadedContent()) {
                    tasksPresenter.content.setValue(i57Var);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$fetchContent$3", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements dm3<id3<? super i57<? extends yo8>>, Throwable, e02<? super j59>, Object> {
        public /* synthetic */ Throwable l;

        public f(e02<? super f> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super i57<? extends yo8>> id3Var, Throwable th, e02<? super j59> e02Var) {
            f fVar = TasksPresenter.this.new f(e02Var);
            fVar.l = th;
            return fVar.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (this.l == null) {
                TasksPresenter.this.isBannerFetchInProgress = false;
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$onClaimReward$1", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(int i, e02<? super g> e02Var) {
            super(2, e02Var);
            this.n = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = TasksPresenter.this.new g(this.n, e02Var);
            gVar.l = obj;
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((g) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            TasksPresenter tasksPresenter = TasksPresenter.this;
            int i = this.n;
            tasksPresenter.setClaimButtonLoading(i, i57Var instanceof i57.b);
            if (i57Var instanceof i57.c) {
                TasksPresenter.fetchContent$default(tasksPresenter, false, 1, null);
                kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                if (kk1Var != null) {
                    tasksPresenter.handleClaimResult(i, kk1Var);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$onFirstViewAttach$1", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class h extends pg8 implements bm3<List<? extends w48>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public h(e02<? super h> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            h hVar = TasksPresenter.this.new h(e02Var);
            hVar.l = obj;
            return hVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends w48> list, e02<? super j59> e02Var) {
            return ((h) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            TasksPresenter.this.adOrder = (List) this.l;
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$onFirstViewAttach$2", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class i extends pg8 implements bm3<i57<? extends yo8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public i(e02<? super i> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            i iVar = TasksPresenter.this.new i(e02Var);
            iVar.l = obj;
            return iVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends yo8> i57Var, e02<? super j59> e02Var) {
            return ((i) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            boolean z2 = true;
            TasksPresenter tasksPresenter = TasksPresenter.this;
            if (z) {
                TasksView tasksView = (TasksView) tasksPresenter.getViewState();
                if (tasksView != null) {
                    tasksView.showErrorLoading(true);
                }
            } else if (!aa4.e(i57Var, i57.b.a) && (i57Var instanceof i57.c)) {
                yo8 yo8Var = (yo8) ((i57.c) i57Var).a;
                List<so8> list = yo8Var.a;
                tasksPresenter.showcaseResponse = yo8Var;
                List<so8> list2 = list;
                boolean z3 = list2 instanceof Collection;
                if (!z3 || !list2.isEmpty()) {
                    Iterator<T> it = list2.iterator();
                    do {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                    } while (!(((so8) it.next()) instanceof nm8));
                } else {
                    z2 = false;
                    break;
                }
                tasksPresenter.sendBannerShown(z2);
                TasksView tasksView2 = (TasksView) tasksPresenter.getViewState();
                if (tasksView2 != null) {
                    tasksView2.showErrorLoading(false);
                }
                tasksPresenter.setTimersForBonusPoints(list);
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list2) {
                    so8 so8Var = (so8) obj2;
                    if (!(so8Var instanceof fm8) || !((fm8) so8Var).isDone()) {
                        arrayList.add(obj2);
                    }
                }
                if (!z3 || !list2.isEmpty()) {
                    for (so8 so8Var2 : list2) {
                        if ((so8Var2 instanceof fm8) && ((fm8) so8Var2).isDone()) {
                            arrayList = qn1.i0(cr1.a, arrayList);
                            break;
                        }
                    }
                }
                tasksPresenter.showcaseRows = zp8.b(arrayList);
                TasksView tasksView3 = (TasksView) tasksPresenter.getViewState();
                if (tasksView3 != null) {
                    tasksView3.setContent(arrayList);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$onFirstViewAttach$3", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public j(e02<? super j> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            j jVar = TasksPresenter.this.new j(e02Var);
            jVar.l = ((Boolean) obj).booleanValue();
            return jVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((j) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            boolean z = this.l;
            TasksView tasksView = (TasksView) TasksPresenter.this.getViewState();
            if (tasksView != null) {
                tasksView.showLoading(z);
            }
            return j59.a;
        }
    }

    public static final class k extends gh4 implements ll3<j59> {
        public k() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            TasksView tasksView = (TasksView) TasksPresenter.this.getViewState();
            if (tasksView != null) {
                tasksView.showDefaultError();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$openTaskAction$1", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class l extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public l(e02<? super l> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            l lVar = TasksPresenter.this.new l(e02Var);
            lVar.l = obj;
            return lVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((l) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TasksPresenter tasksPresenter = TasksPresenter.this;
            if (z) {
                TasksView tasksView = (TasksView) tasksPresenter.getViewState();
                if (tasksView != null) {
                    tasksView.showLoading(false);
                }
                TasksView tasksView2 = (TasksView) tasksPresenter.getViewState();
                if (tasksView2 != null) {
                    tasksView2.showDefaultError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                TasksView tasksView3 = (TasksView) tasksPresenter.getViewState();
                if (tasksView3 != null) {
                    tasksView3.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                TasksView tasksView4 = (TasksView) tasksPresenter.getViewState();
                if (tasksView4 != null) {
                    tasksView4.showLoading(false);
                }
                TasksView tasksView5 = (TasksView) tasksPresenter.getViewState();
                if (tasksView5 != null) {
                    tasksView5.openUrl((String) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    public static final class m extends gh4 implements ll3<j59> {
        public final /* synthetic */ TasksReason.TaskDetails g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(TasksReason.TaskDetails taskDetails) {
            super(0);
            this.g = taskDetails;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            uf3 uf3Var = TasksPresenter.this.flowRouter;
            li7 li7Var = new li7(this.g);
            uf3Var.getClass();
            uf3Var.c.d(li7Var);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$resolveTaskOpenTarget$1", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class n extends pg8 implements bm3<i57<? extends xn8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ ll3<j59> n;
        public final /* synthetic */ TasksReason o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(ll3<j59> ll3Var, TasksReason tasksReason, e02<? super n> e02Var) {
            super(2, e02Var);
            this.n = ll3Var;
            this.o = tasksReason;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            n nVar = TasksPresenter.this.new n(this.n, this.o, e02Var);
            nVar.l = obj;
            return nVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends xn8> i57Var, e02<? super j59> e02Var) {
            return ((n) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TasksPresenter tasksPresenter = TasksPresenter.this;
            if (z) {
                TasksView tasksView = (TasksView) tasksPresenter.getViewState();
                if (tasksView != null) {
                    tasksView.showLoading(false);
                }
                this.n.invoke();
            } else if (aa4.e(i57Var, i57.b.a)) {
                TasksView tasksView2 = (TasksView) tasksPresenter.getViewState();
                if (tasksView2 != null) {
                    tasksView2.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                TasksView tasksView3 = (TasksView) tasksPresenter.getViewState();
                if (tasksView3 != null) {
                    tasksView3.showLoading(false);
                }
                zn8.a(tasksPresenter.flowRouter, (xn8) ((i57.c) i57Var).a, this.o, (BaseView) tasksPresenter.getViewState());
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$sendAdWatched$1", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class o extends pg8 implements bm3<i57<? extends DailyBonusPoints>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public o(e02<? super o> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            o oVar = TasksPresenter.this.new o(e02Var);
            oVar.l = obj;
            return oVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends DailyBonusPoints> i57Var, e02<? super j59> e02Var) {
            return ((o) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            TasksView tasksView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (i57Var instanceof i57.c) {
                TasksPresenter tasksPresenter = TasksPresenter.this;
                TasksPresenter.fetchContent$default(tasksPresenter, false, 1, null);
                DailyBonusPoints dailyBonusPoints = (DailyBonusPoints) ((i57.c) i57Var).a;
                if (dailyBonusPoints != null && (tasksView = (TasksView) tasksPresenter.getViewState()) != null) {
                    tasksView.showAdResult(dailyBonusPoints);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$setCountdowns$1", f = "TasksPresenter.kt", l = {112}, m = "invokeSuspend")
    public static final class p extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public p(e02<? super p> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TasksPresenter.this.new p(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((p) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0024  */
        /* JADX WARN: Code duplicated, block: B:13:0x003b  */
        /* JADX WARN: Code duplicated, block: B:16:0x0047  */
        /* JADX WARN: Code duplicated, block: B:22:0x0073  */
        /* JADX WARN: Code duplicated, block: B:24:0x0076  */
        /* JADX WARN: Code duplicated, block: B:27:0x0082 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:33:0x0053 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:36:0x0041 A[SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0080 -> B:28:0x0083). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r11.l
                r2 = 0
                r3 = 1
                com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter r4 = com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter.this
                if (r1 == 0) goto L17
                if (r1 != r3) goto L11
                defpackage.r57.b(r12)
                goto L83
            L11:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r11)
                return r2
            L17:
                defpackage.r57.b(r12)
            L1a:
                java.util.Map r12 = com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter.access$getCountdownEnds$p(r4)
                boolean r12 = r12.isEmpty()
                if (r12 != 0) goto L8b
                java.util.Map r12 = com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter.access$getCountdownEnds$p(r4)
                java.util.Collection r12 = r12.values()
                java.lang.Iterable r12 = (java.lang.Iterable) r12
                r12.getClass()
                java.util.Iterator r12 = r12.iterator()
                boolean r1 = r12.hasNext()
                if (r1 == 0) goto L87
                java.lang.Object r1 = r12.next()
                java.lang.Comparable r1 = (java.lang.Comparable) r1
            L41:
                boolean r5 = r12.hasNext()
                if (r5 == 0) goto L55
                java.lang.Object r5 = r12.next()
                java.lang.Comparable r5 = (java.lang.Comparable) r5
                int r6 = r1.compareTo(r5)
                if (r6 <= 0) goto L41
                r1 = r5
                goto L41
            L55:
                java.lang.Number r1 = (java.lang.Number) r1
                long r5 = r1.longValue()
                long r7 = android.os.SystemClock.elapsedRealtime()
                long r5 = r5 - r7
                r7 = 1000(0x3e8, double:4.94E-321)
                long r5 = r5 % r7
                java.lang.Long r12 = new java.lang.Long
                r12.<init>(r5)
                long r5 = r12.longValue()
                r9 = 0
                int r1 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
                if (r1 <= 0) goto L73
                goto L74
            L73:
                r12 = r2
            L74:
                if (r12 == 0) goto L7a
                long r7 = r12.longValue()
            L7a:
                r11.l = r3
                java.lang.Object r12 = defpackage.yk2.b(r7, r11)
                if (r12 != r0) goto L83
                return r0
            L83:
                com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter.access$updateCountdowns(r4)
                goto L1a
            L87:
                defpackage.qz0.e()
                return r2
            L8b:
                j59 r11 = defpackage.j59.a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter.p.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$subscribeOnEvents$1", f = "TasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class q extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public q(e02<? super q> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            q qVar = TasksPresenter.this.new q(e02Var);
            qVar.l = obj;
            return qVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((q) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.h) {
                TasksPresenter.fetchContent$default(TasksPresenter.this, false, 1, null);
            }
            return j59.a;
        }
    }

    public static final class r extends gh4 implements nl3<Map.Entry<Integer, Long>, Boolean> {
        public final /* synthetic */ long f;
        public final /* synthetic */ TasksPresenter g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(long j, TasksPresenter tasksPresenter) {
            super(1);
            this.f = j;
            this.g = tasksPresenter;
        }

        @Override // defpackage.nl3
        public final Boolean invoke(Map.Entry<Integer, Long> entry) {
            Map.Entry<Integer, Long> entry2 = entry;
            entry2.getClass();
            int iIntValue = entry2.getKey().intValue();
            long jLongValue = entry2.getValue().longValue() - this.f;
            if (jLongValue < 0) {
                jLongValue = 0;
            }
            long j = ((500 + jLongValue) / 1000) * 1000;
            Map map = this.g.countdownMap;
            Integer numValueOf = Integer.valueOf(iIntValue);
            Object objA = map.get(numValueOf);
            if (objA == null) {
                objA = px.a(Long.valueOf(j));
                map.put(numValueOf, objA);
            }
            ((xg5) objA).setValue(Long.valueOf(j));
            return Boolean.valueOf(jLongValue == 0);
        }
    }

    public TasksPresenter(uf3 uf3Var, vn8 vn8Var, zl2 zl2Var, TasksReason tasksReason, p63 p63Var, o83 o83Var, c47 c47Var, mo7 mo7Var, up8 up8Var, cc7 cc7Var, bc7 bc7Var) {
        uf3Var.getClass();
        vn8Var.getClass();
        zl2Var.getClass();
        p63Var.getClass();
        o83Var.getClass();
        c47Var.getClass();
        mo7Var.getClass();
        up8Var.getClass();
        cc7Var.getClass();
        bc7Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = vn8Var;
        this.desktopInteractor = zl2Var;
        this.tasksReason = tasksReason;
        this.fetchAdOrderUseCase = p63Var;
        this.fetchTaskActionUseCase = o83Var;
        this.resolveTaskOpenTargetUseCase = c47Var;
        this.sendBannerWatchUseCase = mo7Var;
        this.showcaseAnalytics = up8Var;
        this.saveShowcaseContext = cc7Var;
        this.saveShowcaseClick = bc7Var;
        this.showcaseRenderState = new rw7();
        this.showcaseRows = kx2.b;
        this.countdownMap = new LinkedHashMap();
        this.countdownEnds = new LinkedHashMap();
        this.adOrder = u96.i(w48.YANDEX, w48.VK);
        this.showAdLoading = px.a(Boolean.FALSE);
        ArrayList arrayList = new ArrayList(10);
        int i2 = 0;
        while (i2 < 10) {
            arrayList.add(i2 == 0 ? yl8.a : em8.a);
            i2++;
        }
        i57.c<yo8> cVar = new i57.c<>(new yo8(null, null, null, null, arrayList));
        this.loadingContent = cVar;
        this.content = px.a(cVar);
        this.isFirstFetch = true;
    }

    private final void fetchContent(boolean z) {
        if (!this.isBannerFetchInProgress || z) {
            mb4 mb4Var = this.fetchJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.isBannerFetchInProgress = z;
            vn8 vn8Var = this.interactor;
            vn8Var.getClass();
            tb7 tb7Var = new tb7(new pn8(vn8Var, z, null));
            oi2 oi2Var = qo2.a;
            this.fetchJob = launchInPresenter(new be3(new df3(new d(s57.a(ud3.b(tb7Var, sh2.c)), z, this), new e(null)), new f(null)));
        }
    }

    public static /* synthetic */ void fetchContent$default(TasksPresenter tasksPresenter, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        tasksPresenter.fetchContent(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(int i2, kk1 kk1Var) {
        if (kk1Var instanceof no8) {
            this.showcaseAnalytics.p(i2);
            TasksView tasksView = (TasksView) getViewState();
            if (tasksView != null) {
                tasksView.showTaskSuccess(i2, (no8) kk1Var);
                return;
            }
            return;
        }
        if (kk1Var instanceof hn8) {
            this.showcaseAnalytics.j(i2);
            TasksView tasksView2 = (TasksView) getViewState();
            if (tasksView2 != null) {
                tasksView2.showTaskError((hn8) kk1Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasLoadedContent() {
        i57<yo8> value = this.content.getValue();
        return (value instanceof i57.c) && value != this.loadingContent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final i57<yo8> keepShownBanner(i57<yo8> i57Var) {
        yo8 yo8Var;
        if (!(i57Var instanceof i57.c)) {
            return i57Var;
        }
        i57<yo8> value = this.content.getValue();
        Object obj = null;
        i57.c cVar = value instanceof i57.c ? (i57.c) value : null;
        if (cVar == null || (yo8Var = (yo8) cVar.a) == null) {
            return i57Var;
        }
        for (Object obj2 : yo8Var.a) {
            if (((so8) obj2) instanceof zl8) {
                obj = obj2;
                break;
            }
        }
        so8 so8Var = (so8) obj;
        if (so8Var == null) {
            return i57Var;
        }
        yo8 yo8Var2 = (yo8) ((i57.c) i57Var).a;
        List<so8> list = yo8Var2.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        for (so8 so8Var2 : list) {
            if (so8Var2 instanceof zl8) {
                so8Var2 = so8Var;
            }
            arrayList.add(so8Var2);
        }
        return new i57.c(yo8.a(yo8Var2, arrayList));
    }

    private final void openSkipDetailsTask(int i2, TasksReason tasksReason) {
        resolveTaskOpenTarget(i2, tasksReason, new k());
    }

    private final void openTaskAction(int i2) {
        o83 o83Var = this.fetchTaskActionUseCase;
        o83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new n83(o83Var, i2, null))), new l(null)));
    }

    private final void openTaskFromDeeplink(TasksReason.TaskDetails taskDetails) {
        resolveTaskOpenTarget(taskDetails.b, taskDetails, new m(taskDetails));
    }

    private final void resolveTaskOpenTarget(int i2, TasksReason tasksReason, ll3<j59> ll3Var) {
        c47 c47Var = this.resolveTaskOpenTargetUseCase;
        c47Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new b47(c47Var, i2, null))), new n(ll3Var, tasksReason, null)));
    }

    public static /* synthetic */ void sendAdWatched$default(TasksPresenter tasksPresenter, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        tasksPresenter.sendAdWatched(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendBannerShown(boolean z) {
        if (z) {
            new kd.s0.c.a.b().a();
        }
    }

    private final void sendNewCurrencyBlockEvent(fo0.c cVar) {
        int i2 = c.a[cVar.ordinal()];
        if (i2 == 1) {
            kd.s0.b.a.e.a();
        } else {
            if (i2 != 2) {
                return;
            }
            kd.s0.c.b.a.e.a();
        }
    }

    private final void sendShowcaseClick(String str, Integer num) {
        String str2;
        if (num != null) {
            this.saveShowcaseClick.a.b(num.intValue(), null);
        }
        b bVarShowcaseItemOf = num != null ? showcaseItemOf(num.intValue(), str) : null;
        up8 up8Var = this.showcaseAnalytics;
        if (bVarShowcaseItemOf != null && (str2 = bVarShowcaseItemOf.a) != null) {
            str = str2;
        }
        up8Var.q(str, showcaseListSize(), num, bVarShowcaseItemOf != null ? Integer.valueOf(bVarShowcaseItemOf.b) : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void setClaimButtonLoading(int i2, boolean z) {
        i57<yo8> value;
        i57<yo8> cVar;
        kz7 kz7Var;
        int i3;
        xg5<i57<yo8>> xg5Var = this.content;
        do {
            value = xg5Var.getValue();
            cVar = value;
            if (cVar instanceof i57.c) {
                yo8 yo8Var = (yo8) ((i57.c) cVar).a;
                List<so8> list = yo8Var.a;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                for (Iterator it = list.iterator(); it.hasNext(); it = it) {
                    so8 kz7Var2 = (so8) it.next();
                    if ((kz7Var2 instanceof kz7) && (i3 = (kz7Var = (kz7) kz7Var2).a) == i2) {
                        kz7Var2 = new kz7(i3, kz7Var.b, kz7Var.c, kz7Var.d, kz7Var.e, kz7Var.f, kz7Var.g, kz7Var.h, z, kz7Var.j, kz7Var.k, kz7Var.l, kz7Var.m);
                    }
                    arrayList.add(kz7Var2);
                }
                cVar = new i57.c(yo8.a(yo8Var, arrayList));
            }
        } while (!xg5Var.a(value, cVar));
    }

    private final void setCountdowns(Map<Integer, Long> map) {
        mb4 mb4Var = this.countdownJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.countdownEnds.clear();
        this.countdownEnds.putAll(map);
        updateCountdowns();
        this.countdownJob = av0.c(getPresenterScope(), null, null, new p(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTimersForBonusPoints(List<? extends so8> list) {
        Long l2;
        rh9 rh9Var;
        rh9.a aVar;
        Long l3;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (so8 so8Var : list) {
            if (so8Var instanceof ir0) {
                for (fo0 fo0Var : ((ir0) so8Var).b) {
                    fo0.a aVar2 = fo0Var.d;
                    if (aVar2 != null && (l2 = aVar2.d) != null) {
                        linkedHashMap.put(Integer.valueOf(fo0Var.a), Long.valueOf(l2.longValue()));
                    }
                }
            } else if ((so8Var instanceof rh9) && (aVar = (rh9Var = (rh9) so8Var).d) != null && (l3 = aVar.d) != null) {
                linkedHashMap.put(Integer.valueOf(rh9Var.a), Long.valueOf(l3.longValue()));
            }
        }
        setCountdowns(linkedHashMap);
    }

    private final b showcaseItemOf(int i2, String str) {
        Iterator<T> it = this.showcaseRows.iterator();
        int i3 = 0;
        b bVar = null;
        while (it.hasNext()) {
            for (sw7 sw7Var : (List) it.next()) {
                i3++;
                Integer numA = sw7Var.a();
                if (numA != null && numA.intValue() == i2) {
                    String strB = sw7Var.b();
                    b bVar2 = new b(strB, i3);
                    if (strB.equals(str)) {
                        return bVar2;
                    }
                    if (bVar == null) {
                        bVar = bVar2;
                    }
                }
            }
        }
        return bVar;
    }

    private final int showcaseListSize() {
        Iterator<T> it = this.showcaseRows.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((List) it.next()).size();
        }
        return size;
    }

    private final void subscribeOnEvents() {
        this.desktopInteractor.c(getPresenterScope(), new q(null));
    }

    private final String toShowcaseBlock(fo0.c cVar) {
        int i2 = c.a[cVar.ordinal()];
        if (i2 == 1) {
            return "daily_ad";
        }
        if (i2 == 2) {
            return "daily_bonus";
        }
        me0.e();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCountdowns() {
        nn1.z(this.countdownEnds.entrySet(), new r(SystemClock.elapsedRealtime(), this));
    }

    public final y68<Long> getCountdownFlow(int i2) {
        return this.countdownMap.get(Integer.valueOf(i2));
    }

    public final qw7 getShowcaseRenderState() {
        return this.showcaseRenderState;
    }

    public final List<List<sw7>> getShowcaseRows() {
        return this.showcaseRows;
    }

    public final void onAdDismissedWithoutReward() {
        this.showcaseAnalytics.c("dismissed");
    }

    public final void onAdNoFill() {
        this.showcaseAnalytics.c("no_fill");
    }

    public final void onAdShown() {
        this.showcaseAnalytics.d();
    }

    @Override // tl8.a
    public void onBannerClicked(int i2, String str) {
        str.getClass();
        new kd.s0.a.C0284a.C0285a(i2, "Clicks").a();
        sendShowcaseClick(AdFormat.BANNER, Integer.valueOf(i2));
        TasksView tasksView = (TasksView) getViewState();
        if (tasksView != null) {
            tasksView.openUrlInCustomTab(str);
        }
    }

    @Override // tl8.a
    public void onBannerOrdClicked(b06 b06Var) {
        b06Var.getClass();
        TasksView tasksView = (TasksView) getViewState();
        if (tasksView != null) {
            tasksView.showOrdInfoDialog(b06Var);
        }
    }

    @Override // eo0.a
    public void onBonusPointsClaimClicked(int i2, fo0.c cVar) {
        cVar.getClass();
        sendNewCurrencyBlockEvent(cVar);
        sendShowcaseClick(toShowcaseBlock(cVar), Integer.valueOf(i2));
        int i3 = c.a[cVar.ordinal()];
        if (i3 == 1) {
            TasksView tasksView = (TasksView) getViewState();
            if (tasksView != null) {
                tasksView.showAd(this.adOrder);
                return;
            }
            return;
        }
        if (i3 != 2) {
            return;
        }
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(new TasksReason.DailyTask(i2));
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    @Override // am8.b
    public void onClaimReward(int i2) {
        vn8 vn8Var = this.interactor;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new nn8(vn8Var, i2, null))), new g(i2, null)));
    }

    @Override // ar1.a
    public void onCompletedTasksClicked() {
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(TasksReason.CompletedTasks.b);
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    @Override // mm8.a
    public void onDailyBannerClicked(int i2) {
        new kd.s0.c.a.C0287a().a();
        sendShowcaseClick("daily_bonus", Integer.valueOf(i2));
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(new TasksReason.DailyTask(i2));
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    @Override // pm8.b
    public void onDailyTaskCardClicked(int i2) {
        new kd.s0.c.a.C0287a().a();
        new kd.s0.f.a.c(i2).a();
        sendShowcaseClick("daily_bonus", Integer.valueOf(i2));
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(new TasksReason.DailyTask(i2));
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        TasksView tasksView = (TasksView) getViewState();
        if (tasksView != null) {
            tasksView.showToolbar(true);
        }
        Map mapSingletonMap = Collections.singletonMap("Shows", "Shows");
        mapSingletonMap.getClass();
        new kd.s0.e.a("Tasks Showcase", mapSingletonMap).a();
        p63 p63Var = this.fetchAdOrderUseCase;
        p63Var.getClass();
        launchInPresenter(new df3(new tb7(new o63(p63Var, null)), new h(null)));
        launchInPresenter(new df3(this.content, new i(null)));
        subscribeOnEvents();
        launchInPresenter(new df3(this.showAdLoading, new j(null)));
        TasksReason tasksReason = this.tasksReason;
        if (tasksReason instanceof TasksReason.TaskDetails) {
            openTaskFromDeeplink((TasksReason.TaskDetails) tasksReason);
        } else if (tasksReason != null) {
            uf3 uf3Var = this.flowRouter;
            li7 li7Var = new li7(tasksReason);
            uf3Var.getClass();
            uf3Var.c.d(li7Var);
        }
    }

    public final void onResume() {
        fetchContent(this.isFirstFetch);
        this.isFirstFetch = false;
    }

    public final void onShowcaseItemShown(lw7 lw7Var) {
        lw7Var.getClass();
        this.showcaseAnalytics.t(lw7Var);
    }

    public final void onShowcaseRenderStarted(boolean z) {
        if (z) {
            yo8 yo8Var = this.showcaseResponse;
            cc7 cc7Var = this.saveShowcaseContext;
            wp8 wp8Var = new wp8(yo8Var != null ? yo8Var.b : null, yo8Var != null ? yo8Var.c : null, yo8Var != null ? yo8Var.d : null, yo8Var != null ? yo8Var.e : null, null);
            cc7Var.getClass();
            cc7Var.a.a(wp8Var);
        }
        this.showcaseAnalytics.n(showcaseListSize());
    }

    @Override // am8.b
    public void onTaskClicked(int i2, TasksReason tasksReason, boolean z) {
        tasksReason.getClass();
        new kd.s0.f.a.c(i2).a();
        sendShowcaseClick("task", Integer.valueOf(i2));
        if (z) {
            if (tasksReason instanceof TasksReason.TaskDetails) {
                openSkipDetailsTask(i2, tasksReason);
                return;
            } else {
                openTaskAction(i2);
                return;
            }
        }
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(tasksReason);
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    public final void refreshContent(boolean z) {
        this.content.setValue(this.loadingContent);
        fetchContent(z);
        TasksView tasksView = (TasksView) getViewState();
        if (tasksView != null) {
            tasksView.turnOffRefreshing();
        }
    }

    public final void sendAdWatched(String str, String str2) {
        str2.getClass();
        kd.s0.b.C0286b.e.a();
        this.showcaseAnalytics.a();
        vn8 vn8Var = this.interactor;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new un8(vn8Var, str, str2, null))), new o(null)));
    }

    public final void sendBannerShownEvent(int i2) {
        new kd.s0.a.C0284a.b(i2, "Shows").a();
        this.sendBannerWatchUseCase.a(i2);
    }

    @Override // pm8.b
    public void sendDailyTaskShownEvent() {
        new kd.s0.c.a.b().a();
    }

    @Override // defpackage.fe
    public void sendTaskShownEvent(int i2) {
        new kd.s0.f.a.e(i2).a();
    }

    public final void showLoading(boolean z) {
        Boolean value;
        xg5<Boolean> xg5Var = this.showAdLoading;
        do {
            value = xg5Var.getValue();
            value.getClass();
        } while (!xg5Var.a(value, Boolean.valueOf(z)));
    }
}

package com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.view.CheckboxTaskStepsDetailsView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b06;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.ec1;
import defpackage.ek1;
import defpackage.fc1;
import defpackage.fk1;
import defpackage.hn8;
import defpackage.i57;
import defpackage.ix;
import defpackage.j59;
import defpackage.kk1;
import defpackage.kn1;
import defpackage.lb1;
import defpackage.mb1;
import defpackage.no8;
import defpackage.ob1;
import defpackage.pb1;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.r57;
import defpackage.rb1;
import defpackage.s57;
import defpackage.sb1;
import defpackage.tb7;
import defpackage.ub1;
import defpackage.uf3;
import defpackage.vm8;
import defpackage.w63;
import defpackage.x63;
import defpackage.xg5;
import defpackage.y63;
import defpackage.yk2;
import defpackage.z63;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CheckboxTaskStepsDetailsPresenter extends BasePresenter<CheckboxTaskStepsDetailsView> implements vm8.b, ub1.a, ob1.a, com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b, lb1.a, rb1.a {
    public static final a Companion = new a();
    private static final long WAIT_TIME_UNTIL_USER_ON_WEB = 5000;
    private final fk1 claimCheckboxTaskStepsUseCase;
    private final zl2 desktopInteractor;
    private final x63 fetchCheckboxStepsDetailsUseCase;
    private final z63 fetchCheckboxStepsSubtaskUseCase;
    private final uf3 flowRouter;
    private final xg5<ec1> sheetContent;
    private final int taskId;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$loadContent$1", f = "CheckboxTaskStepsDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends ec1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = CheckboxTaskStepsDetailsPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends ec1> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter = CheckboxTaskStepsDetailsPresenter.this;
            if (z) {
                CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState();
                if (checkboxTaskStepsDetailsView != null) {
                    checkboxTaskStepsDetailsView.showLoading(false);
                }
                ((CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()).showErrorState(true);
            } else if (aa4.e(i57Var, i57.b.a)) {
                ((CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()).showErrorState(false);
                ((CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()).showLoading(true);
            } else if (i57Var instanceof i57.c) {
                ((CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()).showErrorState(false);
                ((CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()).showLoading(false);
                xg5 xg5Var = checkboxTaskStepsDetailsPresenter.sheetContent;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, (ec1) ((i57.c) i57Var).a));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$onButtonStepTaskClicked$1", f = "CheckboxTaskStepsDetailsPresenter.kt", l = {200}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = CheckboxTaskStepsDetailsPresenter.this.new c(e02Var);
            cVar.m = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter = CheckboxTaskStepsDetailsPresenter.this;
            if (i == 0) {
                r57.b(obj);
                i57 i57Var = (i57) this.m;
                if (i57Var instanceof i57.a) {
                    CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView2 = (CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState();
                    if (checkboxTaskStepsDetailsView2 != null) {
                        checkboxTaskStepsDetailsView2.showError();
                    }
                    checkboxTaskStepsDetailsPresenter.setActionBlockButtonLoading(false);
                } else if (aa4.e(i57Var, i57.b.a)) {
                    checkboxTaskStepsDetailsPresenter.setActionBlockButtonLoading(true);
                } else if (i57Var instanceof i57.c) {
                    checkboxTaskStepsDetailsPresenter.setActionBlockButtonLoading(false);
                    String str = (String) ((i57.c) i57Var).a;
                    if (str != null && (checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()) != null) {
                        checkboxTaskStepsDetailsView.openUrlInCustomTab(str);
                    }
                    this.l = 1;
                    if (yk2.b(5000L, this) == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            checkboxTaskStepsDetailsPresenter.loadContent();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$onCheckboxButtonClicked$1", f = "CheckboxTaskStepsDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = CheckboxTaskStepsDetailsPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter = CheckboxTaskStepsDetailsPresenter.this;
            if (z) {
                CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView2 = (CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState();
                if (checkboxTaskStepsDetailsView2 != null) {
                    checkboxTaskStepsDetailsView2.showError();
                }
                checkboxTaskStepsDetailsPresenter.setCheckboxActionButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                checkboxTaskStepsDetailsPresenter.setCheckboxActionButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                checkboxTaskStepsDetailsPresenter.setCheckboxActionButtonLoading(false);
                checkboxTaskStepsDetailsPresenter.loadContent();
                String str = (String) ((i57.c) i57Var).a;
                if (str != null && (checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState()) != null) {
                    checkboxTaskStepsDetailsView.openUrlInCustomTab(str);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$onClaimClicked$1", f = "CheckboxTaskStepsDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = CheckboxTaskStepsDetailsPresenter.this.new e(e02Var);
            eVar.l = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((e) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter = CheckboxTaskStepsDetailsPresenter.this;
            if (z) {
                checkboxTaskStepsDetailsPresenter.setClaimButtonLoading(false);
                CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) checkboxTaskStepsDetailsPresenter.getViewState();
                if (checkboxTaskStepsDetailsView != null) {
                    checkboxTaskStepsDetailsView.showError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                checkboxTaskStepsDetailsPresenter.setClaimButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                checkboxTaskStepsDetailsPresenter.setClaimButtonLoading(false);
                kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                if (kk1Var != null) {
                    checkboxTaskStepsDetailsPresenter.handleClaimResult(kk1Var);
                }
                checkboxTaskStepsDetailsPresenter.loadContent();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$onFirstViewAttach$1", f = "CheckboxTaskStepsDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<ec1, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = CheckboxTaskStepsDetailsPresenter.this.new f(e02Var);
            fVar.l = obj;
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ec1 ec1Var, e02<? super j59> e02Var) {
            return ((f) create(ec1Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ec1 ec1Var = (ec1) this.l;
            if (ec1Var != null && (checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) CheckboxTaskStepsDetailsPresenter.this.getViewState()) != null) {
                checkboxTaskStepsDetailsView.showDetails(ec1Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$subscribeOnEvents$1", f = "CheckboxTaskStepsDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = CheckboxTaskStepsDetailsPresenter.this.new g(e02Var);
            gVar.l = obj;
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((g) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.h) {
                CheckboxTaskStepsDetailsPresenter.this.loadContent();
            }
            return j59.a;
        }
    }

    public CheckboxTaskStepsDetailsPresenter(int i, fk1 fk1Var, x63 x63Var, z63 z63Var, zl2 zl2Var, uf3 uf3Var) {
        fk1Var.getClass();
        x63Var.getClass();
        z63Var.getClass();
        zl2Var.getClass();
        uf3Var.getClass();
        this.taskId = i;
        this.claimCheckboxTaskStepsUseCase = fk1Var;
        this.fetchCheckboxStepsDetailsUseCase = x63Var;
        this.fetchCheckboxStepsSubtaskUseCase = z63Var;
        this.desktopInteractor = zl2Var;
        this.flowRouter = uf3Var;
        this.sheetContent = px.a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(kk1 kk1Var) {
        CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView;
        if (kk1Var instanceof no8) {
            CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView2 = (CheckboxTaskStepsDetailsView) getViewState();
            if (checkboxTaskStepsDetailsView2 != null) {
                checkboxTaskStepsDetailsView2.showTaskSuccess(this.taskId, (no8) kk1Var);
                return;
            }
            return;
        }
        if (!(kk1Var instanceof hn8) || (checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) getViewState()) == null) {
            return;
        }
        checkboxTaskStepsDetailsView.showTaskError((hn8) kk1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setActionBlockButtonLoading(boolean z) {
        ec1 value;
        ec1 ec1Var;
        boolean z2;
        ec1 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            List<pz3> list = value2.a;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (pz3 mb1Var : list) {
                if (mb1Var instanceof mb1) {
                    mb1 mb1Var2 = (mb1) mb1Var;
                    mb1.a aVar = mb1Var2.b;
                    z2 = z;
                    mb1.a aVar2 = new mb1.a(aVar.a, aVar.b, z2, aVar.d, aVar.e);
                    String str = mb1Var2.a;
                    int i = mb1Var2.c;
                    boolean z3 = mb1Var2.d;
                    str.getClass();
                    mb1Var = new mb1(str, aVar2, i, z3);
                } else {
                    z2 = z;
                }
                arrayList.add(mb1Var);
                z = z2;
            }
            xg5<ec1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                ec1Var = value;
            } while (!xg5Var.a(value, ec1Var != null ? new ec1(arrayList, ec1Var.b) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCheckboxActionButtonLoading(boolean z) {
        ec1 value;
        ec1 ec1Var;
        boolean z2;
        ec1 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            List<pz3> list = value2.a;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (Object objD : list) {
                if (objD instanceof sb1) {
                    sb1 sb1Var = (sb1) objD;
                    sb1.a aVar = sb1Var.e;
                    z2 = z;
                    objD = sb1.d(sb1Var, null, new sb1.a(aVar.a, aVar.b, aVar.c, z2, aVar.e), 47);
                } else {
                    z2 = z;
                }
                arrayList.add(objD);
                z = z2;
            }
            xg5<ec1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                ec1Var = value;
            } while (!xg5Var.a(value, ec1Var != null ? new ec1(arrayList, ec1Var.b) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setClaimButtonLoading(boolean z) {
        ec1 value;
        ec1 ec1Var;
        ec1 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            List<pz3> list = value2.a;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (pz3 pb1Var : list) {
                if (pb1Var instanceof pb1) {
                    pb1 pb1Var2 = (pb1) pb1Var;
                    String str = pb1Var2.a;
                    boolean z2 = pb1Var2.b;
                    boolean z3 = pb1Var2.d;
                    str.getClass();
                    pb1Var = new pb1(str, z2, z, z3);
                }
                arrayList.add(pb1Var);
            }
            xg5<ec1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                ec1Var = value;
            } while (!xg5Var.a(value, ec1Var != null ? new ec1(arrayList, ec1Var.b) : null));
        }
    }

    private final void subscribeOnEvents() {
        this.desktopInteractor.c(getPresenterScope(), new g(null));
    }

    private final void updateCheckboxes(fc1 fc1Var) {
        boolean z;
        ec1 ec1Var;
        boolean z2;
        ec1 value;
        ec1 ec1Var2;
        ec1 value2 = this.sheetContent.getValue();
        if (value2 == null) {
            return;
        }
        List<pz3> list = value2.a;
        boolean z3 = true;
        if (!fc1Var.d && fc1Var.c) {
            xg5<ec1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                ec1 ec1Var3 = value;
                if (ec1Var3 != null) {
                    List<pz3> list2 = list;
                    ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                    for (Object objD : list2) {
                        if (objD instanceof sb1) {
                            sb1 sb1Var = (sb1) objD;
                            List<fc1> list3 = sb1Var.c;
                            ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
                            Iterator<T> it = list3.iterator();
                            while (it.hasNext()) {
                                arrayList2.add(fc1.d((fc1) it.next(), true));
                            }
                            objD = sb1.d(sb1Var, arrayList2, null, 59);
                        }
                        arrayList.add(objD);
                    }
                    ec1Var2 = new ec1(arrayList, ec1Var3.b);
                } else {
                    ec1Var2 = null;
                }
            } while (!xg5Var.a(value, ec1Var2));
            return;
        }
        xg5<ec1> xg5Var2 = this.sheetContent;
        while (true) {
            ec1 value3 = xg5Var2.getValue();
            ec1 ec1Var4 = value3;
            if (ec1Var4 != null) {
                List<pz3> list4 = list;
                ArrayList arrayList3 = new ArrayList(kn1.q(list4, 10));
                for (Object objD2 : list4) {
                    if (objD2 instanceof sb1) {
                        sb1 sb1Var2 = (sb1) objD2;
                        List<fc1> list5 = sb1Var2.c;
                        ArrayList arrayList4 = new ArrayList(kn1.q(list5, 10));
                        for (fc1 fc1VarD : list5) {
                            boolean z4 = z3;
                            if (fc1VarD.a == fc1Var.a) {
                                fc1VarD = fc1.d(fc1VarD, !fc1VarD.d);
                            }
                            arrayList4.add(fc1VarD);
                            z3 = z4;
                        }
                        z2 = z3;
                        objD2 = sb1.d(sb1Var2, arrayList4, null, 59);
                    } else {
                        z2 = z3;
                    }
                    arrayList3.add(objD2);
                    z3 = z2;
                }
                z = z3;
                ec1Var = new ec1(arrayList3, ec1Var4.b);
            } else {
                z = z3;
                ec1Var = null;
            }
            if (xg5Var2.a(value3, ec1Var)) {
                return;
            } else {
                z3 = z;
            }
        }
    }

    public final void loadContent() {
        x63 x63Var = this.fetchCheckboxStepsDetailsUseCase;
        int i = this.taskId;
        x63Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new w63(x63Var, i, null))), new b(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // vm8.b
    public void onBadgeQuestionClicked(String str) {
        str.getClass();
        CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) getViewState();
        if (checkboxTaskStepsDetailsView != null) {
            checkboxTaskStepsDetailsView.openUrlInCustomTab(str);
        }
    }

    @Override // lb1.a
    public void onButtonStepTaskClicked(int i, boolean z) {
        if (z) {
            uf3 uf3Var = this.flowRouter;
            ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
            uf3Var.getClass();
            uf3Var.c.d(ixVar);
            return;
        }
        z63 z63Var = this.fetchCheckboxStepsSubtaskUseCase;
        int i2 = this.taskId;
        z63Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new y63(z63Var, i2, i, null))), new c(null)));
    }

    @Override // rb1.a
    public void onCheckboxButtonClicked(int i, boolean z) {
        if (z) {
            uf3 uf3Var = this.flowRouter;
            ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
            uf3Var.getClass();
            uf3Var.c.d(ixVar);
            return;
        }
        z63 z63Var = this.fetchCheckboxStepsSubtaskUseCase;
        int i2 = this.taskId;
        z63Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new y63(z63Var, i2, i, null))), new d(null)));
    }

    @Override // ub1.a
    public void onCheckboxClicked(fc1 fc1Var) {
        fc1Var.getClass();
        updateCheckboxes(fc1Var);
    }

    @Override // ob1.a
    public void onClaimClicked(boolean z) {
        fk1 fk1Var = this.claimCheckboxTaskStepsUseCase;
        int i = this.taskId;
        fk1Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new ek1(fk1Var, i, null))), new e(null)));
    }

    @Override // com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b
    public void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) getViewState();
        if (checkboxTaskStepsDetailsView != null) {
            checkboxTaskStepsDetailsView.showInfoBottomSheet(list);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.sheetContent, new f(null)));
        loadContent();
        subscribeOnEvents();
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        CheckboxTaskStepsDetailsView checkboxTaskStepsDetailsView = (CheckboxTaskStepsDetailsView) getViewState();
        if (checkboxTaskStepsDetailsView != null) {
            checkboxTaskStepsDetailsView.showOrdInfoDialog(b06Var);
        }
    }
}

package com.warefly.checkscan.presentation.tasks.checkbox.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.checkbox.view.CheckboxTaskDetailsView;
import defpackage.a32;
import defpackage.a73;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b73;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.gc1;
import defpackage.gk1;
import defpackage.hk1;
import defpackage.hn8;
import defpackage.i57;
import defpackage.ix;
import defpackage.j59;
import defpackage.jb1;
import defpackage.kk1;
import defpackage.kn1;
import defpackage.no8;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.u63;
import defpackage.uf3;
import defpackage.v63;
import defpackage.va1;
import defpackage.vm8;
import defpackage.xa1;
import defpackage.xg5;
import defpackage.za1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CheckboxTaskDetailsPresenter extends BasePresenter<CheckboxTaskDetailsView> implements vm8.b, za1.a, va1.a, com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b {
    private final hk1 claimCheckboxTaskUseCase;
    private final v63 fetchCheckboxDetailsUseCase;
    private final b73 fetchCheckboxTaskActionUseCase;
    private final uf3 flowRouter;
    private final xg5<jb1> sheetContent;
    private final int taskId;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter$loadContent$1", f = "CheckboxTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends jb1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = CheckboxTaskDetailsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends jb1> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CheckboxTaskDetailsPresenter checkboxTaskDetailsPresenter = CheckboxTaskDetailsPresenter.this;
            if (z) {
                CheckboxTaskDetailsView checkboxTaskDetailsView = (CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState();
                if (checkboxTaskDetailsView != null) {
                    checkboxTaskDetailsView.showLoading(false);
                }
                ((CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState()).showErrorState(true);
            } else if (aa4.e(i57Var, i57.b.a)) {
                ((CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState()).showErrorState(false);
                ((CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState()).showLoading(true);
            } else if (i57Var instanceof i57.c) {
                ((CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState()).showErrorState(false);
                ((CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState()).showLoading(false);
                xg5 xg5Var = checkboxTaskDetailsPresenter.sheetContent;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, (jb1) ((i57.c) i57Var).a));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter$onActivateClicked$1", f = "CheckboxTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = CheckboxTaskDetailsPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CheckboxTaskDetailsPresenter checkboxTaskDetailsPresenter = CheckboxTaskDetailsPresenter.this;
            if (z) {
                CheckboxTaskDetailsView checkboxTaskDetailsView = (CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState();
                if (checkboxTaskDetailsView != null) {
                    checkboxTaskDetailsView.showError();
                }
                checkboxTaskDetailsPresenter.setActionButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                checkboxTaskDetailsPresenter.setActionButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                checkboxTaskDetailsPresenter.setActionButtonLoading(false);
                checkboxTaskDetailsPresenter.loadContent();
                CheckboxTaskDetailsView checkboxTaskDetailsView2 = (CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState();
                if (checkboxTaskDetailsView2 != null) {
                    checkboxTaskDetailsView2.openUrlInCustomTab((String) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter$onCheckRewardClicked$1", f = "CheckboxTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = CheckboxTaskDetailsPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CheckboxTaskDetailsPresenter checkboxTaskDetailsPresenter = CheckboxTaskDetailsPresenter.this;
            if (z) {
                checkboxTaskDetailsPresenter.setClaimButtonLoading(false);
                CheckboxTaskDetailsView checkboxTaskDetailsView = (CheckboxTaskDetailsView) checkboxTaskDetailsPresenter.getViewState();
                if (checkboxTaskDetailsView != null) {
                    checkboxTaskDetailsView.showError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                checkboxTaskDetailsPresenter.setClaimButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                checkboxTaskDetailsPresenter.setClaimButtonLoading(false);
                kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                if (kk1Var != null) {
                    checkboxTaskDetailsPresenter.handleClaimResult(kk1Var);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter$onFirstViewAttach$1", f = "CheckboxTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<jb1, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = CheckboxTaskDetailsPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(jb1 jb1Var, e02<? super j59> e02Var) {
            return ((d) create(jb1Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CheckboxTaskDetailsView checkboxTaskDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            jb1 jb1Var = (jb1) this.l;
            if (jb1Var != null && (checkboxTaskDetailsView = (CheckboxTaskDetailsView) CheckboxTaskDetailsPresenter.this.getViewState()) != null) {
                checkboxTaskDetailsView.showDetails(jb1Var);
            }
            return j59.a;
        }
    }

    public CheckboxTaskDetailsPresenter(int i, v63 v63Var, b73 b73Var, hk1 hk1Var, uf3 uf3Var) {
        v63Var.getClass();
        b73Var.getClass();
        hk1Var.getClass();
        uf3Var.getClass();
        this.taskId = i;
        this.fetchCheckboxDetailsUseCase = v63Var;
        this.fetchCheckboxTaskActionUseCase = b73Var;
        this.claimCheckboxTaskUseCase = hk1Var;
        this.flowRouter = uf3Var;
        this.sheetContent = px.a(null);
    }

    private final void checkIfActivateButtonShouldBeEnabled() {
        jb1 value;
        jb1 jb1Var;
        jb1 value2 = this.sheetContent.getValue();
        if (value2 == null) {
            return;
        }
        List<pz3> list = value2.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof gc1) {
                arrayList.add(obj);
            }
        }
        boolean z = true;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (!((gc1) it.next()).d) {
                    z = false;
                    break;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(list, 10));
        for (Object objD : list) {
            if (objD instanceof xa1) {
                xa1 xa1Var = (xa1) objD;
                if (xa1Var.a == xa1.a.Activate) {
                    objD = xa1.d(xa1Var, z, false, 27);
                }
            }
            arrayList2.add(objD);
        }
        xg5<jb1> xg5Var = this.sheetContent;
        do {
            value = xg5Var.getValue();
            jb1Var = value;
        } while (!xg5Var.a(value, jb1Var != null ? new jb1(arrayList2, jb1Var.b) : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(kk1 kk1Var) {
        CheckboxTaskDetailsView checkboxTaskDetailsView;
        if (kk1Var instanceof no8) {
            CheckboxTaskDetailsView checkboxTaskDetailsView2 = (CheckboxTaskDetailsView) getViewState();
            if (checkboxTaskDetailsView2 != null) {
                checkboxTaskDetailsView2.showTaskSuccess(this.taskId, (no8) kk1Var);
                return;
            }
            return;
        }
        if (!(kk1Var instanceof hn8) || (checkboxTaskDetailsView = (CheckboxTaskDetailsView) getViewState()) == null) {
            return;
        }
        checkboxTaskDetailsView.showTaskError((hn8) kk1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setActionButtonLoading(boolean z) {
        jb1 value;
        jb1 jb1Var;
        jb1 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            List<pz3> list = value2.a;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (Object objD : list) {
                if (objD instanceof xa1) {
                    xa1 xa1Var = (xa1) objD;
                    if (xa1Var.a == xa1.a.Activate) {
                        objD = xa1.d(xa1Var, false, z, 23);
                    }
                }
                arrayList.add(objD);
            }
            xg5<jb1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                jb1Var = value;
            } while (!xg5Var.a(value, jb1Var != null ? new jb1(arrayList, jb1Var.b) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setClaimButtonLoading(boolean z) {
        jb1 value;
        jb1 jb1Var;
        jb1 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            List<pz3> list = value2.a;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (Object objD : list) {
                if (objD instanceof xa1) {
                    xa1 xa1Var = (xa1) objD;
                    if (xa1Var.a == xa1.a.Reward) {
                        objD = xa1.d(xa1Var, false, z, 23);
                    }
                }
                arrayList.add(objD);
            }
            xg5<jb1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                jb1Var = value;
            } while (!xg5Var.a(value, jb1Var != null ? new jb1(arrayList, jb1Var.b) : null));
        }
    }

    private final void updateCheckboxes(gc1 gc1Var) {
        jb1 value;
        jb1 jb1Var;
        jb1 value2;
        jb1 jb1Var2;
        jb1 value3 = this.sheetContent.getValue();
        if (value3 == null) {
            return;
        }
        List<pz3> list = value3.a;
        if (gc1Var.d || !gc1Var.c) {
            xg5<jb1> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                jb1 jb1Var3 = value;
                if (jb1Var3 != null) {
                    List<pz3> list2 = list;
                    ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                    for (Object objD : list2) {
                        if (objD instanceof gc1) {
                            gc1 gc1Var2 = (gc1) objD;
                            if (gc1Var.a == gc1Var2.a) {
                                objD = gc1.d(gc1Var2, !gc1Var2.d);
                            }
                        }
                        arrayList.add(objD);
                    }
                    jb1Var = new jb1(arrayList, jb1Var3.b);
                } else {
                    jb1Var = null;
                }
            } while (!xg5Var.a(value, jb1Var));
        } else {
            xg5<jb1> xg5Var2 = this.sheetContent;
            do {
                value2 = xg5Var2.getValue();
                jb1 jb1Var4 = value2;
                if (jb1Var4 != null) {
                    List<pz3> list3 = list;
                    ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
                    for (Object objD2 : list3) {
                        if (objD2 instanceof gc1) {
                            objD2 = gc1.d((gc1) objD2, true);
                        }
                        arrayList2.add(objD2);
                    }
                    jb1Var2 = new jb1(arrayList2, jb1Var4.b);
                } else {
                    jb1Var2 = null;
                }
            } while (!xg5Var2.a(value2, jb1Var2));
        }
        checkIfActivateButtonShouldBeEnabled();
    }

    public final void loadContent() {
        v63 v63Var = this.fetchCheckboxDetailsUseCase;
        int i = this.taskId;
        v63Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new u63(v63Var, i, null))), new a(null)));
    }

    @Override // va1.a
    public void onActivateClicked(boolean z) {
        if (z) {
            uf3 uf3Var = this.flowRouter;
            ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
            uf3Var.getClass();
            uf3Var.c.d(ixVar);
            return;
        }
        b73 b73Var = this.fetchCheckboxTaskActionUseCase;
        int i = this.taskId;
        b73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new a73(b73Var, i, null))), new b(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // vm8.b
    public void onBadgeQuestionClicked(String str) {
        str.getClass();
        CheckboxTaskDetailsView checkboxTaskDetailsView = (CheckboxTaskDetailsView) getViewState();
        if (checkboxTaskDetailsView != null) {
            checkboxTaskDetailsView.openUrlInCustomTab(str);
        }
    }

    @Override // va1.a
    public void onCheckRewardClicked() {
        hk1 hk1Var = this.claimCheckboxTaskUseCase;
        int i = this.taskId;
        hk1Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new gk1(hk1Var, i, null))), new c(null)));
    }

    @Override // za1.a
    public void onCheckboxClicked(gc1 gc1Var) {
        gc1Var.getClass();
        updateCheckboxes(gc1Var);
    }

    @Override // com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b
    public void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        CheckboxTaskDetailsView checkboxTaskDetailsView = (CheckboxTaskDetailsView) getViewState();
        if (checkboxTaskDetailsView != null) {
            checkboxTaskDetailsView.showInfoBottomSheet(list);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.sheetContent, new d(null)));
        loadContent();
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        CheckboxTaskDetailsView checkboxTaskDetailsView = (CheckboxTaskDetailsView) getViewState();
        if (checkboxTaskDetailsView != null) {
            checkboxTaskDetailsView.showOrdInfoDialog(b06Var);
        }
    }
}

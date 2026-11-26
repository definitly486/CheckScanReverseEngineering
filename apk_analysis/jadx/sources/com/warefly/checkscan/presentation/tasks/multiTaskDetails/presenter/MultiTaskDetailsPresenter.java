package com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter;

import androidx.media3.extractor.ts.TsExtractor;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bd2;
import defpackage.bg5;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.hn8;
import defpackage.i57;
import defpackage.j59;
import defpackage.kd;
import defpackage.kk1;
import defpackage.kn1;
import defpackage.ko8;
import defpackage.mn8;
import defpackage.no8;
import defpackage.of5;
import defpackage.pf5;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.qn8;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.tn8;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vm8;
import defpackage.vn8;
import defpackage.xf5;
import defpackage.xg5;
import defpackage.zf5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class MultiTaskDetailsPresenter extends BasePresenter<MultiTaskDetailsView> implements of5.a, zf5.a, vm8.b, com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b {
    private final uf3 flowRouter;
    private final vn8 interactor;
    private final xg5<xf5> multiTaskSheet;
    private final up8 showcaseAnalytics;
    private final int taskId;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter$loadContent$1", f = "MultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends xf5>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = MultiTaskDetailsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends xf5> i57Var, e02<? super j59> e02Var) {
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
            MultiTaskDetailsPresenter multiTaskDetailsPresenter = MultiTaskDetailsPresenter.this;
            if (z) {
                MultiTaskDetailsView multiTaskDetailsView = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView != null) {
                    multiTaskDetailsView.showErrorState(true);
                }
                MultiTaskDetailsView multiTaskDetailsView2 = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView2 != null) {
                    multiTaskDetailsView2.showLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                MultiTaskDetailsView multiTaskDetailsView3 = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView3 != null) {
                    multiTaskDetailsView3.showLoading(true);
                }
                MultiTaskDetailsView multiTaskDetailsView4 = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView4 != null) {
                    multiTaskDetailsView4.showErrorState(false);
                }
            } else if (i57Var instanceof i57.c) {
                MultiTaskDetailsView multiTaskDetailsView5 = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView5 != null) {
                    multiTaskDetailsView5.showErrorState(false);
                }
                MultiTaskDetailsView multiTaskDetailsView6 = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView6 != null) {
                    multiTaskDetailsView6.showLoading(false);
                }
                xg5 xg5Var = multiTaskDetailsPresenter.multiTaskSheet;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, (xf5) ((i57.c) i57Var).a));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter$onClaimMultiTaskClicked$1", f = "MultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = MultiTaskDetailsPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            MultiTaskDetailsPresenter multiTaskDetailsPresenter = MultiTaskDetailsPresenter.this;
            if (z) {
                multiTaskDetailsPresenter.showClaimButtonLoading(false);
                MultiTaskDetailsView multiTaskDetailsView = (MultiTaskDetailsView) multiTaskDetailsPresenter.getViewState();
                if (multiTaskDetailsView != null) {
                    multiTaskDetailsView.showError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                multiTaskDetailsPresenter.showClaimButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                if (kk1Var != null) {
                    multiTaskDetailsPresenter.handleClaimResult(kk1Var);
                }
                multiTaskDetailsPresenter.loadContent();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter$onFirstViewAttach$1", f = "MultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<xf5, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = MultiTaskDetailsPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(xf5 xf5Var, e02<? super j59> e02Var) {
            return ((c) create(xf5Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            MultiTaskDetailsView multiTaskDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            xf5 xf5Var = (xf5) this.l;
            if (xf5Var != null && (multiTaskDetailsView = (MultiTaskDetailsView) MultiTaskDetailsPresenter.this.getViewState()) != null) {
                multiTaskDetailsView.showDetails(xf5Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter$onSubTaskClicked$1", f = "MultiTaskDetailsPresenter.kt", l = {TsExtractor.TS_STREAM_TYPE_DTS}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends ko8>, e02<? super j59>, Object> {
        public MultiTaskDetailsPresenter l;
        public Object m;
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ int q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(int i, e02<? super d> e02Var) {
            super(2, e02Var);
            this.q = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = MultiTaskDetailsPresenter.this.new d(this.q, e02Var);
            dVar.o = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends ko8> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        
            if (r4.a(r1, (defpackage.xf5) r7) != false) goto L31;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:29:0x0092). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.n
                r2 = 1
                if (r1 == 0) goto L1d
                if (r1 != r2) goto L16
                java.lang.Object r1 = r6.m
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter r3 = r6.l
                java.lang.Object r4 = r6.o
                xg5 r4 = (defpackage.xg5) r4
                defpackage.r57.b(r7)
                goto L92
            L16:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                r6 = 0
                return r6
            L1d:
                defpackage.r57.b(r7)
                java.lang.Object r7 = r6.o
                i57 r7 = (defpackage.i57) r7
                boolean r1 = r7 instanceof i57.a
                r3 = 0
                int r4 = r6.q
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter r5 = com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.this
                if (r1 == 0) goto L3c
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.access$showSubtaskButtonLoading(r5, r3, r4)
                jh5 r6 = r5.getViewState()
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView r6 = (com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView) r6
                if (r6 == 0) goto L9a
                r6.showError()
                goto L9a
            L3c:
                i57$b r1 = i57.b.a
                boolean r1 = defpackage.aa4.e(r7, r1)
                if (r1 == 0) goto L48
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.access$showSubtaskButtonLoading(r5, r2, r4)
                goto L9a
            L48:
                boolean r1 = r7 instanceof i57.c
                if (r1 == 0) goto L9a
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.access$showSubtaskButtonLoading(r5, r3, r4)
                i57$c r7 = (i57.c) r7
                T r7 = r7.a
                ko8 r7 = (defpackage.ko8) r7
                java.lang.String r1 = r7.b()
                if (r1 == 0) goto L66
                jh5 r3 = r5.getViewState()
                com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView r3 = (com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView) r3
                if (r3 == 0) goto L66
                r3.openUrlInCustomTab(r1)
            L66:
                boolean r7 = r7.a()
                if (r7 == 0) goto L9a
                xg5 r7 = com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.access$getMultiTaskSheet$p(r5)
                r4 = r7
                r3 = r5
            L72:
                java.lang.Object r1 = r4.getValue()
                r7 = r1
                xf5 r7 = (defpackage.xf5) r7
                vn8 r7 = com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.access$getInteractor$p(r3)
                int r5 = com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.access$getTaskId$p(r3)
                r6.o = r4
                r6.l = r3
                r6.m = r1
                r6.n = r2
                ap8 r7 = r7.a
                java.lang.Object r7 = r7.u(r5, r6)
                if (r7 != r0) goto L92
                return r0
            L92:
                xf5 r7 = (defpackage.xf5) r7
                boolean r7 = r4.a(r1, r7)
                if (r7 == 0) goto L72
            L9a:
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public MultiTaskDetailsPresenter(int i, vn8 vn8Var, uf3 uf3Var, up8 up8Var) {
        vn8Var.getClass();
        uf3Var.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.interactor = vn8Var;
        this.flowRouter = uf3Var;
        this.showcaseAnalytics = up8Var;
        this.multiTaskSheet = px.a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(kk1 kk1Var) {
        if (kk1Var instanceof no8) {
            this.showcaseAnalytics.p(this.taskId);
            MultiTaskDetailsView multiTaskDetailsView = (MultiTaskDetailsView) getViewState();
            if (multiTaskDetailsView != null) {
                multiTaskDetailsView.showTaskSuccess(this.taskId, (no8) kk1Var);
                return;
            }
            return;
        }
        if (kk1Var instanceof hn8) {
            this.showcaseAnalytics.j(this.taskId);
            MultiTaskDetailsView multiTaskDetailsView2 = (MultiTaskDetailsView) getViewState();
            if (multiTaskDetailsView2 != null) {
                multiTaskDetailsView2.showTaskError((hn8) kk1Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showClaimButtonLoading(boolean z) {
        Integer numValueOf;
        xf5 value;
        xf5 xf5Var;
        xf5 value2 = this.multiTaskSheet.getValue();
        if (value2 != null) {
            Iterator<pz3> it = value2.a.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (it.next() instanceof pf5) {
                    break;
                } else {
                    i++;
                }
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || numValueOf == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(value2.a);
        Object obj = arrayList.get(numValueOf.intValue());
        pf5 pf5Var = obj instanceof pf5 ? (pf5) obj : null;
        if (pf5Var != null) {
            int iIntValue = numValueOf.intValue();
            String str = pf5Var.a;
            boolean z2 = pf5Var.b;
            long j = pf5Var.c;
            str.getClass();
            arrayList.set(iIntValue, new pf5(str, j, z2, z));
            xg5<xf5> xg5Var = this.multiTaskSheet;
            do {
                value = xg5Var.getValue();
                xf5Var = value;
            } while (!xg5Var.a(value, xf5Var != null ? new xf5(arrayList, xf5Var.b) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSubtaskButtonLoading(boolean z, int i) {
        ArrayList arrayList;
        xf5 value;
        xf5 xf5Var;
        bg5 bg5Var;
        int i2;
        bg5.a aVar;
        xf5 value2 = this.multiTaskSheet.getValue();
        if (value2 != null) {
            List<pz3> list = value2.a;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (pz3 bg5Var2 : list) {
                if ((bg5Var2 instanceof bg5) && (i2 = (bg5Var = (bg5) bg5Var2).a) == i) {
                    bg5.a aVar2 = bg5Var.d;
                    if (aVar2 != null) {
                        String str = aVar2.a;
                        boolean z2 = aVar2.b;
                        boolean z3 = aVar2.c;
                        str.getClass();
                        aVar = new bg5.a(str, z2, z3, z);
                    } else {
                        aVar = null;
                    }
                    String str2 = bg5Var.b;
                    boolean z4 = bg5Var.c;
                    str2.getClass();
                    bg5Var2 = new bg5(i2, str2, z4, aVar);
                }
                arrayList.add(bg5Var2);
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            xg5<xf5> xg5Var = this.multiTaskSheet;
            do {
                value = xg5Var.getValue();
                xf5Var = value;
            } while (!xg5Var.a(value, xf5Var != null ? new xf5(arrayList, xf5Var.b) : null));
        }
    }

    public final void loadContent() {
        vn8 vn8Var = this.interactor;
        int i = this.taskId;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new qn8(vn8Var, i, null))), new a(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // vm8.b
    public void onBadgeQuestionClicked(String str) {
        str.getClass();
        MultiTaskDetailsView multiTaskDetailsView = (MultiTaskDetailsView) getViewState();
        if (multiTaskDetailsView != null) {
            multiTaskDetailsView.openUrlInCustomTab(str);
        }
    }

    @Override // of5.a
    public void onClaimMultiTaskClicked() {
        vn8 vn8Var = this.interactor;
        int i = this.taskId;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new mn8(vn8Var, i, null))), new b(null)));
    }

    @Override // com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b
    public void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        MultiTaskDetailsView multiTaskDetailsView = (MultiTaskDetailsView) getViewState();
        if (multiTaskDetailsView != null) {
            multiTaskDetailsView.showInfoBottomSheet(list);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.showcaseAnalytics.e(this.taskId);
        launchInPresenter(new df3(this.multiTaskSheet, new c(null)));
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        MultiTaskDetailsView multiTaskDetailsView = (MultiTaskDetailsView) getViewState();
        if (multiTaskDetailsView != null) {
            multiTaskDetailsView.showOrdInfoDialog(b06Var);
        }
    }

    @Override // zf5.a
    public void onSubTaskClicked(int i) {
        new kd.s0.f.a.b(this.taskId, i).a();
        this.showcaseAnalytics.o(this.taskId, i);
        vn8 vn8Var = this.interactor;
        int i2 = this.taskId;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new tn8(vn8Var, i2, i, null))), new d(i, null)));
    }
}

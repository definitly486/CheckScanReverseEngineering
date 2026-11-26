package com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView;
import defpackage.a32;
import defpackage.a74;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.e74;
import defpackage.eu7;
import defpackage.i57;
import defpackage.id3;
import defpackage.j59;
import defpackage.j73;
import defpackage.jf6;
import defpackage.k73;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.x64;
import defpackage.xg5;
import defpackage.y68;
import defpackage.z64;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class InsuranceShowcasePresenter extends BasePresenter<InsuranceShowcaseView> implements z64.a, e74.a {
    private final Map<Integer, y68<Long>> countdownMap;
    private final k73 fetchInsuranceShowCaseUseCase;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;
    private final xg5<i57<x64>> showcaseState;

    @bd2(c = "com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter$onFirstViewAttach$1", f = "InsuranceShowcasePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends x64>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = InsuranceShowcasePresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends x64> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a74 a74Var;
            Long l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            InsuranceShowcasePresenter insuranceShowcasePresenter = InsuranceShowcasePresenter.this;
            if (z) {
                InsuranceShowcaseView insuranceShowcaseView = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView != null) {
                    insuranceShowcaseView.showLoading(false);
                }
                InsuranceShowcaseView insuranceShowcaseView2 = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView2 != null) {
                    insuranceShowcaseView2.showError(true);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                InsuranceShowcaseView insuranceShowcaseView3 = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView3 != null) {
                    insuranceShowcaseView3.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                InsuranceShowcaseView insuranceShowcaseView4 = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView4 != null) {
                    insuranceShowcaseView4.showError(false);
                }
                InsuranceShowcaseView insuranceShowcaseView5 = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView5 != null) {
                    insuranceShowcaseView5.setToolbarTitle(((x64) ((i57.c) i57Var).a).a);
                }
                x64 x64Var = (x64) ((i57.c) i57Var).a;
                for (pz3 pz3Var : x64Var.b) {
                    if ((pz3Var instanceof a74) && (l = (a74Var = (a74) pz3Var).f) != null) {
                        insuranceShowcasePresenter.setCountdownFlow(a74Var.a, l.longValue());
                    }
                }
                InsuranceShowcaseView insuranceShowcaseView6 = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView6 != null) {
                    insuranceShowcaseView6.showLoading(false);
                }
                InsuranceShowcaseView insuranceShowcaseView7 = (InsuranceShowcaseView) insuranceShowcasePresenter.getViewState();
                if (insuranceShowcaseView7 != null) {
                    insuranceShowcaseView7.showItems(x64Var.b);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter$onFirstViewAttach$2", f = "InsuranceShowcasePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends x64>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = InsuranceShowcasePresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends x64> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = InsuranceShowcasePresenter.this.showcaseState;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter$onTryAgainClicked$1", f = "InsuranceShowcasePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends x64>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = InsuranceShowcasePresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends x64> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = InsuranceShowcasePresenter.this.showcaseState;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter$setCountdownFlow$1$1", f = "InsuranceShowcasePresenter.kt", l = {38, 40}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public long l;
        public int m;
        public /* synthetic */ Object n;
        public final /* synthetic */ long o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(long j, e02<? super d> e02Var) {
            super(2, e02Var);
            this.o = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = new d(this.o, e02Var);
            dVar.n = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((d) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0039  */
        /* JADX WARN: Code duplicated, block: B:17:0x0046  */
        /* JADX WARN: Code duplicated, block: B:21:0x005a  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        
            if (r1.emit(r11, r10) == r0) goto L20;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0057 -> B:7:0x0017). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r10.m
                r2 = 1000(0x3e8, double:4.94E-321)
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2a
                if (r1 == r5) goto L20
                if (r1 != r4) goto L19
                long r6 = r10.l
                java.lang.Object r1 = r10.n
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r11)
            L17:
                r11 = r1
                goto L33
            L19:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r10)
                r10 = 0
                return r10
            L20:
                long r6 = r10.l
                java.lang.Object r1 = r10.n
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r11)
                goto L47
            L2a:
                defpackage.r57.b(r11)
                java.lang.Object r11 = r10.n
                id3 r11 = (defpackage.id3) r11
                long r6 = r10.o
            L33:
                r8 = 0
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 <= 0) goto L5a
                r10.n = r11
                r10.l = r6
                r10.m = r5
                java.lang.Object r1 = defpackage.yk2.b(r2, r10)
                if (r1 != r0) goto L46
                goto L59
            L46:
                r1 = r11
            L47:
                long r6 = r6 - r2
                java.lang.Long r11 = new java.lang.Long
                r11.<init>(r6)
                r10.n = r1
                r10.l = r6
                r10.m = r4
                java.lang.Object r11 = r1.emit(r11, r10)
                if (r11 != r0) goto L17
            L59:
                return r0
            L5a:
                j59 r10 = defpackage.j59.a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public InsuranceShowcasePresenter(k73 k73Var, jf6 jf6Var, uf3 uf3Var) {
        k73Var.getClass();
        jf6Var.getClass();
        uf3Var.getClass();
        this.fetchInsuranceShowCaseUseCase = k73Var;
        this.preferencesRepository = jf6Var;
        this.flowRouter = uf3Var;
        this.showcaseState = px.a(i57.b.a);
        this.countdownMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final y68<Long> setCountdownFlow(int i, long j) {
        Map<Integer, y68<Long>> map = this.countdownMap;
        Integer numValueOf = Integer.valueOf(i);
        y68<Long> y68VarD = map.get(numValueOf);
        if (y68VarD == null) {
            y68VarD = bf3.d(new tb7(new d(j, null)), getPresenterScope(), eu7.a.a, Long.valueOf(j));
            map.put(numValueOf, y68VarD);
        }
        return y68VarD;
    }

    public final y68<Long> getCountdownFlow(int i) {
        return this.countdownMap.get(Integer.valueOf(i));
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        super.onDestroy();
        this.countdownMap.clear();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.showcaseState, new a(null)));
        k73 k73Var = this.fetchInsuranceShowCaseUseCase;
        k73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new j73(k73Var, null))), new b(null)));
    }

    @Override // e74.a
    public void onHideHelpInfoClicked(boolean z) {
        this.preferencesRepository.m(z);
    }

    @Override // z64.a
    public void onInsuranceUrlClicked(String str) {
        str.getClass();
        InsuranceShowcaseView insuranceShowcaseView = (InsuranceShowcaseView) getViewState();
        if (insuranceShowcaseView != null) {
            insuranceShowcaseView.openUrlInCustomTab(str);
        }
    }

    public final void onTryAgainClicked() {
        k73 k73Var = this.fetchInsuranceShowCaseUseCase;
        k73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new j73(k73Var, null))), new c(null)));
    }
}

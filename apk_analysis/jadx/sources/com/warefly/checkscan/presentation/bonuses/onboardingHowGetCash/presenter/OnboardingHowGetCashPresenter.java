package com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.core.ui.slides.SlidesProgressBar;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashView;
import defpackage.a32;
import defpackage.b28;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c28;
import defpackage.ce3;
import defpackage.cl4;
import defpackage.df3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.id3;
import defpackage.j59;
import defpackage.kd;
import defpackage.ll3;
import defpackage.nm4;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.uf3;
import defpackage.vw5;
import defpackage.xg5;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingHowGetCashPresenter extends BasePresenter<OnboardingHowGetCashView> implements SlidesProgressBar.b {
    private final vw5 interactor;
    private final xg5<Integer> pageFlow;
    private final uf3 router;
    private final cl4 sliderInfo$delegate;

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter$onFirstViewAttach$1", f = "OnboardingHowGetCashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<id3<? super Integer>, e02<? super j59>, Object> {
        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return OnboardingHowGetCashPresenter.this.new a(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Integer> id3Var, e02<? super j59> e02Var) {
            return ((a) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            OnboardingHowGetCashPresenter onboardingHowGetCashPresenter = OnboardingHowGetCashPresenter.this;
            OnboardingHowGetCashView onboardingHowGetCashView = (OnboardingHowGetCashView) onboardingHowGetCashPresenter.getViewState();
            if (onboardingHowGetCashView != null) {
                onboardingHowGetCashView.initProgressBarSlider(onboardingHowGetCashPresenter.getSliderInfo());
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter$onFirstViewAttach$2", f = "OnboardingHowGetCashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<Integer, e02<? super j59>, Object> {
        public /* synthetic */ int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = OnboardingHowGetCashPresenter.this.new b(e02Var);
            bVar.l = ((Number) obj).intValue();
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Integer num, e02<? super j59> e02Var) {
            return ((b) create(Integer.valueOf(num.intValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            int i = this.l;
            OnboardingHowGetCashView onboardingHowGetCashView = (OnboardingHowGetCashView) OnboardingHowGetCashPresenter.this.getViewState();
            if (onboardingHowGetCashView != null) {
                onboardingHowGetCashView.setPage(i);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter$onFirstViewAttach$3", f = "OnboardingHowGetCashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<c28, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = OnboardingHowGetCashPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(c28 c28Var, e02<? super j59> e02Var) {
            return ((c) create(c28Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            c28 c28Var = (c28) this.l;
            c28 c28Var2 = c28.Left;
            OnboardingHowGetCashPresenter onboardingHowGetCashPresenter = OnboardingHowGetCashPresenter.this;
            if (c28Var == c28Var2) {
                onboardingHowGetCashPresenter.onPrevClick();
            } else {
                onboardingHowGetCashPresenter.onNextClick();
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements ll3<List<? extends b28>> {
        public static final d f = new d(0);

        @Override // defpackage.ll3
        public final List<? extends b28> invoke() {
            ArrayList arrayList = new ArrayList(5);
            for (int i = 0; i < 5; i++) {
                arrayList.add(new b28(i, i));
            }
            return arrayList;
        }
    }

    public OnboardingHowGetCashPresenter(uf3 uf3Var, vw5 vw5Var) {
        uf3Var.getClass();
        vw5Var.getClass();
        this.router = uf3Var;
        this.interactor = vw5Var;
        this.pageFlow = px.a(0);
        this.sliderInfo$delegate = nm4.b(d.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<b28> getSliderInfo() {
        return (List) this.sliderInfo$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onNextClick() {
        Integer value;
        if (this.pageFlow.getValue().intValue() == 4) {
            this.router.i();
            return;
        }
        xg5<Integer> xg5Var = this.pageFlow;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, Integer.valueOf(value.intValue() + 1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPrevClick() {
        Integer value;
        if (this.pageFlow.getValue().intValue() == 0) {
            this.router.i();
            return;
        }
        xg5<Integer> xg5Var = this.pageFlow;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, Integer.valueOf(value.intValue() - 1)));
    }

    @Override // com.warefly.checkscan.core.ui.slides.SlidesProgressBar.b
    public void onAnimationEnd(int i, long j) {
        if (i == 4) {
            this.router.i();
        } else {
            this.pageFlow.setValue(Integer.valueOf(i + 1));
        }
    }

    public final void onCloseClick() {
        new kd.a0(String.valueOf(this.pageFlow.getValue().intValue() + 1)).a();
        this.router.i();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(new ce3(this.pageFlow, new a(null)), new b(null)));
        launchInPresenter(new df3(this.interactor.c, new c(null)));
    }

    public final void onPageSelected(int i) {
        if (i == 4) {
            kd.b0.e.a();
        }
        this.pageFlow.setValue(Integer.valueOf(i));
    }
}

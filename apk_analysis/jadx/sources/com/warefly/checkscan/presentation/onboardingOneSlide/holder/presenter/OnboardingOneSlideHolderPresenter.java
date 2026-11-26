package com.warefly.checkscan.presentation.onboardingOneSlide.holder.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.onboardingOneSlide.holder.view.OnboardingOneSlideHolderView;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.b0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bx5;
import defpackage.e02;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kh7;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s22;
import defpackage.uf3;
import defpackage.y22;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingOneSlideHolderPresenter extends BasePresenter<OnboardingOneSlideHolderView> {
    private final uf3 flowRouter;
    private final bx5 onboardingOneSlideInteractor;
    private final jf6 preferencesRepository;

    public static final class a extends b0 implements s22 {
        public a() {
            super(s22.a.b);
        }

        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
            OnboardingOneSlideHolderView onboardingOneSlideHolderView = (OnboardingOneSlideHolderView) OnboardingOneSlideHolderPresenter.this.getViewState();
            if (onboardingOneSlideHolderView != null) {
                onboardingOneSlideHolderView.showErrorLoading(true);
            }
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.onboardingOneSlide.holder.presenter.OnboardingOneSlideHolderPresenter$setUpScreen$2", f = "OnboardingOneSlideHolderPresenter.kt", l = {29}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return OnboardingOneSlideHolderPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Exception {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            OnboardingOneSlideHolderPresenter onboardingOneSlideHolderPresenter = OnboardingOneSlideHolderPresenter.this;
            if (i == 0) {
                r57.b(obj);
                bx5 bx5Var = onboardingOneSlideHolderPresenter.onboardingOneSlideInteractor;
                this.l = 1;
                obj = bx5Var.a(this);
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
            OnboardingOneSlideModel onboardingOneSlideModel = (OnboardingOneSlideModel) obj;
            OnboardingOneSlideHolderView onboardingOneSlideHolderView = (OnboardingOneSlideHolderView) onboardingOneSlideHolderPresenter.getViewState();
            if (onboardingOneSlideHolderView != null) {
                onboardingOneSlideHolderView.showErrorLoading(false);
            }
            if (onboardingOneSlideModel != null) {
                OnboardingOneSlideHolderView onboardingOneSlideHolderView2 = (OnboardingOneSlideHolderView) onboardingOneSlideHolderPresenter.getViewState();
                if (onboardingOneSlideHolderView2 != null) {
                    onboardingOneSlideHolderView2.setLaunchScreen(new kh7(onboardingOneSlideModel));
                }
            } else {
                uf3 uf3Var = onboardingOneSlideHolderPresenter.flowRouter;
                uf3Var.getClass();
                uf3Var.c.g(e.a);
            }
            return j59.a;
        }
    }

    public OnboardingOneSlideHolderPresenter(bx5 bx5Var, jf6 jf6Var, uf3 uf3Var) {
        bx5Var.getClass();
        jf6Var.getClass();
        uf3Var.getClass();
        this.onboardingOneSlideInteractor = bx5Var;
        this.preferencesRepository = jf6Var;
        this.flowRouter = uf3Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        setUpScreen();
        this.preferencesRepository.V0();
    }

    public final void setUpScreen() {
        av0.c(getPresenterScope(), new a(), null, new b(null), 2);
    }
}

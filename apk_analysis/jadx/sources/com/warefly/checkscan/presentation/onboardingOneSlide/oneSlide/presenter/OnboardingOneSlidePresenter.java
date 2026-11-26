package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.presenter;

import android.net.Uri;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.presenter.OnboardingOneSlidePresenter;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bx5;
import defpackage.ci;
import defpackage.e02;
import defpackage.gh4;
import defpackage.hr7;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.kh7;
import defpackage.kn1;
import defpackage.kv;
import defpackage.lh7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.ox;
import defpackage.p08;
import defpackage.pg8;
import defpackage.pv;
import defpackage.qh7;
import defpackage.qn1;
import defpackage.r57;
import defpackage.rj;
import defpackage.t57;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.y22;
import defpackage.yb8;
import defpackage.yk2;
import defpackage.z68;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingOneSlidePresenter extends BasePresenter<OnboardingOneSlideView> {
    public static final a Companion = new a();
    private static final String REDIRECT_CARD_SLIDE = "cardSlide";
    private static final String REDIRECT_PROFILE_BONUS = "profileBonus";
    private static final String SIGN_UP_REDIRECT_PARAM = "redirect";
    private static final long WAIT_ENTER_ANIMATION = 500;
    private final kv authInteractor;
    private final uf3 flowRouter;
    private boolean isFirstCardImageSlide;
    private final bx5 onboardingOneSlideInteractor;
    private final jf6 preferencesRepository;
    private final hr7 setAuthSkipButtonUseCase;
    private String signUpRedirect;
    private final OnboardingOneSlideModel slideModel;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.presenter.OnboardingOneSlidePresenter$onFirstViewAttach$2", f = "OnboardingOneSlidePresenter.kt", l = {57}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return OnboardingOneSlidePresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.l = 1;
                if (yk2.b(500L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            OnboardingOneSlideView onboardingOneSlideView = (OnboardingOneSlideView) OnboardingOneSlidePresenter.this.getViewState();
            if (onboardingOneSlideView != null) {
                onboardingOneSlideView.showConfetti();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ((OnboardingOneSlideView) OnboardingOneSlidePresenter.this.getViewState()).showNetworkError();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<String, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            OnboardingOneSlideView onboardingOneSlideView = (OnboardingOneSlideView) OnboardingOneSlidePresenter.this.getViewState();
            str2.getClass();
            onboardingOneSlideView.shareReferralLink(str2);
            return j59.a;
        }
    }

    public OnboardingOneSlidePresenter(kv kvVar, OnboardingOneSlideModel onboardingOneSlideModel, bx5 bx5Var, jf6 jf6Var, uf3 uf3Var, hr7 hr7Var) {
        kvVar.getClass();
        onboardingOneSlideModel.getClass();
        bx5Var.getClass();
        jf6Var.getClass();
        uf3Var.getClass();
        hr7Var.getClass();
        this.authInteractor = kvVar;
        this.slideModel = onboardingOneSlideModel;
        this.onboardingOneSlideInteractor = bx5Var;
        this.preferencesRepository = jf6Var;
        this.flowRouter = uf3Var;
        this.setAuthSkipButtonUseCase = hr7Var;
        this.isFirstCardImageSlide = true;
    }

    private final void handleDeeplink(OnboardingOneSlideModel.Action.Deeplink deeplink) {
        Uri uri = Uri.parse(deeplink.b);
        if (!uri.isHierarchical()) {
            uri = null;
        }
        this.signUpRedirect = uri != null ? uri.getQueryParameter(SIGN_UP_REDIRECT_PARAM) : null;
        OnboardingOneSlideView onboardingOneSlideView = (OnboardingOneSlideView) getViewState();
        if (onboardingOneSlideView != null) {
            onboardingOneSlideView.openUrlInCustomTab(deeplink.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFirstViewAttach$lambda$2(OnboardingOneSlidePresenter onboardingOneSlidePresenter, Object obj) {
        obj.getClass();
        String str = onboardingOneSlidePresenter.signUpRedirect;
        if (obj != ox.SignUp) {
            str = null;
        }
        if (aa4.e(str, REDIRECT_PROFILE_BONUS)) {
            onboardingOneSlidePresenter.onboardingOneSlideInteractor.e = true;
            uf3 uf3Var = onboardingOneSlidePresenter.flowRouter;
            qh7 qh7Var = new qh7(new ProfileReason.FillMyData(true));
            uf3Var.getClass();
            uf3Var.c.g(qh7Var);
            return;
        }
        if (!aa4.e(str, REDIRECT_CARD_SLIDE)) {
            uf3 uf3Var2 = onboardingOneSlidePresenter.flowRouter;
            uf3Var2.getClass();
            uf3Var2.c.g(e.a);
        } else {
            bx5 bx5Var = onboardingOneSlidePresenter.onboardingOneSlideInteractor;
            bx5Var.e = true;
            bx5Var.f = true;
            uf3 uf3Var3 = onboardingOneSlidePresenter.flowRouter;
            uf3Var3.getClass();
            uf3Var3.c.g(lh7.a);
        }
    }

    private final void onNextClicked() {
        Object value;
        OnboardingOneSlideModel onboardingOneSlideModel;
        bx5 bx5Var = this.onboardingOneSlideInteractor;
        int i = this.slideModel.l;
        z68 z68Var = bx5Var.c;
        int i2 = i + 1;
        z68 z68Var2 = bx5Var.b;
        j59 j59Var = null;
        if (i2 == ((List) z68Var2.getValue()).size()) {
            onboardingOneSlideModel = null;
        } else {
            do {
                value = z68Var.getValue();
                ((Number) value).intValue();
            } while (!z68Var.a(value, Integer.valueOf(i2)));
            onboardingOneSlideModel = (OnboardingOneSlideModel) qn1.W(((Number) z68Var.getValue()).intValue(), (List) z68Var2.getValue());
        }
        if (onboardingOneSlideModel != null) {
            this.flowRouter.j(new kh7(onboardingOneSlideModel));
            j59Var = j59.a;
        }
        if (j59Var == null) {
            uf3 uf3Var = this.flowRouter;
            uf3Var.getClass();
            uf3Var.c.g(e.a);
        }
    }

    private final void onShareReferralClicked() {
        kd.l0.b.e.a();
        disposeOnDestroy(yb8.d(new p08(this.authInteractor.d.b.p(), new ci(pv.f)).i(ne7.c).f(rj.a()), new c(), new d()), "getReferralLink");
    }

    private final void sendCardScrolledEvent(OnboardingOneSlideModel onboardingOneSlideModel) {
        String str;
        String str2;
        b36<String, String> b36Var = onboardingOneSlideModel.n;
        if (b36Var == null || (str = b36Var.b) == null || (str2 = b36Var.c) == null) {
            return;
        }
        if (this.isFirstCardImageSlide) {
            this.isFirstCardImageSlide = false;
            return;
        }
        Map mapSingletonMap = Collections.singletonMap(str, str2);
        mapSingletonMap.getClass();
        Map mapSingletonMap2 = Collections.singletonMap("ONBOARDING_NEW_CARD_SLIDE", mapSingletonMap);
        mapSingletonMap2.getClass();
        new kd.z.a.C0296a("Onboarding", mapSingletonMap2).a();
    }

    public final void checkIfCanShowSkipButtonInAuth(OnboardingOneSlideModel.Action action) {
        action.getClass();
        if ((action instanceof OnboardingOneSlideModel.Action.Deeplink) && ta8.D(((OnboardingOneSlideModel.Action.Deeplink) action).b, "signup", false)) {
            this.setAuthSkipButtonUseCase.a.e(true);
        }
    }

    public final void logButtonEvent(String str) {
        if (str != null) {
            Map mapSingletonMap = Collections.singletonMap(this.preferencesRepository.i1(), str);
            mapSingletonMap.getClass();
            new kd.y.a("Onboarding_profile&friend", mapSingletonMap).a();
        }
    }

    public final void onActionClicked(OnboardingOneSlideModel.Action action) {
        action.getClass();
        if (action instanceof OnboardingOneSlideModel.Action.Deeplink) {
            handleDeeplink((OnboardingOneSlideModel.Action.Deeplink) action);
            return;
        }
        if (action.equals(OnboardingOneSlideModel.Action.Next.b)) {
            onNextClicked();
            return;
        }
        if (action.equals(OnboardingOneSlideModel.Action.ShareWithFriend.b)) {
            onShareReferralClicked();
            return;
        }
        if (!(action instanceof OnboardingOneSlideModel.Action.Alert)) {
            action.equals(OnboardingOneSlideModel.Action.NotSupported.b);
            return;
        }
        OnboardingOneSlideView onboardingOneSlideView = (OnboardingOneSlideView) getViewState();
        if (onboardingOneSlideView != null) {
            onboardingOneSlideView.showAlfaClientVerification(((OnboardingOneSlideModel.Action.Alert) action).b);
        }
    }

    public final boolean onBackPressed() {
        Object value;
        OnboardingOneSlideModel onboardingOneSlideModel = this.slideModel;
        if (!onboardingOneSlideModel.e) {
            return true;
        }
        bx5 bx5Var = this.onboardingOneSlideInteractor;
        int i = onboardingOneSlideModel.l;
        if (i > 0) {
            z68 z68Var = bx5Var.c;
            do {
                value = z68Var.getValue();
                ((Number) value).intValue();
            } while (!z68Var.a(value, Integer.valueOf(i - 1)));
        } else {
            bx5Var.getClass();
        }
        uf3 uf3Var = this.flowRouter;
        uf3Var.getClass();
        uf3Var.c.g(lh7.a);
        return false;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        Object value;
        super.onFirstViewAttach();
        bx5 bx5Var = this.onboardingOneSlideInteractor;
        int i = this.slideModel.l;
        z68 z68Var = bx5Var.c;
        do {
            value = z68Var.getValue();
            ((Number) value).intValue();
        } while (!z68Var.a(value, Integer.valueOf(i)));
        if (this.slideModel.m.isEmpty()) {
            OnboardingOneSlideView onboardingOneSlideView = (OnboardingOneSlideView) getViewState();
            if (onboardingOneSlideView != null) {
                onboardingOneSlideView.showSlide(this.slideModel);
            }
        } else {
            OnboardingOneSlideView onboardingOneSlideView2 = (OnboardingOneSlideView) getViewState();
            if (onboardingOneSlideView2 != null) {
                onboardingOneSlideView2.showSubSlide((OnboardingOneSlideModel) qn1.T(this.slideModel.m));
            }
            OnboardingOneSlideView onboardingOneSlideView3 = (OnboardingOneSlideView) getViewState();
            if (onboardingOneSlideView3 != null) {
                List<OnboardingOneSlideModel> list = this.slideModel.m;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((OnboardingOneSlideModel) it.next()).d);
                }
                onboardingOneSlideView3.setUpSlides(arrayList);
            }
        }
        if (this.slideModel.f) {
            av0.c(getPresenterScope(), null, null, new b(null), 3);
        }
        this.flowRouter.l(new t57() { // from class: dx5
            @Override // defpackage.t57
            public final void onResult(Object obj) {
                OnboardingOneSlidePresenter.onFirstViewAttach$lambda$2(this.a, obj);
            }
        });
    }

    public final void onImageSlideSelected(int i) {
        OnboardingOneSlideView onboardingOneSlideView;
        OnboardingOneSlideModel onboardingOneSlideModel = (OnboardingOneSlideModel) qn1.W(i, this.slideModel.m);
        if (onboardingOneSlideModel != null) {
            sendCardScrolledEvent(onboardingOneSlideModel);
        }
        if (onboardingOneSlideModel == null || (onboardingOneSlideView = (OnboardingOneSlideView) getViewState()) == null) {
            return;
        }
        onboardingOneSlideView.showSubSlide(onboardingOneSlideModel);
    }
}

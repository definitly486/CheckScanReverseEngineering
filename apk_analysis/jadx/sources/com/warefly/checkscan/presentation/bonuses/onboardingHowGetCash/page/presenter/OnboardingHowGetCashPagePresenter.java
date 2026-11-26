package com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.presenter;

import android.view.MotionEvent;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageView;
import defpackage.c28;
import defpackage.q16;
import defpackage.vw5;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingHowGetCashPagePresenter extends BasePresenter<OnboardingHowGetCashPageView> {
    private final vw5 onboardingHowGetCashInteractor;
    private final int page;

    public OnboardingHowGetCashPagePresenter(int i, vw5 vw5Var) {
        vw5Var.getClass();
        this.page = i;
        this.onboardingHowGetCashInteractor = vw5Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        OnboardingHowGetCashPageView onboardingHowGetCashPageView = (OnboardingHowGetCashPageView) getViewState();
        if (onboardingHowGetCashPageView != null) {
            vw5 vw5Var = this.onboardingHowGetCashInteractor;
            onboardingHowGetCashPageView.showContent((q16) ((List) vw5Var.a.getValue()).get(this.page));
        }
    }

    public final void onScreenClick(MotionEvent motionEvent, int i) {
        motionEvent.getClass();
        if (motionEvent.getAction() == 1) {
            float x = i / motionEvent.getX();
            vw5 vw5Var = this.onboardingHowGetCashInteractor;
            if (x > 2.0f) {
                vw5Var.b.mo0trySendJP2dKIU(c28.Left);
            } else {
                vw5Var.b.mo0trySendJP2dKIU(c28.Right);
            }
        }
    }
}

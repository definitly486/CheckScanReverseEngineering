package com.warefly.checkscan.presentation.electrocheque.onboarding.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.jf6;
import defpackage.kd;
import defpackage.pi7;
import defpackage.uf3;
import defpackage.vv2;

/* JADX INFO: loaded from: classes5.dex */
public final class ElectroChequesOnBoardingPresenter extends BasePresenter<ElectroChequesOnBoardingView> {
    private final uf3 flowRouter;
    private final vv2 onboardingRepository;
    private final jf6 preferencesRepository;

    public ElectroChequesOnBoardingPresenter(uf3 uf3Var, jf6 jf6Var, vv2 vv2Var) {
        uf3Var.getClass();
        jf6Var.getClass();
        vv2Var.getClass();
        this.flowRouter = uf3Var;
        this.preferencesRepository = jf6Var;
        this.onboardingRepository = vv2Var;
    }

    private final void loadInstructions() {
        ElectroChequesOnBoardingView electroChequesOnBoardingView = (ElectroChequesOnBoardingView) getViewState();
        if (electroChequesOnBoardingView != null) {
            electroChequesOnBoardingView.showInstructions(this.onboardingRepository.b());
        }
    }

    private final void loadQuestions() {
        ElectroChequesOnBoardingView electroChequesOnBoardingView = (ElectroChequesOnBoardingView) getViewState();
        if (electroChequesOnBoardingView != null) {
            electroChequesOnBoardingView.showQuestions(this.onboardingRepository.a());
        }
    }

    public final void checkButtonState() {
        ElectroChequesOnBoardingView electroChequesOnBoardingView = (ElectroChequesOnBoardingView) getViewState();
        if (electroChequesOnBoardingView != null) {
            electroChequesOnBoardingView.enableRegisteredButton(this.preferencesRepository.f1());
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onConnectClicked() {
        if (this.preferencesRepository.f1()) {
            new kd.a.e.b("Registered_main_button").a();
            this.flowRouter.c();
        } else {
            new kd.a.e.c("Unregistered_main_button").a();
            this.flowRouter.j(pi7.a);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        checkButtonState();
        loadInstructions();
        loadQuestions();
        new kd.a.e.C0225a("Open").a();
    }
}

package com.warefly.checkscan.presentation.scanner.onboarding.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.scanner.onboarding.view.ScannerOnboardingView;
import defpackage.jf6;
import defpackage.uf3;
import defpackage.yh7;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerOnboardingPresenter extends BasePresenter<ScannerOnboardingView> {
    private final uf3 flowRouter;
    private final jf6 settingsPreferences;

    public ScannerOnboardingPresenter(uf3 uf3Var, jf6 jf6Var) {
        uf3Var.getClass();
        jf6Var.getClass();
        this.flowRouter = uf3Var;
        this.settingsPreferences = jf6Var;
    }

    public final void onButtonActionClick() {
        this.flowRouter.h(new yh7(0));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.settingsPreferences.t0();
    }
}

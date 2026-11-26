package com.warefly.checkscan.presentation.scanner.onboardingGallery.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.scanner.onboardingGallery.view.ScannerOnboardingGalleryView;
import defpackage.jf6;
import defpackage.uf3;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerOnboardingGalleryPresenter extends BasePresenter<ScannerOnboardingGalleryView> {
    private final uf3 flowRouter;
    private final jf6 preferences;

    public ScannerOnboardingGalleryPresenter(uf3 uf3Var, jf6 jf6Var) {
        uf3Var.getClass();
        jf6Var.getClass();
        this.flowRouter = uf3Var;
        this.preferences = jf6Var;
    }

    public final void onActionClick() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.preferences.k0();
    }
}

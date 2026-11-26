package com.warefly.checkscan.presentation.stock.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.stock.view.AgreementView;

/* JADX INFO: loaded from: classes5.dex */
public final class AgreementPresenter extends BasePresenter<AgreementView> {
    public final void continueClicked(String str) {
        str.getClass();
        AgreementView agreementView = (AgreementView) getViewState();
        if (agreementView != null) {
            agreementView.openUrl(str);
        }
    }

    public final void onShown() {
        AgreementView agreementView = (AgreementView) getViewState();
        if (agreementView != null) {
            agreementView.showAgreement();
        }
    }
}

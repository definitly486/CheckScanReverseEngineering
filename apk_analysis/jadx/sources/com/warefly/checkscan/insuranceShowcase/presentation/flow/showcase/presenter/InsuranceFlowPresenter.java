package com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.view.InsuranceFlowView;
import defpackage.q74;

/* JADX INFO: loaded from: classes5.dex */
public final class InsuranceFlowPresenter extends BasePresenter<InsuranceFlowView> {
    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        InsuranceFlowView insuranceFlowView = (InsuranceFlowView) getViewState();
        if (insuranceFlowView != null) {
            insuranceFlowView.setLaunchScreen(q74.a);
        }
    }
}

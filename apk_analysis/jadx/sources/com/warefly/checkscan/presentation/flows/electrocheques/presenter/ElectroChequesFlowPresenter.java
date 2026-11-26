package com.warefly.checkscan.presentation.flows.electrocheques.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.jf6;
import defpackage.mg7;
import defpackage.pi7;

/* JADX INFO: loaded from: classes5.dex */
public final class ElectroChequesFlowPresenter extends BasePresenter<ElectroChequesFlowView> {
    private final jf6 preferencesRepository;

    public ElectroChequesFlowPresenter(jf6 jf6Var) {
        jf6Var.getClass();
        this.preferencesRepository = jf6Var;
    }

    private final void setElectroCheques() {
        ElectroChequesFlowView electroChequesFlowView = (ElectroChequesFlowView) getViewState();
        if (electroChequesFlowView != null) {
            electroChequesFlowView.setLaunchScreen(pi7.a);
        }
    }

    private final void setElectroChequesOnBoarding() {
        ElectroChequesFlowView electroChequesFlowView = (ElectroChequesFlowView) getViewState();
        if (electroChequesFlowView != null) {
            electroChequesFlowView.setLaunchScreen(mg7.a);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        setElectroChequesOnBoarding();
    }
}

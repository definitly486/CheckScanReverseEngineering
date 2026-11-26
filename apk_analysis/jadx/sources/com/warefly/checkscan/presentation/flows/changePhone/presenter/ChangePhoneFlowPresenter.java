package com.warefly.checkscan.presentation.flows.changePhone.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.changePhone.view.ChangePhoneFlowView;
import defpackage.oh7;

/* JADX INFO: loaded from: classes5.dex */
public final class ChangePhoneFlowPresenter extends BasePresenter<ChangePhoneFlowView> {
    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ChangePhoneFlowView changePhoneFlowView = (ChangePhoneFlowView) getViewState();
        if (changePhoneFlowView != null) {
            changePhoneFlowView.setLaunchScreen(new oh7());
        }
    }
}

package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class BankVerificationPresenter extends BasePresenter<BankVerificationView> {
    public final void onActionClicked(String str) {
        BankVerificationView bankVerificationView;
        if (str != null && (bankVerificationView = (BankVerificationView) getViewState()) != null) {
            bankVerificationView.openUrlInCustomTab(str);
        }
        BankVerificationView bankVerificationView2 = (BankVerificationView) getViewState();
        if (bankVerificationView2 != null) {
            bankVerificationView2.dismissDialog();
        }
    }
}

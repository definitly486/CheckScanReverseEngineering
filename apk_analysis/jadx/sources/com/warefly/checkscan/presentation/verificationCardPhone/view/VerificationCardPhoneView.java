package com.warefly.checkscan.presentation.verificationCardPhone.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface VerificationCardPhoneView extends BaseView {
    void setCaseCall(String str, int i);

    void setCodeFromSms(String str);

    void showError(boolean z, boolean z2, boolean z3);

    void showErrorCode();

    void showInvalidPhoneError();

    void showLoading(boolean z);

    void showLongCode();

    void showMiddleCode();

    void showOfferCardDialog(int i, int i2);

    void showProviderError();

    void showRepeatCallAgain();

    void showSendSmsAgain();

    void showSendSmsCode(String str);

    void showShortCode();

    void showTimeForRepeatCode();

    void showTimesNotExpired();

    void updateTextField();
}

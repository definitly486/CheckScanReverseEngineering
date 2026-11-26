package com.warefly.checkscan.auth.presentation.smsVerification.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes.dex */
public interface VerificationSmsView extends BaseView {
    void clearOtp();

    void dismissLoadingDialog();

    void setCodeFromSms(String str);

    void setPhoneTyped(String str);

    void setTimer(long j);

    void showLoadingDialog();

    void showOtpError(boolean z);

    void showSendAgainButton(boolean z);

    void showTimer(boolean z);

    void showTryPhoneButton(boolean z);

    void showUnknownError();

    void vibrateError();
}

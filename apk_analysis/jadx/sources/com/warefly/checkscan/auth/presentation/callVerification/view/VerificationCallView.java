package com.warefly.checkscan.auth.presentation.callVerification.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes.dex */
public interface VerificationCallView extends BaseView {
    void clearOtp();

    void dismissLoadingDialog();

    void setPhoneTyped(String str);

    void setTimer(long j);

    void showLoadingDialog();

    void showOtpError(boolean z);

    void showSendAgainButton(boolean z);

    void showTimer(boolean z);

    void showTrySmsButton(boolean z);

    void showUnknownError();

    void vibrateError();
}

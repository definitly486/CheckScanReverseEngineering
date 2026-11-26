package com.warefly.checkscan.auth.presentation.emailVerification.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes.dex */
public interface VerificationEmailView extends BaseView {
    void clearOtp();

    void dismissLoadingDialog();

    void setEmailTyped(String str);

    void setTimer(long j);

    void showEmailAddedBottomSheet();

    void showEmailCodeSendError();

    void showEmailPlacedError();

    void showLoadingDialog();

    void showOtpError(boolean z);

    void showSendAgainButton(boolean z);

    void showTimer(boolean z);

    void showUnknownError();

    void vibrateError();
}

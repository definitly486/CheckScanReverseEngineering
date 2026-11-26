package com.warefly.checkscan.auth.presentation.userCallVerification.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes.dex */
public interface VerificationUserCallView extends BaseView {
    void dismissLoadingDialog();

    void openPhoneCallApp(String str);

    void setDescription(String str, String str2);

    void showEmailMethod(boolean z);

    void showLoadingButton(boolean z);

    void showLoadingDialog();

    void showUnknownError();
}

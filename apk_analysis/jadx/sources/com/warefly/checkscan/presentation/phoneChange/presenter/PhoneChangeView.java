package com.warefly.checkscan.presentation.phoneChange.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface PhoneChangeView extends BaseView {
    void onFinish();

    void showAccountPhone(String str);

    void showFailService(String str);

    void showIncorrectPhoneMessage(boolean z);

    void showLoading(boolean z);

    void showStartPhoneChange(boolean z);

    void showTimesNotExpired();

    void showUnEnableChangePhone();

    void showWaitCode(boolean z);
}

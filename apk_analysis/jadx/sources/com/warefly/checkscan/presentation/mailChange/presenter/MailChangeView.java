package com.warefly.checkscan.presentation.mailChange.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface MailChangeView extends BaseView {
    void finishChangeMail();

    void setMailAllowed(boolean z);

    void showBackendError();

    void showEmailSent(String str);

    void showEmailUseAlready();

    void showIncorrectMailMessage(boolean z);

    void showMailUser(String str);

    void showNetworkError();

    void showNoSuchUser();

    void showToastMessage(String str);

    void startChangeMail();
}

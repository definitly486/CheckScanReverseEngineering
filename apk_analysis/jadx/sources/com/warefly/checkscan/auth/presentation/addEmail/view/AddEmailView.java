package com.warefly.checkscan.auth.presentation.addEmail.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes.dex */
public interface AddEmailView extends BaseView {
    void showButtonLoading(boolean z);

    void showEmailFormatError(boolean z);

    void showEmailPlacedError();

    void showEmailSuccess();

    void showEmailTimeoutError();

    void showEmailUnknownError();
}

package com.warefly.checkscan.presentation.chequePage.form.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface ChequeInfoFormView extends BaseView {
    void setPostingFormEnabled(boolean z);

    void showInvalidFullNameError(boolean z);

    void showInvalidPhoneError(boolean z);

    void showPostingForm(boolean z);

    void showPostingFormError();

    void showPostingFormSuccess();
}

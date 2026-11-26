package com.warefly.checkscan.presentation.createCard.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface CreateCardView extends BaseView {
    void dismissUpridDialog();

    void editNumberClick();

    void enableIssueButton(boolean z);

    void isHaveNumber(boolean z, boolean z2, String str);

    void showError(String str);

    void showIncorrectPhoneMessage(boolean z);

    void showLoading(boolean z);

    void showLoadingSpinner(boolean z);

    void showPhoneUsedError();

    void showTimeConfirmError();

    void showUpridWebDialog(String str);
}

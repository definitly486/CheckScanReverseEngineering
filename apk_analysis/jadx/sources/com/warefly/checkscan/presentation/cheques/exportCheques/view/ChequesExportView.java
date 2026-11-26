package com.warefly.checkscan.presentation.cheques.exportCheques.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface ChequesExportView extends BaseView {
    void assignUserEmail(String str);

    void setDateRangeText(String str);

    void showDoneDialog();

    void showEnableButton(boolean z);

    void showFailDialog();

    void showInvalidDateError(boolean z);

    void showInvalidEmailError(boolean z);
}

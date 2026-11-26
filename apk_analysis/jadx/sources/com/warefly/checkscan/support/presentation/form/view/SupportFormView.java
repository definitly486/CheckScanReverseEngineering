package com.warefly.checkscan.support.presentation.form.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.ni3;
import defpackage.we8;

/* JADX INFO: loaded from: classes5.dex */
public interface SupportFormView extends BaseView {
    void flashCheckboxError();

    void setButtonLoading(boolean z);

    void setCheckbox(boolean z);

    void setDescriptionFocus();

    void setEmailField(String str);

    void setEmailFocus();

    void setNameField(String str);

    void setNameFocus();

    void setScreenInfo(ni3 ni3Var);

    void showDescriptionError(boolean z);

    void showEmailError(boolean z);

    void showError(boolean z);

    void showFailBottomSheet(we8 we8Var);

    void showLoading(boolean z);

    void showSuccessBottomSheet(we8 we8Var);
}

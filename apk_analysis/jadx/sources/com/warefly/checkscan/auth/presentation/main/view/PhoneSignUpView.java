package com.warefly.checkscan.auth.presentation.main.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.ub;
import defpackage.z99;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface PhoneSignUpView extends BaseView {
    void dismissLoadingDialog();

    void flashAgreementsError();

    void setInviteCodeFiled(String str);

    void showAgreementBottomSheet(String str);

    void showAgreements(List<ub> list);

    void showInviteCodeField();

    void showInviteCodeFieldError(boolean z);

    void showLoadingDialog();

    void showPhoneFieldError(boolean z);

    void showSkipButton();

    void showUnknownError();

    void showUserPolicy(z99 z99Var);
}

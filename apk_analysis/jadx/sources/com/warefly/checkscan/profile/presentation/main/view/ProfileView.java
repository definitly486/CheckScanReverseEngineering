package com.warefly.checkscan.profile.presentation.main.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;
import defpackage.m6;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ProfileView extends BaseView {
    void copyInviteCode(String str);

    void dismissDeleteWarningDialog();

    void dismissLoadingDialog();

    void dismissLogoutWarningDialog();

    void requestGallery();

    void shareReferralLink(String str);

    void showErrorDeleteAccount();

    void showErrorTryAgain(boolean z);

    void showFaqPage(String str);

    void showLargeFile();

    void showLoadingDialog();

    void showLoadingSpinner(boolean z);

    void showNetworkError();

    void showPromocodeEnterBottomSheet(PromocodeBlock promocodeBlock);

    void showPromocodeErrorBottomSheet(m6 m6Var);

    void showScreen(List<? extends pz3> list);

    void showToastMessage(String str);

    void showUnSuccessLogOut();

    void showWarningDeleteAccount();

    void showWarningLogoutDialog();
}

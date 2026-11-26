package com.warefly.checkscan.presentation.bonuses.main.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.b06;
import defpackage.m6;
import defpackage.pz3;
import defpackage.q6;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BonusesMainNewView extends BaseView {
    void changeSearchVisibility(boolean z);

    void dismissLoadingDialog();

    void openCustomTab(String str);

    void openDeeplink(String str);

    void scrollNextSpecials(int i);

    void setAvatar(String str);

    void setBadgeType(ProfileBadgeView.b bVar);

    void showContent(List<? extends pz3> list);

    void showLoadingDialog();

    void showOrdDialog(b06 b06Var);

    void showPromocodeErrorBottomSheet(m6 m6Var);

    void showPromocodeSuccessBottomSheet(q6 q6Var);

    void showToolbar(boolean z);

    void showUnreadNotificationsBadge(boolean z);
}

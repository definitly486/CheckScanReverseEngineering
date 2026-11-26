package com.warefly.checkscan.presentation.notifications.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface NotificationsView extends BaseView {
    void showAgreementDialog(String str);

    void showAllNotificationsLoaded();

    void showEmptyNotifications(boolean z);

    void showEmptyNotificationsProgress(boolean z);

    void showNotifications(boolean z, List<? extends pz3> list);

    void showOrdInfoDialog(b06 b06Var);

    void showPageOfNotificationsProgress(boolean z);

    void showRefreshNotificationsProgress(boolean z);
}

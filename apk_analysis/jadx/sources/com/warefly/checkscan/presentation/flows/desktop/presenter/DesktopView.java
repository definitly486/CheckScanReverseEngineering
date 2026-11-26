package com.warefly.checkscan.presentation.flows.desktop.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.b06;
import defpackage.ed3;
import defpackage.hc0;
import defpackage.ri8;

/* JADX INFO: loaded from: classes5.dex */
public interface DesktopView extends BaseView {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a Notifications;
        public static final a Profile;

        static {
            a aVar = new a("Notifications", 0);
            Notifications = aVar;
            a aVar2 = new a("Profile", 1);
            Profile = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    void hideFloatingButton();

    void requestPushPermission();

    void requestSystemPermission();

    void setAvatar(String str);

    void setBadgeType(ProfileBadgeView.b bVar);

    void setBottomItem(ri8 ri8Var);

    void setBottomSelectedIcon(ri8 ri8Var);

    void setBottomTabs(boolean z);

    void setTab(ri8 ri8Var, Deeplink.Desktop desktop);

    void setUpChequesToolbar();

    void setUpDefaultToolbar();

    void setUpDiscountToolbar();

    void setUpScanButtonImage(String str);

    void showBottomBanner(hc0.a aVar);

    void showCoinAnim();

    void showFloatingButton(ed3 ed3Var);

    void showNoInternetConnection(boolean z);

    void showOrdAdDialog(b06 b06Var);

    void showPushPermissionDialog();

    void showScanButton(boolean z);

    void showTasksAnimatedBadge(boolean z);

    void showToolbar(boolean z);

    void showUnreadNotificationsBadge(boolean z);

    void showUpdateAvailable();
}

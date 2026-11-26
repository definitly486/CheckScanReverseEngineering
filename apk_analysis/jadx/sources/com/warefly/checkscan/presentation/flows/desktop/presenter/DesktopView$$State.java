package com.warefly.checkscan.presentation.flows.desktop.presenter;

import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.b06;
import defpackage.ed3;
import defpackage.hc0;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.ri8;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class DesktopView$$State extends kh5<DesktopView> implements DesktopView {

    public class SetTabCommand extends wd9<DesktopView> {
        public final Deeplink.Desktop deeplink;
        public final ri8 tab;

        public SetTabCommand(DesktopView$$State desktopView$$State, ri8 ri8Var, Deeplink.Desktop desktop) {
            super("setTab", i9.class);
            this.tab = ri8Var;
            this.deeplink = desktop;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setTab(this.tab, this.deeplink);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void hideFloatingButton() {
        HideFloatingButtonCommand hideFloatingButtonCommand = new HideFloatingButtonCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideFloatingButtonCommand).b(xd9Var.a, hideFloatingButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).hideFloatingButton();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hideFloatingButtonCommand).a(xd9Var2.a, hideFloatingButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void requestPushPermission() {
        RequestPushPermissionCommand requestPushPermissionCommand = new RequestPushPermissionCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(requestPushPermissionCommand).b(xd9Var.a, requestPushPermissionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).requestPushPermission();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(requestPushPermissionCommand).a(xd9Var2.a, requestPushPermissionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void requestSystemPermission() {
        RequestSystemPermissionCommand requestSystemPermissionCommand = new RequestSystemPermissionCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(requestSystemPermissionCommand).b(xd9Var.a, requestSystemPermissionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).requestSystemPermission();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(requestSystemPermissionCommand).a(xd9Var2.a, requestSystemPermissionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setAvatar(String str) {
        SetAvatarCommand setAvatarCommand = new SetAvatarCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setAvatarCommand).b(xd9Var.a, setAvatarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setAvatar(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setAvatarCommand).a(xd9Var2.a, setAvatarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setBadgeType(ProfileBadgeView.b bVar) {
        SetBadgeTypeCommand setBadgeTypeCommand = new SetBadgeTypeCommand(this, bVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setBadgeTypeCommand).b(xd9Var.a, setBadgeTypeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setBadgeType(bVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setBadgeTypeCommand).a(xd9Var2.a, setBadgeTypeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setBottomItem(ri8 ri8Var) {
        SetBottomItemCommand setBottomItemCommand = new SetBottomItemCommand(this, ri8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setBottomItemCommand).b(xd9Var.a, setBottomItemCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setBottomItem(ri8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setBottomItemCommand).a(xd9Var2.a, setBottomItemCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setBottomSelectedIcon(ri8 ri8Var) {
        SetBottomSelectedIconCommand setBottomSelectedIconCommand = new SetBottomSelectedIconCommand(this, ri8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setBottomSelectedIconCommand).b(xd9Var.a, setBottomSelectedIconCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setBottomSelectedIcon(ri8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setBottomSelectedIconCommand).a(xd9Var2.a, setBottomSelectedIconCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setBottomTabs(boolean z) {
        SetBottomTabsCommand setBottomTabsCommand = new SetBottomTabsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setBottomTabsCommand).b(xd9Var.a, setBottomTabsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setBottomTabs(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setBottomTabsCommand).a(xd9Var2.a, setBottomTabsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setTab(ri8 ri8Var, Deeplink.Desktop desktop) {
        SetTabCommand setTabCommand = new SetTabCommand(this, ri8Var, desktop);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTabCommand).b(xd9Var.a, setTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setTab(ri8Var, desktop);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTabCommand).a(xd9Var2.a, setTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setUpChequesToolbar() {
        SetUpChequesToolbarCommand setUpChequesToolbarCommand = new SetUpChequesToolbarCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setUpChequesToolbarCommand).b(xd9Var.a, setUpChequesToolbarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setUpChequesToolbar();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setUpChequesToolbarCommand).a(xd9Var2.a, setUpChequesToolbarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setUpDefaultToolbar() {
        SetUpDefaultToolbarCommand setUpDefaultToolbarCommand = new SetUpDefaultToolbarCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setUpDefaultToolbarCommand).b(xd9Var.a, setUpDefaultToolbarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setUpDefaultToolbar();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setUpDefaultToolbarCommand).a(xd9Var2.a, setUpDefaultToolbarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setUpDiscountToolbar() {
        SetUpDiscountToolbarCommand setUpDiscountToolbarCommand = new SetUpDiscountToolbarCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setUpDiscountToolbarCommand).b(xd9Var.a, setUpDiscountToolbarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setUpDiscountToolbar();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setUpDiscountToolbarCommand).a(xd9Var2.a, setUpDiscountToolbarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void setUpScanButtonImage(String str) {
        SetUpScanButtonImageCommand setUpScanButtonImageCommand = new SetUpScanButtonImageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setUpScanButtonImageCommand).b(xd9Var.a, setUpScanButtonImageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).setUpScanButtonImage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setUpScanButtonImageCommand).a(xd9Var2.a, setUpScanButtonImageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showBottomBanner(hc0.a aVar) {
        ShowBottomBannerCommand showBottomBannerCommand = new ShowBottomBannerCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBottomBannerCommand).b(xd9Var.a, showBottomBannerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showBottomBanner(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBottomBannerCommand).a(xd9Var2.a, showBottomBannerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showCoinAnim() {
        ShowCoinAnimCommand showCoinAnimCommand = new ShowCoinAnimCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCoinAnimCommand).b(xd9Var.a, showCoinAnimCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showCoinAnim();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCoinAnimCommand).a(xd9Var2.a, showCoinAnimCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showFloatingButton(ed3 ed3Var) {
        ShowFloatingButtonCommand showFloatingButtonCommand = new ShowFloatingButtonCommand(this, ed3Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFloatingButtonCommand).b(xd9Var.a, showFloatingButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showFloatingButton(ed3Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFloatingButtonCommand).a(xd9Var2.a, showFloatingButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showNoInternetConnection(boolean z) {
        ShowNoInternetConnectionCommand showNoInternetConnectionCommand = new ShowNoInternetConnectionCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoInternetConnectionCommand).b(xd9Var.a, showNoInternetConnectionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showNoInternetConnection(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoInternetConnectionCommand).a(xd9Var2.a, showNoInternetConnectionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showOrdAdDialog(b06 b06Var) {
        ShowOrdAdDialogCommand showOrdAdDialogCommand = new ShowOrdAdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdAdDialogCommand).b(xd9Var.a, showOrdAdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showOrdAdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdAdDialogCommand).a(xd9Var2.a, showOrdAdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showPushPermissionDialog() {
        ShowPushPermissionDialogCommand showPushPermissionDialogCommand = new ShowPushPermissionDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPushPermissionDialogCommand).b(xd9Var.a, showPushPermissionDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showPushPermissionDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPushPermissionDialogCommand).a(xd9Var2.a, showPushPermissionDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showScanButton(boolean z) {
        ShowScanButtonCommand showScanButtonCommand = new ShowScanButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showScanButtonCommand).b(xd9Var.a, showScanButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showScanButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showScanButtonCommand).a(xd9Var2.a, showScanButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showTasksAnimatedBadge(boolean z) {
        ShowTasksAnimatedBadgeCommand showTasksAnimatedBadgeCommand = new ShowTasksAnimatedBadgeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTasksAnimatedBadgeCommand).b(xd9Var.a, showTasksAnimatedBadgeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showTasksAnimatedBadge(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTasksAnimatedBadgeCommand).a(xd9Var2.a, showTasksAnimatedBadgeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showToolbar(boolean z) {
        ShowToolbarCommand showToolbarCommand = new ShowToolbarCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToolbarCommand).b(xd9Var.a, showToolbarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showToolbar(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToolbarCommand).a(xd9Var2.a, showToolbarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showUnreadNotificationsBadge(boolean z) {
        ShowUnreadNotificationsBadgeCommand showUnreadNotificationsBadgeCommand = new ShowUnreadNotificationsBadgeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnreadNotificationsBadgeCommand).b(xd9Var.a, showUnreadNotificationsBadgeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showUnreadNotificationsBadge(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnreadNotificationsBadgeCommand).a(xd9Var2.a, showUnreadNotificationsBadgeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public void showUpdateAvailable() {
        ShowUpdateAvailableCommand showUpdateAvailableCommand = new ShowUpdateAvailableCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUpdateAvailableCommand).b(xd9Var.a, showUpdateAvailableCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DesktopView) it.next()).showUpdateAvailable();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUpdateAvailableCommand).a(xd9Var2.a, showUpdateAvailableCommand);
    }

    public class HideFloatingButtonCommand extends wd9<DesktopView> {
        public HideFloatingButtonCommand(DesktopView$$State desktopView$$State) {
            super("hideFloatingButton", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.hideFloatingButton();
        }
    }

    public class OpenUrlCommand extends wd9<DesktopView> {
        public final String arg0;

        public OpenUrlCommand(DesktopView$$State desktopView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<DesktopView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(DesktopView$$State desktopView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.openUrlInCustomTab(this.arg0);
        }
    }

    public class RequestPushPermissionCommand extends wd9<DesktopView> {
        public RequestPushPermissionCommand(DesktopView$$State desktopView$$State) {
            super("requestPushPermission", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.requestPushPermission();
        }
    }

    public class RequestSystemPermissionCommand extends wd9<DesktopView> {
        public RequestSystemPermissionCommand(DesktopView$$State desktopView$$State) {
            super("requestSystemPermission", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.requestSystemPermission();
        }
    }

    public class SetAvatarCommand extends wd9<DesktopView> {
        public final String url;

        public SetAvatarCommand(DesktopView$$State desktopView$$State, String str) {
            super("setAvatar", i9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setAvatar(this.url);
        }
    }

    public class SetBadgeTypeCommand extends wd9<DesktopView> {
        public final ProfileBadgeView.b badge;

        public SetBadgeTypeCommand(DesktopView$$State desktopView$$State, ProfileBadgeView.b bVar) {
            super("setBadgeType", k9.class);
            this.badge = bVar;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setBadgeType(this.badge);
        }
    }

    public class SetBottomItemCommand extends wd9<DesktopView> {
        public final ri8 tab;

        public SetBottomItemCommand(DesktopView$$State desktopView$$State, ri8 ri8Var) {
            super("setBottomItem", hx5.class);
            this.tab = ri8Var;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setBottomItem(this.tab);
        }
    }

    public class SetBottomSelectedIconCommand extends wd9<DesktopView> {
        public final ri8 tab;

        public SetBottomSelectedIconCommand(DesktopView$$State desktopView$$State, ri8 ri8Var) {
            super("setBottomSelectedIcon", hx5.class);
            this.tab = ri8Var;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setBottomSelectedIcon(this.tab);
        }
    }

    public class SetBottomTabsCommand extends wd9<DesktopView> {
        public final boolean isGamesTabVisible;

        public SetBottomTabsCommand(DesktopView$$State desktopView$$State, boolean z) {
            super("setBottomTabs", i9.class);
            this.isGamesTabVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setBottomTabs(this.isGamesTabVisible);
        }
    }

    public class SetUpChequesToolbarCommand extends wd9<DesktopView> {
        public SetUpChequesToolbarCommand(DesktopView$$State desktopView$$State) {
            super("setUpChequesToolbar", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setUpChequesToolbar();
        }
    }

    public class SetUpDefaultToolbarCommand extends wd9<DesktopView> {
        public SetUpDefaultToolbarCommand(DesktopView$$State desktopView$$State) {
            super("setUpDefaultToolbar", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setUpDefaultToolbar();
        }
    }

    public class SetUpDiscountToolbarCommand extends wd9<DesktopView> {
        public SetUpDiscountToolbarCommand(DesktopView$$State desktopView$$State) {
            super("setUpDiscountToolbar", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setUpDiscountToolbar();
        }
    }

    public class SetUpScanButtonImageCommand extends wd9<DesktopView> {
        public final String imageUrl;

        public SetUpScanButtonImageCommand(DesktopView$$State desktopView$$State, String str) {
            super("setUpScanButtonImage", k9.class);
            this.imageUrl = str;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.setUpScanButtonImage(this.imageUrl);
        }
    }

    public class ShowBottomBannerCommand extends wd9<DesktopView> {
        public final hc0.a banner;

        public ShowBottomBannerCommand(DesktopView$$State desktopView$$State, hc0.a aVar) {
            super("showBottomBanner", hx5.class);
            this.banner = aVar;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showBottomBanner(this.banner);
        }
    }

    public class ShowCoinAnimCommand extends wd9<DesktopView> {
        public ShowCoinAnimCommand(DesktopView$$State desktopView$$State) {
            super("showCoinAnim", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showCoinAnim();
        }
    }

    public class ShowFloatingButtonCommand extends wd9<DesktopView> {
        public final ed3 data;

        public ShowFloatingButtonCommand(DesktopView$$State desktopView$$State, ed3 ed3Var) {
            super("showFloatingButton", k9.class);
            this.data = ed3Var;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showFloatingButton(this.data);
        }
    }

    public class ShowNoInternetConnectionCommand extends wd9<DesktopView> {
        public final boolean show;

        public ShowNoInternetConnectionCommand(DesktopView$$State desktopView$$State, boolean z) {
            super("showNoInternetConnection", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showNoInternetConnection(this.show);
        }
    }

    public class ShowOrdAdDialogCommand extends wd9<DesktopView> {
        public final b06 ordInfo;

        public ShowOrdAdDialogCommand(DesktopView$$State desktopView$$State, b06 b06Var) {
            super("showOrdAdDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showOrdAdDialog(this.ordInfo);
        }
    }

    public class ShowPushPermissionDialogCommand extends wd9<DesktopView> {
        public ShowPushPermissionDialogCommand(DesktopView$$State desktopView$$State) {
            super("showPushPermissionDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showPushPermissionDialog();
        }
    }

    public class ShowScanButtonCommand extends wd9<DesktopView> {
        public final boolean isVisible;

        public ShowScanButtonCommand(DesktopView$$State desktopView$$State, boolean z) {
            super("showScanButton", i9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showScanButton(this.isVisible);
        }
    }

    public class ShowTasksAnimatedBadgeCommand extends wd9<DesktopView> {
        public final boolean show;

        public ShowTasksAnimatedBadgeCommand(DesktopView$$State desktopView$$State, boolean z) {
            super("showTasksAnimatedBadge", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showTasksAnimatedBadge(this.show);
        }
    }

    public class ShowToolbarCommand extends wd9<DesktopView> {
        public final boolean show;

        public ShowToolbarCommand(DesktopView$$State desktopView$$State, boolean z) {
            super("showToolbar", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showToolbar(this.show);
        }
    }

    public class ShowUnreadNotificationsBadgeCommand extends wd9<DesktopView> {
        public final boolean unread;

        public ShowUnreadNotificationsBadgeCommand(DesktopView$$State desktopView$$State, boolean z) {
            super("showUnreadNotificationsBadge", hx5.class);
            this.unread = z;
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showUnreadNotificationsBadge(this.unread);
        }
    }

    public class ShowUpdateAvailableCommand extends wd9<DesktopView> {
        public ShowUpdateAvailableCommand(DesktopView$$State desktopView$$State) {
            super("showUpdateAvailable", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DesktopView desktopView) {
            desktopView.showUpdateAvailable();
        }
    }
}

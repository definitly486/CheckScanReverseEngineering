package com.warefly.checkscan.presentation.notifications.presenter;

import defpackage.b06;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NotificationsView$$State extends kh5<NotificationsView> implements NotificationsView {

    public class ShowNotificationsCommand extends wd9<NotificationsView> {
        public final List<? extends pz3> data;
        public final boolean show;

        public ShowNotificationsCommand(NotificationsView$$State notificationsView$$State, boolean z, List<? extends pz3> list) {
            super("showNotifications", k9.class);
            this.show = z;
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showNotifications(this.show, this.data);
        }
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
            ((NotificationsView) it.next()).openUrl(str);
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
            ((NotificationsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showAgreementDialog(String str) {
        ShowAgreementDialogCommand showAgreementDialogCommand = new ShowAgreementDialogCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAgreementDialogCommand).b(xd9Var.a, showAgreementDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showAgreementDialog(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAgreementDialogCommand).a(xd9Var2.a, showAgreementDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showAllNotificationsLoaded() {
        ShowAllNotificationsLoadedCommand showAllNotificationsLoadedCommand = new ShowAllNotificationsLoadedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAllNotificationsLoadedCommand).b(xd9Var.a, showAllNotificationsLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showAllNotificationsLoaded();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAllNotificationsLoadedCommand).a(xd9Var2.a, showAllNotificationsLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showEmptyNotifications(boolean z) {
        ShowEmptyNotificationsCommand showEmptyNotificationsCommand = new ShowEmptyNotificationsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyNotificationsCommand).b(xd9Var.a, showEmptyNotificationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showEmptyNotifications(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyNotificationsCommand).a(xd9Var2.a, showEmptyNotificationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showEmptyNotificationsProgress(boolean z) {
        ShowEmptyNotificationsProgressCommand showEmptyNotificationsProgressCommand = new ShowEmptyNotificationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyNotificationsProgressCommand).b(xd9Var.a, showEmptyNotificationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showEmptyNotificationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyNotificationsProgressCommand).a(xd9Var2.a, showEmptyNotificationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showNotifications(boolean z, List<? extends pz3> list) {
        ShowNotificationsCommand showNotificationsCommand = new ShowNotificationsCommand(this, z, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNotificationsCommand).b(xd9Var.a, showNotificationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showNotifications(z, list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNotificationsCommand).a(xd9Var2.a, showNotificationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showOrdInfoDialog(b06 b06Var) {
        ShowOrdInfoDialogCommand showOrdInfoDialogCommand = new ShowOrdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdInfoDialogCommand).b(xd9Var.a, showOrdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showOrdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdInfoDialogCommand).a(xd9Var2.a, showOrdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showPageOfNotificationsProgress(boolean z) {
        ShowPageOfNotificationsProgressCommand showPageOfNotificationsProgressCommand = new ShowPageOfNotificationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPageOfNotificationsProgressCommand).b(xd9Var.a, showPageOfNotificationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showPageOfNotificationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPageOfNotificationsProgressCommand).a(xd9Var2.a, showPageOfNotificationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public void showRefreshNotificationsProgress(boolean z) {
        ShowRefreshNotificationsProgressCommand showRefreshNotificationsProgressCommand = new ShowRefreshNotificationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRefreshNotificationsProgressCommand).b(xd9Var.a, showRefreshNotificationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NotificationsView) it.next()).showRefreshNotificationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRefreshNotificationsProgressCommand).a(xd9Var2.a, showRefreshNotificationsProgressCommand);
    }

    public class OpenUrlCommand extends wd9<NotificationsView> {
        public final String arg0;

        public OpenUrlCommand(NotificationsView$$State notificationsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<NotificationsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(NotificationsView$$State notificationsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAgreementDialogCommand extends wd9<NotificationsView> {
        public final String url;

        public ShowAgreementDialogCommand(NotificationsView$$State notificationsView$$State, String str) {
            super("showAgreementDialog", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showAgreementDialog(this.url);
        }
    }

    public class ShowAllNotificationsLoadedCommand extends wd9<NotificationsView> {
        public ShowAllNotificationsLoadedCommand(NotificationsView$$State notificationsView$$State) {
            super("showAllNotificationsLoaded", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showAllNotificationsLoaded();
        }
    }

    public class ShowEmptyNotificationsCommand extends wd9<NotificationsView> {
        public final boolean show;

        public ShowEmptyNotificationsCommand(NotificationsView$$State notificationsView$$State, boolean z) {
            super("showEmptyNotifications", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showEmptyNotifications(this.show);
        }
    }

    public class ShowEmptyNotificationsProgressCommand extends wd9<NotificationsView> {
        public final boolean show;

        public ShowEmptyNotificationsProgressCommand(NotificationsView$$State notificationsView$$State, boolean z) {
            super("showEmptyNotificationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showEmptyNotificationsProgress(this.show);
        }
    }

    public class ShowOrdInfoDialogCommand extends wd9<NotificationsView> {
        public final b06 ordInfo;

        public ShowOrdInfoDialogCommand(NotificationsView$$State notificationsView$$State, b06 b06Var) {
            super("showOrdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showOrdInfoDialog(this.ordInfo);
        }
    }

    public class ShowPageOfNotificationsProgressCommand extends wd9<NotificationsView> {
        public final boolean show;

        public ShowPageOfNotificationsProgressCommand(NotificationsView$$State notificationsView$$State, boolean z) {
            super("showPageOfNotificationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showPageOfNotificationsProgress(this.show);
        }
    }

    public class ShowRefreshNotificationsProgressCommand extends wd9<NotificationsView> {
        public final boolean show;

        public ShowRefreshNotificationsProgressCommand(NotificationsView$$State notificationsView$$State, boolean z) {
            super("showRefreshNotificationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(NotificationsView notificationsView) {
            notificationsView.showRefreshNotificationsProgress(this.show);
        }
    }
}

package com.warefly.checkscan.presentation.account.sessionExpired.presenter;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class SessionExpiredView$$State extends kh5<SessionExpiredView> implements SessionExpiredView {
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
            ((SessionExpiredView) it.next()).openUrl(str);
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
            ((SessionExpiredView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView
    public void showCouldntLogout() {
        ShowCouldntLogoutCommand showCouldntLogoutCommand = new ShowCouldntLogoutCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLogoutCommand).b(xd9Var.a, showCouldntLogoutCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SessionExpiredView) it.next()).showCouldntLogout();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLogoutCommand).a(xd9Var2.a, showCouldntLogoutCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SessionExpiredView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView
    public void startFeedback() {
        StartFeedbackCommand startFeedbackCommand = new StartFeedbackCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startFeedbackCommand).b(xd9Var.a, startFeedbackCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SessionExpiredView) it.next()).startFeedback();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startFeedbackCommand).a(xd9Var2.a, startFeedbackCommand);
    }

    public class OpenUrlCommand extends wd9<SessionExpiredView> {
        public final String arg0;

        public OpenUrlCommand(SessionExpiredView$$State sessionExpiredView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SessionExpiredView sessionExpiredView) {
            sessionExpiredView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<SessionExpiredView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(SessionExpiredView$$State sessionExpiredView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SessionExpiredView sessionExpiredView) {
            sessionExpiredView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowCouldntLogoutCommand extends wd9<SessionExpiredView> {
        public ShowCouldntLogoutCommand(SessionExpiredView$$State sessionExpiredView$$State) {
            super("showCouldntLogout", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(SessionExpiredView sessionExpiredView) {
            sessionExpiredView.showCouldntLogout();
        }
    }

    public class ShowLoadingCommand extends wd9<SessionExpiredView> {
        public final boolean isLoading;

        public ShowLoadingCommand(SessionExpiredView$$State sessionExpiredView$$State, boolean z) {
            super("showLoading", i9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(SessionExpiredView sessionExpiredView) {
            sessionExpiredView.showLoading(this.isLoading);
        }
    }

    public class StartFeedbackCommand extends wd9<SessionExpiredView> {
        public StartFeedbackCommand(SessionExpiredView$$State sessionExpiredView$$State) {
            super("startFeedback", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(SessionExpiredView sessionExpiredView) {
            sessionExpiredView.startFeedback();
        }
    }
}

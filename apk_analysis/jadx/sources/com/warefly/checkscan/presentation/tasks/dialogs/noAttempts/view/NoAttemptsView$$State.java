package com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view;

import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class NoAttemptsView$$State extends kh5<NoAttemptsView> implements NoAttemptsView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsView
    public void onDismissDialog() {
        OnDismissDialogCommand onDismissDialogCommand = new OnDismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(onDismissDialogCommand).b(xd9Var.a, onDismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NoAttemptsView) it.next()).onDismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(onDismissDialogCommand).a(xd9Var2.a, onDismissDialogCommand);
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
            ((NoAttemptsView) it.next()).openUrl(str);
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
            ((NoAttemptsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsView
    public void showContent(DailyTaskNoAttempts dailyTaskNoAttempts) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, dailyTaskNoAttempts);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NoAttemptsView) it.next()).showContent(dailyTaskNoAttempts);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    public class OnDismissDialogCommand extends wd9<NoAttemptsView> {
        public OnDismissDialogCommand(NoAttemptsView$$State noAttemptsView$$State) {
            super("onDismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(NoAttemptsView noAttemptsView) {
            noAttemptsView.onDismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<NoAttemptsView> {
        public final String arg0;

        public OpenUrlCommand(NoAttemptsView$$State noAttemptsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NoAttemptsView noAttemptsView) {
            noAttemptsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<NoAttemptsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(NoAttemptsView$$State noAttemptsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NoAttemptsView noAttemptsView) {
            noAttemptsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<NoAttemptsView> {
        public final DailyTaskNoAttempts noAttempts;

        public ShowContentCommand(NoAttemptsView$$State noAttemptsView$$State, DailyTaskNoAttempts dailyTaskNoAttempts) {
            super("showContent", k9.class);
            this.noAttempts = dailyTaskNoAttempts;
        }

        @Override // defpackage.wd9
        public void apply(NoAttemptsView noAttemptsView) {
            noAttemptsView.showContent(this.noAttempts);
        }
    }
}

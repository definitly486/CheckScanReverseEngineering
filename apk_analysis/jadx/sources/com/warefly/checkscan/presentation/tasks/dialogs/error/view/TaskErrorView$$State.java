package com.warefly.checkscan.presentation.tasks.dialogs.error.view;

import defpackage.hn8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TaskErrorView$$State extends kh5<TaskErrorView> implements TaskErrorView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorView
    public void onDismissDialog() {
        OnDismissDialogCommand onDismissDialogCommand = new OnDismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(onDismissDialogCommand).b(xd9Var.a, onDismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskErrorView) it.next()).onDismissDialog();
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
            ((TaskErrorView) it.next()).openUrl(str);
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
            ((TaskErrorView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorView
    public void showError(hn8 hn8Var) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskErrorView) it.next()).showError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    public class OnDismissDialogCommand extends wd9<TaskErrorView> {
        public OnDismissDialogCommand(TaskErrorView$$State taskErrorView$$State) {
            super("onDismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TaskErrorView taskErrorView) {
            taskErrorView.onDismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<TaskErrorView> {
        public final String arg0;

        public OpenUrlCommand(TaskErrorView$$State taskErrorView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskErrorView taskErrorView) {
            taskErrorView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TaskErrorView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TaskErrorView$$State taskErrorView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskErrorView taskErrorView) {
            taskErrorView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowErrorCommand extends wd9<TaskErrorView> {
        public final hn8 taskError;

        public ShowErrorCommand(TaskErrorView$$State taskErrorView$$State, hn8 hn8Var) {
            super("showError", k9.class);
            this.taskError = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(TaskErrorView taskErrorView) {
            taskErrorView.showError(this.taskError);
        }
    }
}

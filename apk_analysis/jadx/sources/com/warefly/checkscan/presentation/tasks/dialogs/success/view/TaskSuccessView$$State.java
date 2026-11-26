package com.warefly.checkscan.presentation.tasks.dialogs.success.view;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TaskSuccessView$$State extends kh5<TaskSuccessView> implements TaskSuccessView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskSuccessView) it.next()).dismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDialogCommand).a(xd9Var2.a, dismissDialogCommand);
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
            ((TaskSuccessView) it.next()).openUrl(str);
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
            ((TaskSuccessView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView
    public void showConfetti() {
        ShowConfettiCommand showConfettiCommand = new ShowConfettiCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showConfettiCommand).b(xd9Var.a, showConfettiCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskSuccessView) it.next()).showConfetti();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showConfettiCommand).a(xd9Var2.a, showConfettiCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView
    public void vibrate() {
        VibrateCommand vibrateCommand = new VibrateCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateCommand).b(xd9Var.a, vibrateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskSuccessView) it.next()).vibrate();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateCommand).a(xd9Var2.a, vibrateCommand);
    }

    public class DismissDialogCommand extends wd9<TaskSuccessView> {
        public DismissDialogCommand(TaskSuccessView$$State taskSuccessView$$State) {
            super("dismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TaskSuccessView taskSuccessView) {
            taskSuccessView.dismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<TaskSuccessView> {
        public final String arg0;

        public OpenUrlCommand(TaskSuccessView$$State taskSuccessView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskSuccessView taskSuccessView) {
            taskSuccessView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TaskSuccessView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TaskSuccessView$$State taskSuccessView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskSuccessView taskSuccessView) {
            taskSuccessView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowConfettiCommand extends wd9<TaskSuccessView> {
        public ShowConfettiCommand(TaskSuccessView$$State taskSuccessView$$State) {
            super("showConfetti", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TaskSuccessView taskSuccessView) {
            taskSuccessView.showConfetti();
        }
    }

    public class VibrateCommand extends wd9<TaskSuccessView> {
        public VibrateCommand(TaskSuccessView$$State taskSuccessView$$State) {
            super("vibrate", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TaskSuccessView taskSuccessView) {
            taskSuccessView.vibrate();
        }
    }
}

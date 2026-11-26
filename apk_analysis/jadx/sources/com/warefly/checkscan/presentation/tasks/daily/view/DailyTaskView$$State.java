package com.warefly.checkscan.presentation.tasks.daily.view;

import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.l82;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class DailyTaskView$$State extends kh5<DailyTaskView> implements DailyTaskView {

    public class ShowNoAttemptsDialogCommand extends wd9<DailyTaskView> {
        public final DailyTaskNoAttempts noAttempts;
        public final int taskId;

        public ShowNoAttemptsDialogCommand(DailyTaskView$$State dailyTaskView$$State, int i, DailyTaskNoAttempts dailyTaskNoAttempts) {
            super("showNoAttemptsDialog", hx5.class);
            this.taskId = i;
            this.noAttempts = dailyTaskNoAttempts;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showNoAttemptsDialog(this.taskId, this.noAttempts);
        }
    }

    public class ShowResultDialogCommand extends wd9<DailyTaskView> {
        public final DailyTaskResult result;
        public final int taskId;

        public ShowResultDialogCommand(DailyTaskView$$State dailyTaskView$$State, int i, DailyTaskResult dailyTaskResult) {
            super("showResultDialog", hx5.class);
            this.taskId = i;
            this.result = dailyTaskResult;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showResultDialog(this.taskId, this.result);
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
            ((DailyTaskView) it.next()).openUrl(str);
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
            ((DailyTaskView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showButtonLoading(boolean z) {
        ShowButtonLoadingCommand showButtonLoadingCommand = new ShowButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonLoadingCommand).b(xd9Var.a, showButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonLoadingCommand).a(xd9Var2.a, showButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showConfetti() {
        ShowConfettiCommand showConfettiCommand = new ShowConfettiCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showConfettiCommand).b(xd9Var.a, showConfettiCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showConfetti();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showConfettiCommand).a(xd9Var2.a, showConfettiCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showContent(l82 l82Var) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, l82Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showContent(l82Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showDefaultError() {
        ShowDefaultErrorCommand showDefaultErrorCommand = new ShowDefaultErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDefaultErrorCommand).b(xd9Var.a, showDefaultErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showDefaultError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDefaultErrorCommand).a(xd9Var2.a, showDefaultErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showNoAttemptsDialog(int i, DailyTaskNoAttempts dailyTaskNoAttempts) {
        ShowNoAttemptsDialogCommand showNoAttemptsDialogCommand = new ShowNoAttemptsDialogCommand(this, i, dailyTaskNoAttempts);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoAttemptsDialogCommand).b(xd9Var.a, showNoAttemptsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showNoAttemptsDialog(i, dailyTaskNoAttempts);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoAttemptsDialogCommand).a(xd9Var2.a, showNoAttemptsDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showResultDialog(int i, DailyTaskResult dailyTaskResult) {
        ShowResultDialogCommand showResultDialogCommand = new ShowResultDialogCommand(this, i, dailyTaskResult);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showResultDialogCommand).b(xd9Var.a, showResultDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showResultDialog(i, dailyTaskResult);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showResultDialogCommand).a(xd9Var2.a, showResultDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void showScreenLoadingError() {
        ShowScreenLoadingErrorCommand showScreenLoadingErrorCommand = new ShowScreenLoadingErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showScreenLoadingErrorCommand).b(xd9Var.a, showScreenLoadingErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).showScreenLoadingError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showScreenLoadingErrorCommand).a(xd9Var2.a, showScreenLoadingErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView
    public void vibrate() {
        VibrateCommand vibrateCommand = new VibrateCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateCommand).b(xd9Var.a, vibrateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskView) it.next()).vibrate();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateCommand).a(xd9Var2.a, vibrateCommand);
    }

    public class OpenUrlCommand extends wd9<DailyTaskView> {
        public final String arg0;

        public OpenUrlCommand(DailyTaskView$$State dailyTaskView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<DailyTaskView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(DailyTaskView$$State dailyTaskView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowButtonLoadingCommand extends wd9<DailyTaskView> {
        public final boolean isLoading;

        public ShowButtonLoadingCommand(DailyTaskView$$State dailyTaskView$$State, boolean z) {
            super("showButtonLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showButtonLoading(this.isLoading);
        }
    }

    public class ShowConfettiCommand extends wd9<DailyTaskView> {
        public ShowConfettiCommand(DailyTaskView$$State dailyTaskView$$State) {
            super("showConfetti", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showConfetti();
        }
    }

    public class ShowContentCommand extends wd9<DailyTaskView> {
        public final l82 screen;

        public ShowContentCommand(DailyTaskView$$State dailyTaskView$$State, l82 l82Var) {
            super("showContent", k9.class);
            this.screen = l82Var;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showContent(this.screen);
        }
    }

    public class ShowDefaultErrorCommand extends wd9<DailyTaskView> {
        public ShowDefaultErrorCommand(DailyTaskView$$State dailyTaskView$$State) {
            super("showDefaultError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showDefaultError();
        }
    }

    public class ShowScreenLoadingErrorCommand extends wd9<DailyTaskView> {
        public ShowScreenLoadingErrorCommand(DailyTaskView$$State dailyTaskView$$State) {
            super("showScreenLoadingError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.showScreenLoadingError();
        }
    }

    public class VibrateCommand extends wd9<DailyTaskView> {
        public VibrateCommand(DailyTaskView$$State dailyTaskView$$State) {
            super("vibrate", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskView dailyTaskView) {
            dailyTaskView.vibrate();
        }
    }
}

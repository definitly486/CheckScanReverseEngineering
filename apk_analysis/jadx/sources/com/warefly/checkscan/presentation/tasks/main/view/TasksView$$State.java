package com.warefly.checkscan.presentation.tasks.main.view;

import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;
import defpackage.b06;
import defpackage.hn8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.no8;
import defpackage.so8;
import defpackage.w48;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TasksView$$State extends kh5<TasksView> implements TasksView {

    public class ShowTaskSuccessCommand extends wd9<TasksView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(TasksView$$State tasksView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showTaskSuccess(this.taskId, this.success);
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
            ((TasksView) it.next()).openUrl(str);
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
            ((TasksView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void setContent(List<? extends so8> list) {
        SetContentCommand setContentCommand = new SetContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setContentCommand).b(xd9Var.a, setContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).setContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setContentCommand).a(xd9Var2.a, setContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showAd(List<? extends w48> list) {
        ShowAdCommand showAdCommand = new ShowAdCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAdCommand).b(xd9Var.a, showAdCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showAd(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAdCommand).a(xd9Var2.a, showAdCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showAdResult(DailyBonusPoints dailyBonusPoints) {
        ShowAdResultCommand showAdResultCommand = new ShowAdResultCommand(this, dailyBonusPoints);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAdResultCommand).b(xd9Var.a, showAdResultCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showAdResult(dailyBonusPoints);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAdResultCommand).a(xd9Var2.a, showAdResultCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showDefaultError() {
        ShowDefaultErrorCommand showDefaultErrorCommand = new ShowDefaultErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDefaultErrorCommand).b(xd9Var.a, showDefaultErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showDefaultError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDefaultErrorCommand).a(xd9Var2.a, showDefaultErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showErrorLoading(boolean z) {
        ShowErrorLoadingCommand showErrorLoadingCommand = new ShowErrorLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorLoadingCommand).b(xd9Var.a, showErrorLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showErrorLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorLoadingCommand).a(xd9Var2.a, showErrorLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showOrdInfoDialog(b06 b06Var) {
        ShowOrdInfoDialogCommand showOrdInfoDialogCommand = new ShowOrdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdInfoDialogCommand).b(xd9Var.a, showOrdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showOrdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdInfoDialogCommand).a(xd9Var2.a, showOrdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showTaskError(hn8 hn8Var) {
        ShowTaskErrorCommand showTaskErrorCommand = new ShowTaskErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskErrorCommand).b(xd9Var.a, showTaskErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showTaskError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskErrorCommand).a(xd9Var2.a, showTaskErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showTaskSuccess(int i, no8 no8Var) {
        ShowTaskSuccessCommand showTaskSuccessCommand = new ShowTaskSuccessCommand(this, i, no8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskSuccessCommand).b(xd9Var.a, showTaskSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showTaskSuccess(i, no8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskSuccessCommand).a(xd9Var2.a, showTaskSuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void showToolbar(boolean z) {
        ShowToolbarCommand showToolbarCommand = new ShowToolbarCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToolbarCommand).b(xd9Var.a, showToolbarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).showToolbar(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToolbarCommand).a(xd9Var2.a, showToolbarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.main.view.TasksView
    public void turnOffRefreshing() {
        TurnOffRefreshingCommand turnOffRefreshingCommand = new TurnOffRefreshingCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(turnOffRefreshingCommand).b(xd9Var.a, turnOffRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TasksView) it.next()).turnOffRefreshing();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(turnOffRefreshingCommand).a(xd9Var2.a, turnOffRefreshingCommand);
    }

    public class OpenUrlCommand extends wd9<TasksView> {
        public final String arg0;

        public OpenUrlCommand(TasksView$$State tasksView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TasksView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TasksView$$State tasksView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetContentCommand extends wd9<TasksView> {
        public final List<? extends so8> content;

        public SetContentCommand(TasksView$$State tasksView$$State, List<? extends so8> list) {
            super("setContent", k9.class);
            this.content = list;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.setContent(this.content);
        }
    }

    public class ShowAdCommand extends wd9<TasksView> {
        public final List<? extends w48> order;

        public ShowAdCommand(TasksView$$State tasksView$$State, List<? extends w48> list) {
            super("showAd", hx5.class);
            this.order = list;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showAd(this.order);
        }
    }

    public class ShowAdResultCommand extends wd9<TasksView> {
        public final DailyBonusPoints dailyBonusPoints;

        public ShowAdResultCommand(TasksView$$State tasksView$$State, DailyBonusPoints dailyBonusPoints) {
            super("showAdResult", hx5.class);
            this.dailyBonusPoints = dailyBonusPoints;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showAdResult(this.dailyBonusPoints);
        }
    }

    public class ShowDefaultErrorCommand extends wd9<TasksView> {
        public ShowDefaultErrorCommand(TasksView$$State tasksView$$State) {
            super("showDefaultError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showDefaultError();
        }
    }

    public class ShowErrorLoadingCommand extends wd9<TasksView> {
        public final boolean isShow;

        public ShowErrorLoadingCommand(TasksView$$State tasksView$$State, boolean z) {
            super("showErrorLoading", hx5.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showErrorLoading(this.isShow);
        }
    }

    public class ShowLoadingCommand extends wd9<TasksView> {
        public final boolean showLoading;

        public ShowLoadingCommand(TasksView$$State tasksView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.showLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showLoading(this.showLoading);
        }
    }

    public class ShowOrdInfoDialogCommand extends wd9<TasksView> {
        public final b06 ordInfo;

        public ShowOrdInfoDialogCommand(TasksView$$State tasksView$$State, b06 b06Var) {
            super("showOrdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showOrdInfoDialog(this.ordInfo);
        }
    }

    public class ShowTaskErrorCommand extends wd9<TasksView> {
        public final hn8 error;

        public ShowTaskErrorCommand(TasksView$$State tasksView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showTaskError(this.error);
        }
    }

    public class ShowToolbarCommand extends wd9<TasksView> {
        public final boolean show;

        public ShowToolbarCommand(TasksView$$State tasksView$$State, boolean z) {
            super("showToolbar", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.showToolbar(this.show);
        }
    }

    public class TurnOffRefreshingCommand extends wd9<TasksView> {
        public TurnOffRefreshingCommand(TasksView$$State tasksView$$State) {
            super("turnOffRefreshing", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TasksView tasksView) {
            tasksView.turnOffRefreshing();
        }
    }
}

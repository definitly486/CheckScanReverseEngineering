package com.warefly.checkscan.presentation.tasks.completedTasks.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.so8;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CompletedTasksView$$State extends kh5<CompletedTasksView> implements CompletedTasksView {
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
            ((CompletedTasksView) it.next()).openUrl(str);
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
            ((CompletedTasksView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public void setContent(List<? extends so8> list) {
        SetContentCommand setContentCommand = new SetContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setContentCommand).b(xd9Var.a, setContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CompletedTasksView) it.next()).setContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setContentCommand).a(xd9Var2.a, setContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public void showDefaultError() {
        ShowDefaultErrorCommand showDefaultErrorCommand = new ShowDefaultErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDefaultErrorCommand).b(xd9Var.a, showDefaultErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CompletedTasksView) it.next()).showDefaultError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDefaultErrorCommand).a(xd9Var2.a, showDefaultErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public void showErrorLoading(boolean z) {
        ShowErrorLoadingCommand showErrorLoadingCommand = new ShowErrorLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorLoadingCommand).b(xd9Var.a, showErrorLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CompletedTasksView) it.next()).showErrorLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorLoadingCommand).a(xd9Var2.a, showErrorLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CompletedTasksView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView
    public void turnOffRefreshing() {
        TurnOffRefreshingCommand turnOffRefreshingCommand = new TurnOffRefreshingCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(turnOffRefreshingCommand).b(xd9Var.a, turnOffRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CompletedTasksView) it.next()).turnOffRefreshing();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(turnOffRefreshingCommand).a(xd9Var2.a, turnOffRefreshingCommand);
    }

    public class OpenUrlCommand extends wd9<CompletedTasksView> {
        public final String arg0;

        public OpenUrlCommand(CompletedTasksView$$State completedTasksView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CompletedTasksView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CompletedTasksView$$State completedTasksView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetContentCommand extends wd9<CompletedTasksView> {
        public final List<? extends so8> content;

        public SetContentCommand(CompletedTasksView$$State completedTasksView$$State, List<? extends so8> list) {
            super("setContent", k9.class);
            this.content = list;
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.setContent(this.content);
        }
    }

    public class ShowDefaultErrorCommand extends wd9<CompletedTasksView> {
        public ShowDefaultErrorCommand(CompletedTasksView$$State completedTasksView$$State) {
            super("showDefaultError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.showDefaultError();
        }
    }

    public class ShowErrorLoadingCommand extends wd9<CompletedTasksView> {
        public final boolean isShow;

        public ShowErrorLoadingCommand(CompletedTasksView$$State completedTasksView$$State, boolean z) {
            super("showErrorLoading", hx5.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.showErrorLoading(this.isShow);
        }
    }

    public class ShowLoadingCommand extends wd9<CompletedTasksView> {
        public final boolean isLoading;

        public ShowLoadingCommand(CompletedTasksView$$State completedTasksView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.showLoading(this.isLoading);
        }
    }

    public class TurnOffRefreshingCommand extends wd9<CompletedTasksView> {
        public TurnOffRefreshingCommand(CompletedTasksView$$State completedTasksView$$State) {
            super("turnOffRefreshing", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CompletedTasksView completedTasksView) {
            completedTasksView.turnOffRefreshing();
        }
    }
}

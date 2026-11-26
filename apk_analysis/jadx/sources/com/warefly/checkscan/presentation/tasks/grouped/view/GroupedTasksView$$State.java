package com.warefly.checkscan.presentation.tasks.grouped.view;

import defpackage.hn8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.no8;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GroupedTasksView$$State extends kh5<GroupedTasksView> implements GroupedTasksView {

    public class ShowTaskSuccessCommand extends wd9<GroupedTasksView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(GroupedTasksView$$State groupedTasksView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showTaskSuccess(this.taskId, this.success);
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
            ((GroupedTasksView) it.next()).openUrl(str);
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
            ((GroupedTasksView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showDefaultError() {
        ShowDefaultErrorCommand showDefaultErrorCommand = new ShowDefaultErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDefaultErrorCommand).b(xd9Var.a, showDefaultErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showDefaultError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDefaultErrorCommand).a(xd9Var2.a, showDefaultErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showItems(List<? extends pz3> list) {
        ShowItemsCommand showItemsCommand = new ShowItemsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showItemsCommand).b(xd9Var.a, showItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showItems(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showItemsCommand).a(xd9Var2.a, showItemsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showTaskError(hn8 hn8Var) {
        ShowTaskErrorCommand showTaskErrorCommand = new ShowTaskErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskErrorCommand).b(xd9Var.a, showTaskErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showTaskError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskErrorCommand).a(xd9Var2.a, showTaskErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showTaskSuccess(int i, no8 no8Var) {
        ShowTaskSuccessCommand showTaskSuccessCommand = new ShowTaskSuccessCommand(this, i, no8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskSuccessCommand).b(xd9Var.a, showTaskSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showTaskSuccess(i, no8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskSuccessCommand).a(xd9Var2.a, showTaskSuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksView
    public void showToolbarTitle(String str) {
        ShowToolbarTitleCommand showToolbarTitleCommand = new ShowToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToolbarTitleCommand).b(xd9Var.a, showToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GroupedTasksView) it.next()).showToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToolbarTitleCommand).a(xd9Var2.a, showToolbarTitleCommand);
    }

    public class OpenUrlCommand extends wd9<GroupedTasksView> {
        public final String arg0;

        public OpenUrlCommand(GroupedTasksView$$State groupedTasksView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<GroupedTasksView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(GroupedTasksView$$State groupedTasksView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowDefaultErrorCommand extends wd9<GroupedTasksView> {
        public ShowDefaultErrorCommand(GroupedTasksView$$State groupedTasksView$$State) {
            super("showDefaultError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showDefaultError();
        }
    }

    public class ShowErrorCommand extends wd9<GroupedTasksView> {
        public final boolean isError;

        public ShowErrorCommand(GroupedTasksView$$State groupedTasksView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showError(this.isError);
        }
    }

    public class ShowItemsCommand extends wd9<GroupedTasksView> {
        public final List<? extends pz3> items;

        public ShowItemsCommand(GroupedTasksView$$State groupedTasksView$$State, List<? extends pz3> list) {
            super("showItems", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showItems(this.items);
        }
    }

    public class ShowLoadingCommand extends wd9<GroupedTasksView> {
        public final boolean isLoading;

        public ShowLoadingCommand(GroupedTasksView$$State groupedTasksView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showLoading(this.isLoading);
        }
    }

    public class ShowTaskErrorCommand extends wd9<GroupedTasksView> {
        public final hn8 error;

        public ShowTaskErrorCommand(GroupedTasksView$$State groupedTasksView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showTaskError(this.error);
        }
    }

    public class ShowToolbarTitleCommand extends wd9<GroupedTasksView> {
        public final String title;

        public ShowToolbarTitleCommand(GroupedTasksView$$State groupedTasksView$$State, String str) {
            super("showToolbarTitle", k9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(GroupedTasksView groupedTasksView) {
            groupedTasksView.showToolbarTitle(this.title);
        }
    }
}

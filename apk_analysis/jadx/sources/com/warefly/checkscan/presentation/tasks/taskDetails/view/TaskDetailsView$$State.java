package com.warefly.checkscan.presentation.tasks.taskDetails.view;

import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.b06;
import defpackage.hn8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.no8;
import defpackage.um8;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TaskDetailsView$$State extends kh5<TaskDetailsView> implements TaskDetailsView {

    public class ShowTaskSuccessCommand extends wd9<TaskDetailsView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(TaskDetailsView$$State taskDetailsView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showTaskSuccess(this.taskId, this.success);
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
            ((TaskDetailsView) it.next()).openUrl(str);
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
            ((TaskDetailsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showActionLoading(boolean z) {
        ShowActionLoadingCommand showActionLoadingCommand = new ShowActionLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showActionLoadingCommand).b(xd9Var.a, showActionLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showActionLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showActionLoadingCommand).a(xd9Var2.a, showActionLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showClaimButtonLoading(boolean z) {
        ShowClaimButtonLoadingCommand showClaimButtonLoadingCommand = new ShowClaimButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showClaimButtonLoadingCommand).b(xd9Var.a, showClaimButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showClaimButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showClaimButtonLoadingCommand).a(xd9Var2.a, showClaimButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showDetails(um8 um8Var) {
        ShowDetailsCommand showDetailsCommand = new ShowDetailsCommand(this, um8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDetailsCommand).b(xd9Var.a, showDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showDetails(um8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDetailsCommand).a(xd9Var2.a, showDetailsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showError() {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showErrorState(boolean z) {
        ShowErrorStateCommand showErrorStateCommand = new ShowErrorStateCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorStateCommand).b(xd9Var.a, showErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showErrorState(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorStateCommand).a(xd9Var2.a, showErrorStateCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showInfoBottomSheet(List<b.a> list) {
        ShowInfoBottomSheetCommand showInfoBottomSheetCommand = new ShowInfoBottomSheetCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoBottomSheetCommand).b(xd9Var.a, showInfoBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showInfoBottomSheet(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoBottomSheetCommand).a(xd9Var2.a, showInfoBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showLoadingSpinner(boolean z) {
        ShowLoadingSpinnerCommand showLoadingSpinnerCommand = new ShowLoadingSpinnerCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingSpinnerCommand).b(xd9Var.a, showLoadingSpinnerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showLoadingSpinner(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingSpinnerCommand).a(xd9Var2.a, showLoadingSpinnerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showOrdInfoDialog(b06 b06Var) {
        ShowOrdInfoDialogCommand showOrdInfoDialogCommand = new ShowOrdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdInfoDialogCommand).b(xd9Var.a, showOrdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showOrdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdInfoDialogCommand).a(xd9Var2.a, showOrdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showTaskError(hn8 hn8Var) {
        ShowTaskErrorCommand showTaskErrorCommand = new ShowTaskErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskErrorCommand).b(xd9Var.a, showTaskErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showTaskError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskErrorCommand).a(xd9Var2.a, showTaskErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showTaskNotFinished(String str) {
        ShowTaskNotFinishedCommand showTaskNotFinishedCommand = new ShowTaskNotFinishedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskNotFinishedCommand).b(xd9Var.a, showTaskNotFinishedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showTaskNotFinished(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskNotFinishedCommand).a(xd9Var2.a, showTaskNotFinishedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView
    public void showTaskSuccess(int i, no8 no8Var) {
        ShowTaskSuccessCommand showTaskSuccessCommand = new ShowTaskSuccessCommand(this, i, no8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskSuccessCommand).b(xd9Var.a, showTaskSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TaskDetailsView) it.next()).showTaskSuccess(i, no8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskSuccessCommand).a(xd9Var2.a, showTaskSuccessCommand);
    }

    public class OpenUrlCommand extends wd9<TaskDetailsView> {
        public final String arg0;

        public OpenUrlCommand(TaskDetailsView$$State taskDetailsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TaskDetailsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TaskDetailsView$$State taskDetailsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowActionLoadingCommand extends wd9<TaskDetailsView> {
        public final boolean isLoading;

        public ShowActionLoadingCommand(TaskDetailsView$$State taskDetailsView$$State, boolean z) {
            super("showActionLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showActionLoading(this.isLoading);
        }
    }

    public class ShowClaimButtonLoadingCommand extends wd9<TaskDetailsView> {
        public final boolean isLoading;

        public ShowClaimButtonLoadingCommand(TaskDetailsView$$State taskDetailsView$$State, boolean z) {
            super("showClaimButtonLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showClaimButtonLoading(this.isLoading);
        }
    }

    public class ShowDetailsCommand extends wd9<TaskDetailsView> {
        public final um8 details;

        public ShowDetailsCommand(TaskDetailsView$$State taskDetailsView$$State, um8 um8Var) {
            super("showDetails", k9.class);
            this.details = um8Var;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showDetails(this.details);
        }
    }

    public class ShowErrorCommand extends wd9<TaskDetailsView> {
        public ShowErrorCommand(TaskDetailsView$$State taskDetailsView$$State) {
            super("showError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showError();
        }
    }

    public class ShowErrorStateCommand extends wd9<TaskDetailsView> {
        public final boolean isError;

        public ShowErrorStateCommand(TaskDetailsView$$State taskDetailsView$$State, boolean z) {
            super("showErrorState", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showErrorState(this.isError);
        }
    }

    public class ShowInfoBottomSheetCommand extends wd9<TaskDetailsView> {
        public final List<b.a> htmlTexts;

        public ShowInfoBottomSheetCommand(TaskDetailsView$$State taskDetailsView$$State, List<b.a> list) {
            super("showInfoBottomSheet", hx5.class);
            this.htmlTexts = list;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showInfoBottomSheet(this.htmlTexts);
        }
    }

    public class ShowLoadingSpinnerCommand extends wd9<TaskDetailsView> {
        public final boolean isLoading;

        public ShowLoadingSpinnerCommand(TaskDetailsView$$State taskDetailsView$$State, boolean z) {
            super("showLoadingSpinner", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showLoadingSpinner(this.isLoading);
        }
    }

    public class ShowOrdInfoDialogCommand extends wd9<TaskDetailsView> {
        public final b06 ordInfo;

        public ShowOrdInfoDialogCommand(TaskDetailsView$$State taskDetailsView$$State, b06 b06Var) {
            super("showOrdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showOrdInfoDialog(this.ordInfo);
        }
    }

    public class ShowTaskErrorCommand extends wd9<TaskDetailsView> {
        public final hn8 error;

        public ShowTaskErrorCommand(TaskDetailsView$$State taskDetailsView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showTaskError(this.error);
        }
    }

    public class ShowTaskNotFinishedCommand extends wd9<TaskDetailsView> {
        public final String text;

        public ShowTaskNotFinishedCommand(TaskDetailsView$$State taskDetailsView$$State, String str) {
            super("showTaskNotFinished", hx5.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(TaskDetailsView taskDetailsView) {
            taskDetailsView.showTaskNotFinished(this.text);
        }
    }
}

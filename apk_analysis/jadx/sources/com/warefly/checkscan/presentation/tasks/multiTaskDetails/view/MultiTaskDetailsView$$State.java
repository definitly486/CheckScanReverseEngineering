package com.warefly.checkscan.presentation.tasks.multiTaskDetails.view;

import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.b06;
import defpackage.hn8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.no8;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.xf5;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MultiTaskDetailsView$$State extends kh5<MultiTaskDetailsView> implements MultiTaskDetailsView {

    public class ShowTaskSuccessCommand extends wd9<MultiTaskDetailsView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showTaskSuccess(this.taskId, this.success);
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
            ((MultiTaskDetailsView) it.next()).openUrl(str);
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
            ((MultiTaskDetailsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showDetails(xf5 xf5Var) {
        ShowDetailsCommand showDetailsCommand = new ShowDetailsCommand(this, xf5Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDetailsCommand).b(xd9Var.a, showDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showDetails(xf5Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDetailsCommand).a(xd9Var2.a, showDetailsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showError() {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showErrorState(boolean z) {
        ShowErrorStateCommand showErrorStateCommand = new ShowErrorStateCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorStateCommand).b(xd9Var.a, showErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showErrorState(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorStateCommand).a(xd9Var2.a, showErrorStateCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showInfoBottomSheet(List<b.a> list) {
        ShowInfoBottomSheetCommand showInfoBottomSheetCommand = new ShowInfoBottomSheetCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoBottomSheetCommand).b(xd9Var.a, showInfoBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showInfoBottomSheet(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoBottomSheetCommand).a(xd9Var2.a, showInfoBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showOrdInfoDialog(b06 b06Var) {
        ShowOrdInfoDialogCommand showOrdInfoDialogCommand = new ShowOrdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdInfoDialogCommand).b(xd9Var.a, showOrdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showOrdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdInfoDialogCommand).a(xd9Var2.a, showOrdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showTaskError(hn8 hn8Var) {
        ShowTaskErrorCommand showTaskErrorCommand = new ShowTaskErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskErrorCommand).b(xd9Var.a, showTaskErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showTaskError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskErrorCommand).a(xd9Var2.a, showTaskErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showTaskNotFinished(String str) {
        ShowTaskNotFinishedCommand showTaskNotFinishedCommand = new ShowTaskNotFinishedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskNotFinishedCommand).b(xd9Var.a, showTaskNotFinishedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showTaskNotFinished(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskNotFinishedCommand).a(xd9Var2.a, showTaskNotFinishedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsView
    public void showTaskSuccess(int i, no8 no8Var) {
        ShowTaskSuccessCommand showTaskSuccessCommand = new ShowTaskSuccessCommand(this, i, no8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskSuccessCommand).b(xd9Var.a, showTaskSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MultiTaskDetailsView) it.next()).showTaskSuccess(i, no8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskSuccessCommand).a(xd9Var2.a, showTaskSuccessCommand);
    }

    public class OpenUrlCommand extends wd9<MultiTaskDetailsView> {
        public final String arg0;

        public OpenUrlCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<MultiTaskDetailsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowDetailsCommand extends wd9<MultiTaskDetailsView> {
        public final xf5 details;

        public ShowDetailsCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, xf5 xf5Var) {
            super("showDetails", k9.class);
            this.details = xf5Var;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showDetails(this.details);
        }
    }

    public class ShowErrorCommand extends wd9<MultiTaskDetailsView> {
        public ShowErrorCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State) {
            super("showError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showError();
        }
    }

    public class ShowErrorStateCommand extends wd9<MultiTaskDetailsView> {
        public final boolean isError;

        public ShowErrorStateCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, boolean z) {
            super("showErrorState", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showErrorState(this.isError);
        }
    }

    public class ShowInfoBottomSheetCommand extends wd9<MultiTaskDetailsView> {
        public final List<b.a> htmlTexts;

        public ShowInfoBottomSheetCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, List<b.a> list) {
            super("showInfoBottomSheet", hx5.class);
            this.htmlTexts = list;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showInfoBottomSheet(this.htmlTexts);
        }
    }

    public class ShowLoadingCommand extends wd9<MultiTaskDetailsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showLoading(this.isLoading);
        }
    }

    public class ShowOrdInfoDialogCommand extends wd9<MultiTaskDetailsView> {
        public final b06 ordInfo;

        public ShowOrdInfoDialogCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, b06 b06Var) {
            super("showOrdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showOrdInfoDialog(this.ordInfo);
        }
    }

    public class ShowTaskErrorCommand extends wd9<MultiTaskDetailsView> {
        public final hn8 error;

        public ShowTaskErrorCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showTaskError(this.error);
        }
    }

    public class ShowTaskNotFinishedCommand extends wd9<MultiTaskDetailsView> {
        public final String text;

        public ShowTaskNotFinishedCommand(MultiTaskDetailsView$$State multiTaskDetailsView$$State, String str) {
            super("showTaskNotFinished", hx5.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(MultiTaskDetailsView multiTaskDetailsView) {
            multiTaskDetailsView.showTaskNotFinished(this.text);
        }
    }
}

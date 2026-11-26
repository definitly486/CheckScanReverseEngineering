package com.warefly.checkscan.presentation.tasks.promocode.view;

import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.b06;
import defpackage.hn8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.no8;
import defpackage.tq6;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PromocodeTaskDetailsView$$State extends kh5<PromocodeTaskDetailsView> implements PromocodeTaskDetailsView {

    public class ShowTaskSuccessCommand extends wd9<PromocodeTaskDetailsView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showTaskSuccess(this.taskId, this.success);
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
            ((PromocodeTaskDetailsView) it.next()).openUrl(str);
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
            ((PromocodeTaskDetailsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showDetails(tq6 tq6Var) {
        ShowDetailsCommand showDetailsCommand = new ShowDetailsCommand(this, tq6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDetailsCommand).b(xd9Var.a, showDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showDetails(tq6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDetailsCommand).a(xd9Var2.a, showDetailsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showError() {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showErrorState(boolean z) {
        ShowErrorStateCommand showErrorStateCommand = new ShowErrorStateCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorStateCommand).b(xd9Var.a, showErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showErrorState(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorStateCommand).a(xd9Var2.a, showErrorStateCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showInfoBottomSheet(List<b.a> list) {
        ShowInfoBottomSheetCommand showInfoBottomSheetCommand = new ShowInfoBottomSheetCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoBottomSheetCommand).b(xd9Var.a, showInfoBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showInfoBottomSheet(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoBottomSheetCommand).a(xd9Var2.a, showInfoBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showOrdInfoDialog(b06 b06Var) {
        ShowOrdInfoDialogCommand showOrdInfoDialogCommand = new ShowOrdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdInfoDialogCommand).b(xd9Var.a, showOrdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showOrdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdInfoDialogCommand).a(xd9Var2.a, showOrdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showPromocodeCopied(String str) {
        ShowPromocodeCopiedCommand showPromocodeCopiedCommand = new ShowPromocodeCopiedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeCopiedCommand).b(xd9Var.a, showPromocodeCopiedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showPromocodeCopied(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeCopiedCommand).a(xd9Var2.a, showPromocodeCopiedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showTaskError(hn8 hn8Var) {
        ShowTaskErrorCommand showTaskErrorCommand = new ShowTaskErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskErrorCommand).b(xd9Var.a, showTaskErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showTaskError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskErrorCommand).a(xd9Var2.a, showTaskErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showTaskNotFinished(String str) {
        ShowTaskNotFinishedCommand showTaskNotFinishedCommand = new ShowTaskNotFinishedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskNotFinishedCommand).b(xd9Var.a, showTaskNotFinishedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showTaskNotFinished(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskNotFinishedCommand).a(xd9Var2.a, showTaskNotFinishedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public void showTaskSuccess(int i, no8 no8Var) {
        ShowTaskSuccessCommand showTaskSuccessCommand = new ShowTaskSuccessCommand(this, i, no8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskSuccessCommand).b(xd9Var.a, showTaskSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodeTaskDetailsView) it.next()).showTaskSuccess(i, no8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskSuccessCommand).a(xd9Var2.a, showTaskSuccessCommand);
    }

    public class OpenUrlCommand extends wd9<PromocodeTaskDetailsView> {
        public final String arg0;

        public OpenUrlCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PromocodeTaskDetailsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowDetailsCommand extends wd9<PromocodeTaskDetailsView> {
        public final tq6 details;

        public ShowDetailsCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, tq6 tq6Var) {
            super("showDetails", k9.class);
            this.details = tq6Var;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showDetails(this.details);
        }
    }

    public class ShowErrorCommand extends wd9<PromocodeTaskDetailsView> {
        public ShowErrorCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State) {
            super("showError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showError();
        }
    }

    public class ShowErrorStateCommand extends wd9<PromocodeTaskDetailsView> {
        public final boolean isError;

        public ShowErrorStateCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, boolean z) {
            super("showErrorState", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showErrorState(this.isError);
        }
    }

    public class ShowInfoBottomSheetCommand extends wd9<PromocodeTaskDetailsView> {
        public final List<b.a> htmlTexts;

        public ShowInfoBottomSheetCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, List<b.a> list) {
            super("showInfoBottomSheet", hx5.class);
            this.htmlTexts = list;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showInfoBottomSheet(this.htmlTexts);
        }
    }

    public class ShowLoadingCommand extends wd9<PromocodeTaskDetailsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showLoading(this.isLoading);
        }
    }

    public class ShowOrdInfoDialogCommand extends wd9<PromocodeTaskDetailsView> {
        public final b06 ordInfo;

        public ShowOrdInfoDialogCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, b06 b06Var) {
            super("showOrdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showOrdInfoDialog(this.ordInfo);
        }
    }

    public class ShowPromocodeCopiedCommand extends wd9<PromocodeTaskDetailsView> {
        public final String promocode;

        public ShowPromocodeCopiedCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, String str) {
            super("showPromocodeCopied", hx5.class);
            this.promocode = str;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showPromocodeCopied(this.promocode);
        }
    }

    public class ShowTaskErrorCommand extends wd9<PromocodeTaskDetailsView> {
        public final hn8 error;

        public ShowTaskErrorCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showTaskError(this.error);
        }
    }

    public class ShowTaskNotFinishedCommand extends wd9<PromocodeTaskDetailsView> {
        public final String text;

        public ShowTaskNotFinishedCommand(PromocodeTaskDetailsView$$State promocodeTaskDetailsView$$State, String str) {
            super("showTaskNotFinished", hx5.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(PromocodeTaskDetailsView promocodeTaskDetailsView) {
            promocodeTaskDetailsView.showTaskNotFinished(this.text);
        }
    }
}

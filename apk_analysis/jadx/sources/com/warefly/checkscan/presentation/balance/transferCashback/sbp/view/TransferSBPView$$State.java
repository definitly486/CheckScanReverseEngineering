package com.warefly.checkscan.presentation.balance.transferCashback.sbp.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.u09;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.xz8;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TransferSBPView$$State extends kh5<TransferSBPView> implements TransferSBPView {

    public class ShowTransferSuccessBottomSheetCommand extends wd9<TransferSBPView> {
        public final String description;
        public final String title;

        public ShowTransferSuccessBottomSheetCommand(TransferSBPView$$State transferSBPView$$State, String str, String str2) {
            super("showTransferSuccessBottomSheet", hx5.class);
            this.title = str;
            this.description = str2;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.showTransferSuccessBottomSheet(this.title, this.description);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferSBPView) it.next()).dismissDialog();
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
            ((TransferSBPView) it.next()).openUrl(str);
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
            ((TransferSBPView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public void showContent(u09 u09Var) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, u09Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferSBPView) it.next()).showContent(u09Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferSBPView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public void showTransferFailedBottomSheet(xz8.a aVar) {
        ShowTransferFailedBottomSheetCommand showTransferFailedBottomSheetCommand = new ShowTransferFailedBottomSheetCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferFailedBottomSheetCommand).b(xd9Var.a, showTransferFailedBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferSBPView) it.next()).showTransferFailedBottomSheet(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferFailedBottomSheetCommand).a(xd9Var2.a, showTransferFailedBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public void showTransferMoneyError(String str) {
        ShowTransferMoneyErrorCommand showTransferMoneyErrorCommand = new ShowTransferMoneyErrorCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferMoneyErrorCommand).b(xd9Var.a, showTransferMoneyErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferSBPView) it.next()).showTransferMoneyError(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferMoneyErrorCommand).a(xd9Var2.a, showTransferMoneyErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public void showTransferSuccessBottomSheet(String str, String str2) {
        ShowTransferSuccessBottomSheetCommand showTransferSuccessBottomSheetCommand = new ShowTransferSuccessBottomSheetCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferSuccessBottomSheetCommand).b(xd9Var.a, showTransferSuccessBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferSBPView) it.next()).showTransferSuccessBottomSheet(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferSuccessBottomSheetCommand).a(xd9Var2.a, showTransferSuccessBottomSheetCommand);
    }

    public class DismissDialogCommand extends wd9<TransferSBPView> {
        public DismissDialogCommand(TransferSBPView$$State transferSBPView$$State) {
            super("dismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.dismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<TransferSBPView> {
        public final String arg0;

        public OpenUrlCommand(TransferSBPView$$State transferSBPView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TransferSBPView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TransferSBPView$$State transferSBPView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<TransferSBPView> {
        public final u09 content;

        public ShowContentCommand(TransferSBPView$$State transferSBPView$$State, u09 u09Var) {
            super("showContent", k9.class);
            this.content = u09Var;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.showContent(this.content);
        }
    }

    public class ShowLoadingCommand extends wd9<TransferSBPView> {
        public final boolean isLoading;

        public ShowLoadingCommand(TransferSBPView$$State transferSBPView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.showLoading(this.isLoading);
        }
    }

    public class ShowTransferFailedBottomSheetCommand extends wd9<TransferSBPView> {
        public final xz8.a result;

        public ShowTransferFailedBottomSheetCommand(TransferSBPView$$State transferSBPView$$State, xz8.a aVar) {
            super("showTransferFailedBottomSheet", hx5.class);
            this.result = aVar;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.showTransferFailedBottomSheet(this.result);
        }
    }

    public class ShowTransferMoneyErrorCommand extends wd9<TransferSBPView> {
        public final String msg;

        public ShowTransferMoneyErrorCommand(TransferSBPView$$State transferSBPView$$State, String str) {
            super("showTransferMoneyError", hx5.class);
            this.msg = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferSBPView transferSBPView) {
            transferSBPView.showTransferMoneyError(this.msg);
        }
    }
}

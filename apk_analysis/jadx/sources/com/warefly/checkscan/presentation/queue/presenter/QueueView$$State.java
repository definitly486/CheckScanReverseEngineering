package com.warefly.checkscan.presentation.queue.presenter;

import defpackage.gf9;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class QueueView$$State extends kh5<QueueView> implements QueueView {
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
            ((QueueView) it.next()).openUrl(str);
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
            ((QueueView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showCouldntCreateCheque() {
        ShowCouldntCreateChequeCommand showCouldntCreateChequeCommand = new ShowCouldntCreateChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntCreateChequeCommand).b(xd9Var.a, showCouldntCreateChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showCouldntCreateCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntCreateChequeCommand).a(xd9Var2.a, showCouldntCreateChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showCouldntDeleteCheque() {
        ShowCouldntDeleteChequeCommand showCouldntDeleteChequeCommand = new ShowCouldntDeleteChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntDeleteChequeCommand).b(xd9Var.a, showCouldntDeleteChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showCouldntDeleteCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntDeleteChequeCommand).a(xd9Var2.a, showCouldntDeleteChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showCouldntGetChequeInfo() {
        ShowCouldntGetChequeInfoCommand showCouldntGetChequeInfoCommand = new ShowCouldntGetChequeInfoCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntGetChequeInfoCommand).b(xd9Var.a, showCouldntGetChequeInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showCouldntGetChequeInfo();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntGetChequeInfoCommand).a(xd9Var2.a, showCouldntGetChequeInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showCouldntLoadCheques() {
        ShowCouldntLoadChequesCommand showCouldntLoadChequesCommand = new ShowCouldntLoadChequesCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadChequesCommand).b(xd9Var.a, showCouldntLoadChequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showCouldntLoadCheques();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadChequesCommand).a(xd9Var2.a, showCouldntLoadChequesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showCouldntResendCheque() {
        ShowCouldntResendChequeCommand showCouldntResendChequeCommand = new ShowCouldntResendChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntResendChequeCommand).b(xd9Var.a, showCouldntResendChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showCouldntResendCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntResendChequeCommand).a(xd9Var2.a, showCouldntResendChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showProgress(boolean z) {
        ShowProgressCommand showProgressCommand = new ShowProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showProgressCommand).b(xd9Var.a, showProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showProgressCommand).a(xd9Var2.a, showProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showQueueSortDialog() {
        ShowQueueSortDialogCommand showQueueSortDialogCommand = new ShowQueueSortDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showQueueSortDialogCommand).b(xd9Var.a, showQueueSortDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showQueueSortDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showQueueSortDialogCommand).a(xd9Var2.a, showQueueSortDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showReceipts(List<gf9> list) {
        ShowReceiptsCommand showReceiptsCommand = new ShowReceiptsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showReceiptsCommand).b(xd9Var.a, showReceiptsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showReceipts(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showReceiptsCommand).a(xd9Var2.a, showReceiptsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public void showThereAreNoReceipts(boolean z) {
        ShowThereAreNoReceiptsCommand showThereAreNoReceiptsCommand = new ShowThereAreNoReceiptsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showThereAreNoReceiptsCommand).b(xd9Var.a, showThereAreNoReceiptsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QueueView) it.next()).showThereAreNoReceipts(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showThereAreNoReceiptsCommand).a(xd9Var2.a, showThereAreNoReceiptsCommand);
    }

    public class OpenUrlCommand extends wd9<QueueView> {
        public final String arg0;

        public OpenUrlCommand(QueueView$$State queueView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<QueueView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(QueueView$$State queueView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowCouldntCreateChequeCommand extends wd9<QueueView> {
        public ShowCouldntCreateChequeCommand(QueueView$$State queueView$$State) {
            super("showCouldntCreateCheque", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showCouldntCreateCheque();
        }
    }

    public class ShowCouldntDeleteChequeCommand extends wd9<QueueView> {
        public ShowCouldntDeleteChequeCommand(QueueView$$State queueView$$State) {
            super("showCouldntDeleteCheque", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showCouldntDeleteCheque();
        }
    }

    public class ShowCouldntGetChequeInfoCommand extends wd9<QueueView> {
        public ShowCouldntGetChequeInfoCommand(QueueView$$State queueView$$State) {
            super("showCouldntGetChequeInfo", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showCouldntGetChequeInfo();
        }
    }

    public class ShowCouldntLoadChequesCommand extends wd9<QueueView> {
        public ShowCouldntLoadChequesCommand(QueueView$$State queueView$$State) {
            super("showCouldntLoadCheques", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showCouldntLoadCheques();
        }
    }

    public class ShowCouldntResendChequeCommand extends wd9<QueueView> {
        public ShowCouldntResendChequeCommand(QueueView$$State queueView$$State) {
            super("showCouldntResendCheque", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showCouldntResendCheque();
        }
    }

    public class ShowProgressCommand extends wd9<QueueView> {
        public final boolean show;

        public ShowProgressCommand(QueueView$$State queueView$$State, boolean z) {
            super("showProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showProgress(this.show);
        }
    }

    public class ShowQueueSortDialogCommand extends wd9<QueueView> {
        public ShowQueueSortDialogCommand(QueueView$$State queueView$$State) {
            super("showQueueSortDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showQueueSortDialog();
        }
    }

    public class ShowReceiptsCommand extends wd9<QueueView> {
        public final List<gf9> receipts;

        public ShowReceiptsCommand(QueueView$$State queueView$$State, List<gf9> list) {
            super("showReceipts", k9.class);
            this.receipts = list;
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showReceipts(this.receipts);
        }
    }

    public class ShowThereAreNoReceiptsCommand extends wd9<QueueView> {
        public final boolean show;

        public ShowThereAreNoReceiptsCommand(QueueView$$State queueView$$State, boolean z) {
            super("showThereAreNoReceipts", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(QueueView queueView) {
            queueView.showThereAreNoReceipts(this.show);
        }
    }
}

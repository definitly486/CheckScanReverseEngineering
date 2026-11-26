package com.warefly.checkscan.presentation.balance.transferCashback.card.presenter;

import defpackage.az8;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.zj9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TransferCardView$$State extends kh5<TransferCardView> implements TransferCardView {

    public class ShowApproveTransferDialogCommand extends wd9<TransferCardView> {
        public final String titleValueText;
        public final String valueText;

        public ShowApproveTransferDialogCommand(TransferCardView$$State transferCardView$$State, String str, String str2) {
            super("showApproveTransferDialog", k9.class);
            this.valueText = str;
            this.titleValueText = str2;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showApproveTransferDialog(this.valueText, this.titleValueText);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void hideErrors() {
        HideErrorsCommand hideErrorsCommand = new HideErrorsCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideErrorsCommand).b(xd9Var.a, hideErrorsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).hideErrors();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hideErrorsCommand).a(xd9Var2.a, hideErrorsCommand);
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
            ((TransferCardView) it.next()).openUrl(str);
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
            ((TransferCardView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void setTransferEnabled(boolean z) {
        SetTransferEnabledCommand setTransferEnabledCommand = new SetTransferEnabledCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTransferEnabledCommand).b(xd9Var.a, setTransferEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).setTransferEnabled(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTransferEnabledCommand).a(xd9Var2.a, setTransferEnabledCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showApproveTransferDialog(String str, String str2) {
        ShowApproveTransferDialogCommand showApproveTransferDialogCommand = new ShowApproveTransferDialogCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showApproveTransferDialogCommand).b(xd9Var.a, showApproveTransferDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showApproveTransferDialog(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showApproveTransferDialogCommand).a(xd9Var2.a, showApproveTransferDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showErrorInfoNotLoaded(boolean z) {
        ShowErrorInfoNotLoadedCommand showErrorInfoNotLoadedCommand = new ShowErrorInfoNotLoadedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorInfoNotLoadedCommand).b(xd9Var.a, showErrorInfoNotLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showErrorInfoNotLoaded(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorInfoNotLoadedCommand).a(xd9Var2.a, showErrorInfoNotLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showInfo(az8 az8Var) {
        ShowInfoCommand showInfoCommand = new ShowInfoCommand(this, az8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoCommand).b(xd9Var.a, showInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showInfo(az8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoCommand).a(xd9Var2.a, showInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showInvalidTransferSumError() {
        ShowInvalidTransferSumErrorCommand showInvalidTransferSumErrorCommand = new ShowInvalidTransferSumErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidTransferSumErrorCommand).b(xd9Var.a, showInvalidTransferSumErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showInvalidTransferSumError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidTransferSumErrorCommand).a(xd9Var2.a, showInvalidTransferSumErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showLoadingInfo(boolean z) {
        ShowLoadingInfoCommand showLoadingInfoCommand = new ShowLoadingInfoCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingInfoCommand).b(xd9Var.a, showLoadingInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showLoadingInfo(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingInfoCommand).a(xd9Var2.a, showLoadingInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showMaxTransferSumExceeded() {
        ShowMaxTransferSumExceededCommand showMaxTransferSumExceededCommand = new ShowMaxTransferSumExceededCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMaxTransferSumExceededCommand).b(xd9Var.a, showMaxTransferSumExceededCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showMaxTransferSumExceeded();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMaxTransferSumExceededCommand).a(xd9Var2.a, showMaxTransferSumExceededCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showMinTransferSumNotReached(int i) {
        ShowMinTransferSumNotReachedCommand showMinTransferSumNotReachedCommand = new ShowMinTransferSumNotReachedCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMinTransferSumNotReachedCommand).b(xd9Var.a, showMinTransferSumNotReachedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showMinTransferSumNotReached(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMinTransferSumNotReachedCommand).a(xd9Var2.a, showMinTransferSumNotReachedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showPromocodes(List<zj9> list) {
        ShowPromocodesCommand showPromocodesCommand = new ShowPromocodesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodesCommand).b(xd9Var.a, showPromocodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showPromocodes(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodesCommand).a(xd9Var2.a, showPromocodesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showTransferMoneyError(String str) {
        ShowTransferMoneyErrorCommand showTransferMoneyErrorCommand = new ShowTransferMoneyErrorCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferMoneyErrorCommand).b(xd9Var.a, showTransferMoneyErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showTransferMoneyError(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferMoneyErrorCommand).a(xd9Var2.a, showTransferMoneyErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void showTransferringMoney(boolean z) {
        ShowTransferringMoneyCommand showTransferringMoneyCommand = new ShowTransferringMoneyCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferringMoneyCommand).b(xd9Var.a, showTransferringMoneyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).showTransferringMoney(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferringMoneyCommand).a(xd9Var2.a, showTransferringMoneyCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public void startTransferToCoupon(int i) {
        StartTransferToCouponCommand startTransferToCouponCommand = new StartTransferToCouponCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startTransferToCouponCommand).b(xd9Var.a, startTransferToCouponCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCardView) it.next()).startTransferToCoupon(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferToCouponCommand).a(xd9Var2.a, startTransferToCouponCommand);
    }

    public class HideErrorsCommand extends wd9<TransferCardView> {
        public HideErrorsCommand(TransferCardView$$State transferCardView$$State) {
            super("hideErrors", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.hideErrors();
        }
    }

    public class OpenUrlCommand extends wd9<TransferCardView> {
        public final String arg0;

        public OpenUrlCommand(TransferCardView$$State transferCardView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TransferCardView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TransferCardView$$State transferCardView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetTransferEnabledCommand extends wd9<TransferCardView> {
        public final boolean isEnabled;

        public SetTransferEnabledCommand(TransferCardView$$State transferCardView$$State, boolean z) {
            super("setTransferEnabled", k9.class);
            this.isEnabled = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.setTransferEnabled(this.isEnabled);
        }
    }

    public class ShowErrorInfoNotLoadedCommand extends wd9<TransferCardView> {
        public final boolean show;

        public ShowErrorInfoNotLoadedCommand(TransferCardView$$State transferCardView$$State, boolean z) {
            super("showErrorInfoNotLoaded", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showErrorInfoNotLoaded(this.show);
        }
    }

    public class ShowInfoCommand extends wd9<TransferCardView> {
        public final az8 info;

        public ShowInfoCommand(TransferCardView$$State transferCardView$$State, az8 az8Var) {
            super("showInfo", k9.class);
            this.info = az8Var;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showInfo(this.info);
        }
    }

    public class ShowInvalidTransferSumErrorCommand extends wd9<TransferCardView> {
        public ShowInvalidTransferSumErrorCommand(TransferCardView$$State transferCardView$$State) {
            super("showInvalidTransferSumError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showInvalidTransferSumError();
        }
    }

    public class ShowLoadingInfoCommand extends wd9<TransferCardView> {
        public final boolean show;

        public ShowLoadingInfoCommand(TransferCardView$$State transferCardView$$State, boolean z) {
            super("showLoadingInfo", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showLoadingInfo(this.show);
        }
    }

    public class ShowMaxTransferSumExceededCommand extends wd9<TransferCardView> {
        public ShowMaxTransferSumExceededCommand(TransferCardView$$State transferCardView$$State) {
            super("showMaxTransferSumExceeded", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showMaxTransferSumExceeded();
        }
    }

    public class ShowMinTransferSumNotReachedCommand extends wd9<TransferCardView> {
        public final int minSum;

        public ShowMinTransferSumNotReachedCommand(TransferCardView$$State transferCardView$$State, int i) {
            super("showMinTransferSumNotReached", k9.class);
            this.minSum = i;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showMinTransferSumNotReached(this.minSum);
        }
    }

    public class ShowPromocodesCommand extends wd9<TransferCardView> {
        public final List<zj9> promocodes;

        public ShowPromocodesCommand(TransferCardView$$State transferCardView$$State, List<zj9> list) {
            super("showPromocodes", k9.class);
            this.promocodes = list;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showPromocodes(this.promocodes);
        }
    }

    public class ShowTransferMoneyErrorCommand extends wd9<TransferCardView> {
        public final String msg;

        public ShowTransferMoneyErrorCommand(TransferCardView$$State transferCardView$$State, String str) {
            super("showTransferMoneyError", k9.class);
            this.msg = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showTransferMoneyError(this.msg);
        }
    }

    public class ShowTransferringMoneyCommand extends wd9<TransferCardView> {
        public final boolean show;

        public ShowTransferringMoneyCommand(TransferCardView$$State transferCardView$$State, boolean z) {
            super("showTransferringMoney", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.showTransferringMoney(this.show);
        }
    }

    public class StartTransferToCouponCommand extends wd9<TransferCardView> {
        public final int programId;

        public StartTransferToCouponCommand(TransferCardView$$State transferCardView$$State, int i) {
            super("startTransferToCoupon", k9.class);
            this.programId = i;
        }

        @Override // defpackage.wd9
        public void apply(TransferCardView transferCardView) {
            transferCardView.startTransferToCoupon(this.programId);
        }
    }
}

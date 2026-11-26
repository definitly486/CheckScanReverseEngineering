package com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter;

import defpackage.e09;
import defpackage.gq6;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TransferCouponView$$State extends kh5<TransferCouponView> implements TransferCouponView {

    public class ShowDialogCommand extends wd9<TransferCouponView> {
        public final String message;
        public final String promoCode;

        public ShowDialogCommand(TransferCouponView$$State transferCouponView$$State, String str, String str2) {
            super("showDialog", k9.class);
            this.promoCode = str;
            this.message = str2;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showDialog(this.promoCode, this.message);
        }
    }

    public class ShowInfoCommand extends wd9<TransferCouponView> {
        public final gq6.a info;
        public final String url;

        public ShowInfoCommand(TransferCouponView$$State transferCouponView$$State, gq6.a aVar, String str) {
            super("showInfo", k9.class);
            this.info = aVar;
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showInfo(this.info, this.url);
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
            ((TransferCouponView) it.next()).openUrl(str);
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
            ((TransferCouponView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showDialog(String str, String str2) {
        ShowDialogCommand showDialogCommand = new ShowDialogCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDialogCommand).b(xd9Var.a, showDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showDialog(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDialogCommand).a(xd9Var2.a, showDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showErrorInfoNotLoaded() {
        ShowErrorInfoNotLoadedCommand showErrorInfoNotLoadedCommand = new ShowErrorInfoNotLoadedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorInfoNotLoadedCommand).b(xd9Var.a, showErrorInfoNotLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showErrorInfoNotLoaded();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorInfoNotLoadedCommand).a(xd9Var2.a, showErrorInfoNotLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showInfo(gq6.a aVar, String str) {
        ShowInfoCommand showInfoCommand = new ShowInfoCommand(this, aVar, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoCommand).b(xd9Var.a, showInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showInfo(aVar, str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoCommand).a(xd9Var2.a, showInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showLoadingInfo(boolean z) {
        ShowLoadingInfoCommand showLoadingInfoCommand = new ShowLoadingInfoCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingInfoCommand).b(xd9Var.a, showLoadingInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showLoadingInfo(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingInfoCommand).a(xd9Var2.a, showLoadingInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showPopupCopied(String str) {
        ShowPopupCopiedCommand showPopupCopiedCommand = new ShowPopupCopiedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPopupCopiedCommand).b(xd9Var.a, showPopupCopiedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showPopupCopied(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPopupCopiedCommand).a(xd9Var2.a, showPopupCopiedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showTransferMoneySuccess(e09 e09Var) {
        ShowTransferMoneySuccessCommand showTransferMoneySuccessCommand = new ShowTransferMoneySuccessCommand(this, e09Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferMoneySuccessCommand).b(xd9Var.a, showTransferMoneySuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showTransferMoneySuccess(e09Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferMoneySuccessCommand).a(xd9Var2.a, showTransferMoneySuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public void showTransferringMoney(boolean z) {
        ShowTransferringMoneyCommand showTransferringMoneyCommand = new ShowTransferringMoneyCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferringMoneyCommand).b(xd9Var.a, showTransferringMoneyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferCouponView) it.next()).showTransferringMoney(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferringMoneyCommand).a(xd9Var2.a, showTransferringMoneyCommand);
    }

    public class OpenUrlCommand extends wd9<TransferCouponView> {
        public final String arg0;

        public OpenUrlCommand(TransferCouponView$$State transferCouponView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TransferCouponView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TransferCouponView$$State transferCouponView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowErrorInfoNotLoadedCommand extends wd9<TransferCouponView> {
        public ShowErrorInfoNotLoadedCommand(TransferCouponView$$State transferCouponView$$State) {
            super("showErrorInfoNotLoaded", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showErrorInfoNotLoaded();
        }
    }

    public class ShowLoadingInfoCommand extends wd9<TransferCouponView> {
        public final boolean show;

        public ShowLoadingInfoCommand(TransferCouponView$$State transferCouponView$$State, boolean z) {
            super("showLoadingInfo", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showLoadingInfo(this.show);
        }
    }

    public class ShowPopupCopiedCommand extends wd9<TransferCouponView> {
        public final String promoCode;

        public ShowPopupCopiedCommand(TransferCouponView$$State transferCouponView$$State, String str) {
            super("showPopupCopied", k9.class);
            this.promoCode = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showPopupCopied(this.promoCode);
        }
    }

    public class ShowTransferMoneySuccessCommand extends wd9<TransferCouponView> {
        public final e09 transfer;

        public ShowTransferMoneySuccessCommand(TransferCouponView$$State transferCouponView$$State, e09 e09Var) {
            super("showTransferMoneySuccess", k9.class);
            this.transfer = e09Var;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showTransferMoneySuccess(this.transfer);
        }
    }

    public class ShowTransferringMoneyCommand extends wd9<TransferCouponView> {
        public final boolean show;

        public ShowTransferringMoneyCommand(TransferCouponView$$State transferCouponView$$State, boolean z) {
            super("showTransferringMoney", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferCouponView transferCouponView) {
            transferCouponView.showTransferringMoney(this.show);
        }
    }
}

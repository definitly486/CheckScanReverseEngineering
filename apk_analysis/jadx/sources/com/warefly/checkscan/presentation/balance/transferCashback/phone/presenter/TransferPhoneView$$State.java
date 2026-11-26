package com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.sz8;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.xz8;
import defpackage.zj9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TransferPhoneView$$State extends kh5<TransferPhoneView> implements TransferPhoneView {

    public class ShowErrorInfoNotLoadedCommand extends wd9<TransferPhoneView> {
        public final boolean isInfo;
        public final boolean show;

        public ShowErrorInfoNotLoadedCommand(TransferPhoneView$$State transferPhoneView$$State, boolean z, boolean z2) {
            super("showErrorInfoNotLoaded", k9.class);
            this.show = z;
            this.isInfo = z2;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showErrorInfoNotLoaded(this.show, this.isInfo);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void hideErrors() {
        HideErrorsCommand hideErrorsCommand = new HideErrorsCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideErrorsCommand).b(xd9Var.a, hideErrorsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).hideErrors();
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
            ((TransferPhoneView) it.next()).openUrl(str);
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
            ((TransferPhoneView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void setTransferEnabled(boolean z) {
        SetTransferEnabledCommand setTransferEnabledCommand = new SetTransferEnabledCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTransferEnabledCommand).b(xd9Var.a, setTransferEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).setTransferEnabled(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTransferEnabledCommand).a(xd9Var2.a, setTransferEnabledCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showErrorInfoNotLoaded(boolean z, boolean z2) {
        ShowErrorInfoNotLoadedCommand showErrorInfoNotLoadedCommand = new ShowErrorInfoNotLoadedCommand(this, z, z2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorInfoNotLoadedCommand).b(xd9Var.a, showErrorInfoNotLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showErrorInfoNotLoaded(z, z2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorInfoNotLoadedCommand).a(xd9Var2.a, showErrorInfoNotLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showInfo(sz8 sz8Var) {
        ShowInfoCommand showInfoCommand = new ShowInfoCommand(this, sz8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoCommand).b(xd9Var.a, showInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showInfo(sz8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoCommand).a(xd9Var2.a, showInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showInvalidTransferSumError() {
        ShowInvalidTransferSumErrorCommand showInvalidTransferSumErrorCommand = new ShowInvalidTransferSumErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidTransferSumErrorCommand).b(xd9Var.a, showInvalidTransferSumErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showInvalidTransferSumError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidTransferSumErrorCommand).a(xd9Var2.a, showInvalidTransferSumErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showLoadingInfo(boolean z) {
        ShowLoadingInfoCommand showLoadingInfoCommand = new ShowLoadingInfoCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingInfoCommand).b(xd9Var.a, showLoadingInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showLoadingInfo(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingInfoCommand).a(xd9Var2.a, showLoadingInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showMinTransferSumNotReached(int i) {
        ShowMinTransferSumNotReachedCommand showMinTransferSumNotReachedCommand = new ShowMinTransferSumNotReachedCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMinTransferSumNotReachedCommand).b(xd9Var.a, showMinTransferSumNotReachedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showMinTransferSumNotReached(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMinTransferSumNotReachedCommand).a(xd9Var2.a, showMinTransferSumNotReachedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showPromocodes(List<zj9> list) {
        ShowPromocodesCommand showPromocodesCommand = new ShowPromocodesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodesCommand).b(xd9Var.a, showPromocodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showPromocodes(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodesCommand).a(xd9Var2.a, showPromocodesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showTransferFailedBottomSheet(xz8.a aVar) {
        ShowTransferFailedBottomSheetCommand showTransferFailedBottomSheetCommand = new ShowTransferFailedBottomSheetCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferFailedBottomSheetCommand).b(xd9Var.a, showTransferFailedBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showTransferFailedBottomSheet(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferFailedBottomSheetCommand).a(xd9Var2.a, showTransferFailedBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showTransferMoneyError(String str) {
        ShowTransferMoneyErrorCommand showTransferMoneyErrorCommand = new ShowTransferMoneyErrorCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferMoneyErrorCommand).b(xd9Var.a, showTransferMoneyErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showTransferMoneyError(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferMoneyErrorCommand).a(xd9Var2.a, showTransferMoneyErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showTransferMoneySuccess(String str) {
        ShowTransferMoneySuccessCommand showTransferMoneySuccessCommand = new ShowTransferMoneySuccessCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferMoneySuccessCommand).b(xd9Var.a, showTransferMoneySuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showTransferMoneySuccess(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferMoneySuccessCommand).a(xd9Var2.a, showTransferMoneySuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showTransferringMoney(boolean z) {
        ShowTransferringMoneyCommand showTransferringMoneyCommand = new ShowTransferringMoneyCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTransferringMoneyCommand).b(xd9Var.a, showTransferringMoneyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showTransferringMoney(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTransferringMoneyCommand).a(xd9Var2.a, showTransferringMoneyCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void showWrongTransferSum() {
        ShowWrongTransferSumCommand showWrongTransferSumCommand = new ShowWrongTransferSumCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWrongTransferSumCommand).b(xd9Var.a, showWrongTransferSumCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).showWrongTransferSum();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWrongTransferSumCommand).a(xd9Var2.a, showWrongTransferSumCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public void startTransferToCoupon(int i) {
        StartTransferToCouponCommand startTransferToCouponCommand = new StartTransferToCouponCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startTransferToCouponCommand).b(xd9Var.a, startTransferToCouponCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPhoneView) it.next()).startTransferToCoupon(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferToCouponCommand).a(xd9Var2.a, startTransferToCouponCommand);
    }

    public class HideErrorsCommand extends wd9<TransferPhoneView> {
        public HideErrorsCommand(TransferPhoneView$$State transferPhoneView$$State) {
            super("hideErrors", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.hideErrors();
        }
    }

    public class OpenUrlCommand extends wd9<TransferPhoneView> {
        public final String arg0;

        public OpenUrlCommand(TransferPhoneView$$State transferPhoneView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TransferPhoneView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TransferPhoneView$$State transferPhoneView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetTransferEnabledCommand extends wd9<TransferPhoneView> {
        public final boolean isEnabled;

        public SetTransferEnabledCommand(TransferPhoneView$$State transferPhoneView$$State, boolean z) {
            super("setTransferEnabled", k9.class);
            this.isEnabled = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.setTransferEnabled(this.isEnabled);
        }
    }

    public class ShowInfoCommand extends wd9<TransferPhoneView> {
        public final sz8 info;

        public ShowInfoCommand(TransferPhoneView$$State transferPhoneView$$State, sz8 sz8Var) {
            super("showInfo", k9.class);
            this.info = sz8Var;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showInfo(this.info);
        }
    }

    public class ShowInvalidTransferSumErrorCommand extends wd9<TransferPhoneView> {
        public ShowInvalidTransferSumErrorCommand(TransferPhoneView$$State transferPhoneView$$State) {
            super("showInvalidTransferSumError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showInvalidTransferSumError();
        }
    }

    public class ShowLoadingInfoCommand extends wd9<TransferPhoneView> {
        public final boolean show;

        public ShowLoadingInfoCommand(TransferPhoneView$$State transferPhoneView$$State, boolean z) {
            super("showLoadingInfo", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showLoadingInfo(this.show);
        }
    }

    public class ShowMinTransferSumNotReachedCommand extends wd9<TransferPhoneView> {
        public final int minSum;

        public ShowMinTransferSumNotReachedCommand(TransferPhoneView$$State transferPhoneView$$State, int i) {
            super("showMinTransferSumNotReached", k9.class);
            this.minSum = i;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showMinTransferSumNotReached(this.minSum);
        }
    }

    public class ShowPromocodesCommand extends wd9<TransferPhoneView> {
        public final List<zj9> promocodes;

        public ShowPromocodesCommand(TransferPhoneView$$State transferPhoneView$$State, List<zj9> list) {
            super("showPromocodes", k9.class);
            this.promocodes = list;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showPromocodes(this.promocodes);
        }
    }

    public class ShowTransferFailedBottomSheetCommand extends wd9<TransferPhoneView> {
        public final xz8.a result;

        public ShowTransferFailedBottomSheetCommand(TransferPhoneView$$State transferPhoneView$$State, xz8.a aVar) {
            super("showTransferFailedBottomSheet", hx5.class);
            this.result = aVar;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showTransferFailedBottomSheet(this.result);
        }
    }

    public class ShowTransferMoneyErrorCommand extends wd9<TransferPhoneView> {
        public final String msg;

        public ShowTransferMoneyErrorCommand(TransferPhoneView$$State transferPhoneView$$State, String str) {
            super("showTransferMoneyError", hx5.class);
            this.msg = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showTransferMoneyError(this.msg);
        }
    }

    public class ShowTransferMoneySuccessCommand extends wd9<TransferPhoneView> {
        public final String sumText;

        public ShowTransferMoneySuccessCommand(TransferPhoneView$$State transferPhoneView$$State, String str) {
            super("showTransferMoneySuccess", k9.class);
            this.sumText = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showTransferMoneySuccess(this.sumText);
        }
    }

    public class ShowTransferringMoneyCommand extends wd9<TransferPhoneView> {
        public final boolean show;

        public ShowTransferringMoneyCommand(TransferPhoneView$$State transferPhoneView$$State, boolean z) {
            super("showTransferringMoney", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showTransferringMoney(this.show);
        }
    }

    public class ShowWrongTransferSumCommand extends wd9<TransferPhoneView> {
        public ShowWrongTransferSumCommand(TransferPhoneView$$State transferPhoneView$$State) {
            super("showWrongTransferSum", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.showWrongTransferSum();
        }
    }

    public class StartTransferToCouponCommand extends wd9<TransferPhoneView> {
        public final int programId;

        public StartTransferToCouponCommand(TransferPhoneView$$State transferPhoneView$$State, int i) {
            super("startTransferToCoupon", k9.class);
            this.programId = i;
        }

        @Override // defpackage.wd9
        public void apply(TransferPhoneView transferPhoneView) {
            transferPhoneView.startTransferToCoupon(this.programId);
        }
    }
}

package com.warefly.checkscan.presentation.balance.main.view;

import android.net.Uri;
import defpackage.a40;
import defpackage.b06;
import defpackage.ec;
import defpackage.gj9;
import defpackage.hn8;
import defpackage.hx5;
import defpackage.i9;
import defpackage.j59;
import defpackage.kh5;
import defpackage.nl3;
import defpackage.no8;
import defpackage.pz3;
import defpackage.w00;
import defpackage.wd9;
import defpackage.wi9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BalanceView$$State extends kh5<BalanceView> implements BalanceView {

    public class OpenMailCommand extends wd9<BalanceView> {
        public final String mail;
        public final Uri uri;

        public OpenMailCommand(BalanceView$$State balanceView$$State, Uri uri, String str) {
            super("openMail", hx5.class);
            this.uri = uri;
            this.mail = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.openMail(this.uri, this.mail);
        }
    }

    public class ShowTaskSuccessCommand extends wd9<BalanceView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(BalanceView$$State balanceView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showTaskSuccess(this.taskId, this.success);
        }
    }

    public class ShowWithdrawalCardsCommand extends wd9<BalanceView> {
        public final List<gj9> cards;
        public final nl3<? super wi9, j59> onEvent;

        public ShowWithdrawalCardsCommand(BalanceView$$State balanceView$$State, List<gj9> list, nl3<? super wi9, j59> nl3Var) {
            super("showWithdrawalCards", hx5.class);
            this.cards = list;
            this.onEvent = nl3Var;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showWithdrawalCards(this.cards, this.onEvent);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void handleLoading(boolean z) {
        HandleLoadingCommand handleLoadingCommand = new HandleLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleLoadingCommand).b(xd9Var.a, handleLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).handleLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleLoadingCommand).a(xd9Var2.a, handleLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void openCustomTab(String str) {
        OpenCustomTabCommand openCustomTabCommand = new OpenCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openCustomTabCommand).b(xd9Var.a, openCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).openCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openCustomTabCommand).a(xd9Var2.a, openCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public void openMail(Uri uri, String str) {
        OpenMailCommand openMailCommand = new OpenMailCommand(this, uri, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openMailCommand).b(xd9Var.a, openMailCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).openMail(uri, str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openMailCommand).a(xd9Var2.a, openMailCommand);
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
            ((BalanceView) it.next()).openUrl(str);
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
            ((BalanceView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public void showAboutAccrualCashbackDialog(w00 w00Var) {
        ShowAboutAccrualCashbackDialogCommand showAboutAccrualCashbackDialogCommand = new ShowAboutAccrualCashbackDialogCommand(this, w00Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAboutAccrualCashbackDialogCommand).b(xd9Var.a, showAboutAccrualCashbackDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showAboutAccrualCashbackDialog(w00Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAboutAccrualCashbackDialogCommand).a(xd9Var2.a, showAboutAccrualCashbackDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showAddEmailDialog() {
        ShowAddEmailDialogCommand showAddEmailDialogCommand = new ShowAddEmailDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAddEmailDialogCommand).b(xd9Var.a, showAddEmailDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showAddEmailDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAddEmailDialogCommand).a(xd9Var2.a, showAddEmailDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showAlertBeforeWithdrawAction(ec ecVar) {
        ShowAlertBeforeWithdrawActionCommand showAlertBeforeWithdrawActionCommand = new ShowAlertBeforeWithdrawActionCommand(this, ecVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAlertBeforeWithdrawActionCommand).b(xd9Var.a, showAlertBeforeWithdrawActionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showAlertBeforeWithdrawAction(ecVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAlertBeforeWithdrawActionCommand).a(xd9Var2.a, showAlertBeforeWithdrawActionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showBankPageDialog(String str) {
        ShowBankPageDialogCommand showBankPageDialogCommand = new ShowBankPageDialogCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBankPageDialogCommand).b(xd9Var.a, showBankPageDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showBankPageDialog(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBankPageDialogCommand).a(xd9Var2.a, showBankPageDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showInfoDialog(a40 a40Var) {
        ShowInfoDialogCommand showInfoDialogCommand = new ShowInfoDialogCommand(this, a40Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoDialogCommand).b(xd9Var.a, showInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showInfoDialog(a40Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoDialogCommand).a(xd9Var2.a, showInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public void showManagementAlfaDialogCabinet(String str) {
        ShowManagementAlfaDialogCabinetCommand showManagementAlfaDialogCabinetCommand = new ShowManagementAlfaDialogCabinetCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showManagementAlfaDialogCabinetCommand).b(xd9Var.a, showManagementAlfaDialogCabinetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showManagementAlfaDialogCabinet(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showManagementAlfaDialogCabinetCommand).a(xd9Var2.a, showManagementAlfaDialogCabinetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public void showOrdDialog(b06 b06Var) {
        ShowOrdDialogCommand showOrdDialogCommand = new ShowOrdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdDialogCommand).b(xd9Var.a, showOrdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showOrdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdDialogCommand).a(xd9Var2.a, showOrdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showSomethingWrong() {
        ShowSomethingWrongCommand showSomethingWrongCommand = new ShowSomethingWrongCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSomethingWrongCommand).b(xd9Var.a, showSomethingWrongCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showSomethingWrong();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSomethingWrongCommand).a(xd9Var2.a, showSomethingWrongCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showTaskError(hn8 hn8Var) {
        ShowTaskErrorCommand showTaskErrorCommand = new ShowTaskErrorCommand(this, hn8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskErrorCommand).b(xd9Var.a, showTaskErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showTaskError(hn8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskErrorCommand).a(xd9Var2.a, showTaskErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showTaskSuccess(int i, no8 no8Var) {
        ShowTaskSuccessCommand showTaskSuccessCommand = new ShowTaskSuccessCommand(this, i, no8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTaskSuccessCommand).b(xd9Var.a, showTaskSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showTaskSuccess(i, no8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTaskSuccessCommand).a(xd9Var2.a, showTaskSuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void showWithdrawalCards(List<gj9> list, nl3<? super wi9, j59> nl3Var) {
        ShowWithdrawalCardsCommand showWithdrawalCardsCommand = new ShowWithdrawalCardsCommand(this, list, nl3Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWithdrawalCardsCommand).b(xd9Var.a, showWithdrawalCardsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).showWithdrawalCards(list, nl3Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWithdrawalCardsCommand).a(xd9Var2.a, showWithdrawalCardsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void startTransferSBP(String str) {
        StartTransferSBPCommand startTransferSBPCommand = new StartTransferSBPCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startTransferSBPCommand).b(xd9Var.a, startTransferSBPCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).startTransferSBP(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferSBPCommand).a(xd9Var2.a, startTransferSBPCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void startTransferToBankCard(long j) {
        StartTransferToBankCardCommand startTransferToBankCardCommand = new StartTransferToBankCardCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startTransferToBankCardCommand).b(xd9Var.a, startTransferToBankCardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).startTransferToBankCard(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferToBankCardCommand).a(xd9Var2.a, startTransferToBankCardCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public void startTransferToPhone() {
        StartTransferToPhoneCommand startTransferToPhoneCommand = new StartTransferToPhoneCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startTransferToPhoneCommand).b(xd9Var.a, startTransferToPhoneCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).startTransferToPhone();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferToPhoneCommand).a(xd9Var2.a, startTransferToPhoneCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public void turnOffRefreshing() {
        TurnOffRefreshingCommand turnOffRefreshingCommand = new TurnOffRefreshingCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(turnOffRefreshingCommand).b(xd9Var.a, turnOffRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BalanceView) it.next()).turnOffRefreshing();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(turnOffRefreshingCommand).a(xd9Var2.a, turnOffRefreshingCommand);
    }

    public class HandleLoadingCommand extends wd9<BalanceView> {
        public final boolean isLoading;

        public HandleLoadingCommand(BalanceView$$State balanceView$$State, boolean z) {
            super("handleLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.handleLoading(this.isLoading);
        }
    }

    public class OpenCustomTabCommand extends wd9<BalanceView> {
        public final String url;

        public OpenCustomTabCommand(BalanceView$$State balanceView$$State, String str) {
            super("openCustomTab", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.openCustomTab(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<BalanceView> {
        public final String arg0;

        public OpenUrlCommand(BalanceView$$State balanceView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BalanceView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BalanceView$$State balanceView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAboutAccrualCashbackDialogCommand extends wd9<BalanceView> {
        public final w00 accrual;

        public ShowAboutAccrualCashbackDialogCommand(BalanceView$$State balanceView$$State, w00 w00Var) {
            super("showAboutAccrualCashbackDialog", hx5.class);
            this.accrual = w00Var;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showAboutAccrualCashbackDialog(this.accrual);
        }
    }

    public class ShowAddEmailDialogCommand extends wd9<BalanceView> {
        public ShowAddEmailDialogCommand(BalanceView$$State balanceView$$State) {
            super("showAddEmailDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showAddEmailDialog();
        }
    }

    public class ShowAlertBeforeWithdrawActionCommand extends wd9<BalanceView> {
        public final ec alert;

        public ShowAlertBeforeWithdrawActionCommand(BalanceView$$State balanceView$$State, ec ecVar) {
            super("showAlertBeforeWithdrawAction", hx5.class);
            this.alert = ecVar;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showAlertBeforeWithdrawAction(this.alert);
        }
    }

    public class ShowBankPageDialogCommand extends wd9<BalanceView> {
        public final String url;

        public ShowBankPageDialogCommand(BalanceView$$State balanceView$$State, String str) {
            super("showBankPageDialog", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showBankPageDialog(this.url);
        }
    }

    public class ShowContentCommand extends wd9<BalanceView> {
        public final List<? extends pz3> content;

        public ShowContentCommand(BalanceView$$State balanceView$$State, List<? extends pz3> list) {
            super("showContent", i9.class);
            this.content = list;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showContent(this.content);
        }
    }

    public class ShowInfoDialogCommand extends wd9<BalanceView> {
        public final a40 data;

        public ShowInfoDialogCommand(BalanceView$$State balanceView$$State, a40 a40Var) {
            super("showInfoDialog", hx5.class);
            this.data = a40Var;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showInfoDialog(this.data);
        }
    }

    public class ShowManagementAlfaDialogCabinetCommand extends wd9<BalanceView> {
        public final String url;

        public ShowManagementAlfaDialogCabinetCommand(BalanceView$$State balanceView$$State, String str) {
            super("showManagementAlfaDialogCabinet", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showManagementAlfaDialogCabinet(this.url);
        }
    }

    public class ShowOrdDialogCommand extends wd9<BalanceView> {
        public final b06 ordInfo;

        public ShowOrdDialogCommand(BalanceView$$State balanceView$$State, b06 b06Var) {
            super("showOrdDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showOrdDialog(this.ordInfo);
        }
    }

    public class ShowSomethingWrongCommand extends wd9<BalanceView> {
        public ShowSomethingWrongCommand(BalanceView$$State balanceView$$State) {
            super("showSomethingWrong", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showSomethingWrong();
        }
    }

    public class ShowTaskErrorCommand extends wd9<BalanceView> {
        public final hn8 error;

        public ShowTaskErrorCommand(BalanceView$$State balanceView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.showTaskError(this.error);
        }
    }

    public class StartTransferSBPCommand extends wd9<BalanceView> {
        public final String title;

        public StartTransferSBPCommand(BalanceView$$State balanceView$$State, String str) {
            super("startTransferSBP", hx5.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.startTransferSBP(this.title);
        }
    }

    public class StartTransferToBankCardCommand extends wd9<BalanceView> {
        public final long cardId;

        public StartTransferToBankCardCommand(BalanceView$$State balanceView$$State, long j) {
            super("startTransferToBankCard", hx5.class);
            this.cardId = j;
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.startTransferToBankCard(this.cardId);
        }
    }

    public class StartTransferToPhoneCommand extends wd9<BalanceView> {
        public StartTransferToPhoneCommand(BalanceView$$State balanceView$$State) {
            super("startTransferToPhone", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.startTransferToPhone();
        }
    }

    public class TurnOffRefreshingCommand extends wd9<BalanceView> {
        public TurnOffRefreshingCommand(BalanceView$$State balanceView$$State) {
            super("turnOffRefreshing", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BalanceView balanceView) {
            balanceView.turnOffRefreshing();
        }
    }
}

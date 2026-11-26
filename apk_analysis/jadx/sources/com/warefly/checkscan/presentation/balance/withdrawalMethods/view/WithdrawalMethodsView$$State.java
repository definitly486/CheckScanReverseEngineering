package com.warefly.checkscan.presentation.balance.withdrawalMethods.view;

import defpackage.a40;
import defpackage.ec;
import defpackage.gj9;
import defpackage.hk9;
import defpackage.hn8;
import defpackage.hx5;
import defpackage.j59;
import defpackage.k9;
import defpackage.kh5;
import defpackage.nl3;
import defpackage.no8;
import defpackage.wd9;
import defpackage.wi9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class WithdrawalMethodsView$$State extends kh5<WithdrawalMethodsView> implements WithdrawalMethodsView {

    public class ShowTaskSuccessCommand extends wd9<WithdrawalMethodsView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showTaskSuccess(this.taskId, this.success);
        }
    }

    public class ShowWithdrawalCardsCommand extends wd9<WithdrawalMethodsView> {
        public final List<gj9> cards;
        public final nl3<? super wi9, j59> onEvent;

        public ShowWithdrawalCardsCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, List<gj9> list, nl3<? super wi9, j59> nl3Var) {
            super("showWithdrawalCards", hx5.class);
            this.cards = list;
            this.onEvent = nl3Var;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showWithdrawalCards(this.cards, this.onEvent);
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
            ((WithdrawalMethodsView) it.next()).handleLoading(z);
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
            ((WithdrawalMethodsView) it.next()).openCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openCustomTabCommand).a(xd9Var2.a, openCustomTabCommand);
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
            ((WithdrawalMethodsView) it.next()).openUrl(str);
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
            ((WithdrawalMethodsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WithdrawalMethodsView) it.next()).setToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setToolbarTitleCommand).a(xd9Var2.a, setToolbarTitleCommand);
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
            ((WithdrawalMethodsView) it.next()).showAddEmailDialog();
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
            ((WithdrawalMethodsView) it.next()).showAlertBeforeWithdrawAction(ecVar);
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
            ((WithdrawalMethodsView) it.next()).showBankPageDialog(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBankPageDialogCommand).a(xd9Var2.a, showBankPageDialogCommand);
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
            ((WithdrawalMethodsView) it.next()).showInfoDialog(a40Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoDialogCommand).a(xd9Var2.a, showInfoDialogCommand);
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
            ((WithdrawalMethodsView) it.next()).showSomethingWrong();
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
            ((WithdrawalMethodsView) it.next()).showTaskError(hn8Var);
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
            ((WithdrawalMethodsView) it.next()).showTaskSuccess(i, no8Var);
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
            ((WithdrawalMethodsView) it.next()).showWithdrawalCards(list, nl3Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWithdrawalCardsCommand).a(xd9Var2.a, showWithdrawalCardsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsView
    public void showWithdrawalMethods(List<? extends hk9> list) {
        ShowWithdrawalMethodsCommand showWithdrawalMethodsCommand = new ShowWithdrawalMethodsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWithdrawalMethodsCommand).b(xd9Var.a, showWithdrawalMethodsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WithdrawalMethodsView) it.next()).showWithdrawalMethods(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWithdrawalMethodsCommand).a(xd9Var2.a, showWithdrawalMethodsCommand);
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
            ((WithdrawalMethodsView) it.next()).startTransferSBP(str);
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
            ((WithdrawalMethodsView) it.next()).startTransferToBankCard(j);
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
            ((WithdrawalMethodsView) it.next()).startTransferToPhone();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferToPhoneCommand).a(xd9Var2.a, startTransferToPhoneCommand);
    }

    public class HandleLoadingCommand extends wd9<WithdrawalMethodsView> {
        public final boolean isLoading;

        public HandleLoadingCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, boolean z) {
            super("handleLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.handleLoading(this.isLoading);
        }
    }

    public class OpenCustomTabCommand extends wd9<WithdrawalMethodsView> {
        public final String url;

        public OpenCustomTabCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, String str) {
            super("openCustomTab", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.openCustomTab(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<WithdrawalMethodsView> {
        public final String arg0;

        public OpenUrlCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<WithdrawalMethodsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetToolbarTitleCommand extends wd9<WithdrawalMethodsView> {
        public final String title;

        public SetToolbarTitleCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, String str) {
            super("setToolbarTitle", k9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.setToolbarTitle(this.title);
        }
    }

    public class ShowAddEmailDialogCommand extends wd9<WithdrawalMethodsView> {
        public ShowAddEmailDialogCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State) {
            super("showAddEmailDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showAddEmailDialog();
        }
    }

    public class ShowAlertBeforeWithdrawActionCommand extends wd9<WithdrawalMethodsView> {
        public final ec alert;

        public ShowAlertBeforeWithdrawActionCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, ec ecVar) {
            super("showAlertBeforeWithdrawAction", hx5.class);
            this.alert = ecVar;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showAlertBeforeWithdrawAction(this.alert);
        }
    }

    public class ShowBankPageDialogCommand extends wd9<WithdrawalMethodsView> {
        public final String url;

        public ShowBankPageDialogCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, String str) {
            super("showBankPageDialog", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showBankPageDialog(this.url);
        }
    }

    public class ShowInfoDialogCommand extends wd9<WithdrawalMethodsView> {
        public final a40 data;

        public ShowInfoDialogCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, a40 a40Var) {
            super("showInfoDialog", hx5.class);
            this.data = a40Var;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showInfoDialog(this.data);
        }
    }

    public class ShowSomethingWrongCommand extends wd9<WithdrawalMethodsView> {
        public ShowSomethingWrongCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State) {
            super("showSomethingWrong", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showSomethingWrong();
        }
    }

    public class ShowTaskErrorCommand extends wd9<WithdrawalMethodsView> {
        public final hn8 error;

        public ShowTaskErrorCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showTaskError(this.error);
        }
    }

    public class ShowWithdrawalMethodsCommand extends wd9<WithdrawalMethodsView> {
        public final List<? extends hk9> methods;

        public ShowWithdrawalMethodsCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, List<? extends hk9> list) {
            super("showWithdrawalMethods", k9.class);
            this.methods = list;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.showWithdrawalMethods(this.methods);
        }
    }

    public class StartTransferSBPCommand extends wd9<WithdrawalMethodsView> {
        public final String title;

        public StartTransferSBPCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, String str) {
            super("startTransferSBP", hx5.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.startTransferSBP(this.title);
        }
    }

    public class StartTransferToBankCardCommand extends wd9<WithdrawalMethodsView> {
        public final long cardId;

        public StartTransferToBankCardCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State, long j) {
            super("startTransferToBankCard", hx5.class);
            this.cardId = j;
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.startTransferToBankCard(this.cardId);
        }
    }

    public class StartTransferToPhoneCommand extends wd9<WithdrawalMethodsView> {
        public StartTransferToPhoneCommand(WithdrawalMethodsView$$State withdrawalMethodsView$$State) {
            super("startTransferToPhone", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(WithdrawalMethodsView withdrawalMethodsView) {
            withdrawalMethodsView.startTransferToPhone();
        }
    }
}

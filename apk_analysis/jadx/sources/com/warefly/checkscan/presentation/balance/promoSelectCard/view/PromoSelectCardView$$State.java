package com.warefly.checkscan.presentation.balance.promoSelectCard.view;

import defpackage.a40;
import defpackage.ap6;
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
import defpackage.wd9;
import defpackage.wi9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PromoSelectCardView$$State extends kh5<PromoSelectCardView> implements PromoSelectCardView {

    public class ShowFullTermsCommand extends wd9<PromoSelectCardView> {
        public final String htmlText;
        public final String title;

        public ShowFullTermsCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str, String str2) {
            super("showFullTerms", hx5.class);
            this.title = str;
            this.htmlText = str2;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showFullTerms(this.title, this.htmlText);
        }
    }

    public class ShowTaskSuccessCommand extends wd9<PromoSelectCardView> {
        public final no8 success;
        public final int taskId;

        public ShowTaskSuccessCommand(PromoSelectCardView$$State promoSelectCardView$$State, int i, no8 no8Var) {
            super("showTaskSuccess", hx5.class);
            this.taskId = i;
            this.success = no8Var;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showTaskSuccess(this.taskId, this.success);
        }
    }

    public class ShowWithdrawalCardsCommand extends wd9<PromoSelectCardView> {
        public final List<gj9> cards;
        public final nl3<? super wi9, j59> onEvent;

        public ShowWithdrawalCardsCommand(PromoSelectCardView$$State promoSelectCardView$$State, List<gj9> list, nl3<? super wi9, j59> nl3Var) {
            super("showWithdrawalCards", hx5.class);
            this.cards = list;
            this.onEvent = nl3Var;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showWithdrawalCards(this.cards, this.onEvent);
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
            ((PromoSelectCardView) it.next()).handleLoading(z);
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
            ((PromoSelectCardView) it.next()).openCustomTab(str);
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
            ((PromoSelectCardView) it.next()).openUrl(str);
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
            ((PromoSelectCardView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromoSelectCardView) it.next()).setToolbarTitle(str);
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
            ((PromoSelectCardView) it.next()).showAddEmailDialog();
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
            ((PromoSelectCardView) it.next()).showAlertBeforeWithdrawAction(ecVar);
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
            ((PromoSelectCardView) it.next()).showBankPageDialog(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBankPageDialogCommand).a(xd9Var2.a, showBankPageDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromoSelectCardView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public void showFullTerms(String str, String str2) {
        ShowFullTermsCommand showFullTermsCommand = new ShowFullTermsCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFullTermsCommand).b(xd9Var.a, showFullTermsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromoSelectCardView) it.next()).showFullTerms(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFullTermsCommand).a(xd9Var2.a, showFullTermsCommand);
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
            ((PromoSelectCardView) it.next()).showInfoDialog(a40Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoDialogCommand).a(xd9Var2.a, showInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public void showItems(List<? extends pz3> list) {
        ShowItemsCommand showItemsCommand = new ShowItemsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showItemsCommand).b(xd9Var.a, showItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromoSelectCardView) it.next()).showItems(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showItemsCommand).a(xd9Var2.a, showItemsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public void showMotivationBanner(ap6 ap6Var) {
        ShowMotivationBannerCommand showMotivationBannerCommand = new ShowMotivationBannerCommand(this, ap6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMotivationBannerCommand).b(xd9Var.a, showMotivationBannerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromoSelectCardView) it.next()).showMotivationBanner(ap6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMotivationBannerCommand).a(xd9Var2.a, showMotivationBannerCommand);
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
            ((PromoSelectCardView) it.next()).showSomethingWrong();
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
            ((PromoSelectCardView) it.next()).showTaskError(hn8Var);
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
            ((PromoSelectCardView) it.next()).showTaskSuccess(i, no8Var);
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
            ((PromoSelectCardView) it.next()).showWithdrawalCards(list, nl3Var);
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
            ((PromoSelectCardView) it.next()).startTransferSBP(str);
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
            ((PromoSelectCardView) it.next()).startTransferToBankCard(j);
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
            ((PromoSelectCardView) it.next()).startTransferToPhone();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startTransferToPhoneCommand).a(xd9Var2.a, startTransferToPhoneCommand);
    }

    public class HandleLoadingCommand extends wd9<PromoSelectCardView> {
        public final boolean isLoading;

        public HandleLoadingCommand(PromoSelectCardView$$State promoSelectCardView$$State, boolean z) {
            super("handleLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.handleLoading(this.isLoading);
        }
    }

    public class OpenCustomTabCommand extends wd9<PromoSelectCardView> {
        public final String url;

        public OpenCustomTabCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str) {
            super("openCustomTab", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.openCustomTab(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<PromoSelectCardView> {
        public final String arg0;

        public OpenUrlCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PromoSelectCardView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetToolbarTitleCommand extends wd9<PromoSelectCardView> {
        public final String title;

        public SetToolbarTitleCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str) {
            super("setToolbarTitle", i9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.setToolbarTitle(this.title);
        }
    }

    public class ShowAddEmailDialogCommand extends wd9<PromoSelectCardView> {
        public ShowAddEmailDialogCommand(PromoSelectCardView$$State promoSelectCardView$$State) {
            super("showAddEmailDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showAddEmailDialog();
        }
    }

    public class ShowAlertBeforeWithdrawActionCommand extends wd9<PromoSelectCardView> {
        public final ec alert;

        public ShowAlertBeforeWithdrawActionCommand(PromoSelectCardView$$State promoSelectCardView$$State, ec ecVar) {
            super("showAlertBeforeWithdrawAction", hx5.class);
            this.alert = ecVar;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showAlertBeforeWithdrawAction(this.alert);
        }
    }

    public class ShowBankPageDialogCommand extends wd9<PromoSelectCardView> {
        public final String url;

        public ShowBankPageDialogCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str) {
            super("showBankPageDialog", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showBankPageDialog(this.url);
        }
    }

    public class ShowErrorCommand extends wd9<PromoSelectCardView> {
        public final boolean isShow;

        public ShowErrorCommand(PromoSelectCardView$$State promoSelectCardView$$State, boolean z) {
            super("showError", i9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showError(this.isShow);
        }
    }

    public class ShowInfoDialogCommand extends wd9<PromoSelectCardView> {
        public final a40 data;

        public ShowInfoDialogCommand(PromoSelectCardView$$State promoSelectCardView$$State, a40 a40Var) {
            super("showInfoDialog", hx5.class);
            this.data = a40Var;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showInfoDialog(this.data);
        }
    }

    public class ShowItemsCommand extends wd9<PromoSelectCardView> {
        public final List<? extends pz3> items;

        public ShowItemsCommand(PromoSelectCardView$$State promoSelectCardView$$State, List<? extends pz3> list) {
            super("showItems", i9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showItems(this.items);
        }
    }

    public class ShowMotivationBannerCommand extends wd9<PromoSelectCardView> {
        public final ap6 banner;

        public ShowMotivationBannerCommand(PromoSelectCardView$$State promoSelectCardView$$State, ap6 ap6Var) {
            super("showMotivationBanner", i9.class);
            this.banner = ap6Var;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showMotivationBanner(this.banner);
        }
    }

    public class ShowSomethingWrongCommand extends wd9<PromoSelectCardView> {
        public ShowSomethingWrongCommand(PromoSelectCardView$$State promoSelectCardView$$State) {
            super("showSomethingWrong", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showSomethingWrong();
        }
    }

    public class ShowTaskErrorCommand extends wd9<PromoSelectCardView> {
        public final hn8 error;

        public ShowTaskErrorCommand(PromoSelectCardView$$State promoSelectCardView$$State, hn8 hn8Var) {
            super("showTaskError", hx5.class);
            this.error = hn8Var;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.showTaskError(this.error);
        }
    }

    public class StartTransferSBPCommand extends wd9<PromoSelectCardView> {
        public final String title;

        public StartTransferSBPCommand(PromoSelectCardView$$State promoSelectCardView$$State, String str) {
            super("startTransferSBP", hx5.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.startTransferSBP(this.title);
        }
    }

    public class StartTransferToBankCardCommand extends wd9<PromoSelectCardView> {
        public final long cardId;

        public StartTransferToBankCardCommand(PromoSelectCardView$$State promoSelectCardView$$State, long j) {
            super("startTransferToBankCard", hx5.class);
            this.cardId = j;
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.startTransferToBankCard(this.cardId);
        }
    }

    public class StartTransferToPhoneCommand extends wd9<PromoSelectCardView> {
        public StartTransferToPhoneCommand(PromoSelectCardView$$State promoSelectCardView$$State) {
            super("startTransferToPhone", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PromoSelectCardView promoSelectCardView) {
            promoSelectCardView.startTransferToPhone();
        }
    }
}

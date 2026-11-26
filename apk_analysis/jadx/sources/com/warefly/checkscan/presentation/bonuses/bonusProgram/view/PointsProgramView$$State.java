package com.warefly.checkscan.presentation.bonuses.bonusProgram.view;

import defpackage.hx5;
import defpackage.jo0;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PointsProgramView$$State extends kh5<PointsProgramView> implements PointsProgramView {

    public class EnableTransferCommand extends wd9<PointsProgramView> {
        public final boolean enable;
        public final long programId;

        public EnableTransferCommand(PointsProgramView$$State pointsProgramView$$State, boolean z, long j) {
            super("enableTransfer", k9.class);
            this.enable = z;
            this.programId = j;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.enableTransfer(this.enable, this.programId);
        }
    }

    public class ShareCardCommand extends wd9<PointsProgramView> {
        public final String cardImageLink;
        public final String cardLinkSuffix;
        public final String promoCode;
        public final String shareTitle;

        public ShareCardCommand(PointsProgramView$$State pointsProgramView$$State, String str, String str2, String str3, String str4) {
            super("shareCard", hx5.class);
            this.cardLinkSuffix = str;
            this.shareTitle = str2;
            this.promoCode = str3;
            this.cardImageLink = str4;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.shareCard(this.cardLinkSuffix, this.shareTitle, this.promoCode, this.cardImageLink);
        }
    }

    public class ShowProgramCommand extends wd9<PointsProgramView> {
        public final String balanceTitle;
        public final String balanceValue;
        public final String logoUrl;
        public final long programId;
        public final String programName;

        public ShowProgramCommand(PointsProgramView$$State pointsProgramView$$State, long j, String str, String str2, String str3, String str4) {
            super("showProgram", k9.class);
            this.programId = j;
            this.programName = str;
            this.balanceTitle = str2;
            this.balanceValue = str3;
            this.logoUrl = str4;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showProgram(this.programId, this.programName, this.balanceTitle, this.balanceValue, this.logoUrl);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void enableTransfer(boolean z, long j) {
        EnableTransferCommand enableTransferCommand = new EnableTransferCommand(this, z, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableTransferCommand).b(xd9Var.a, enableTransferCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).enableTransfer(z, j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableTransferCommand).a(xd9Var2.a, enableTransferCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void hideTransfer() {
        HideTransferCommand hideTransferCommand = new HideTransferCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideTransferCommand).b(xd9Var.a, hideTransferCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).hideTransfer();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hideTransferCommand).a(xd9Var2.a, hideTransferCommand);
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
            ((PointsProgramView) it.next()).openUrl(str);
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
            ((PointsProgramView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.js7
    public void shareCard(String str, String str2, String str3, String str4) {
        ShareCardCommand shareCardCommand = new ShareCardCommand(this, str, str2, str3, str4);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(shareCardCommand).b(xd9Var.a, shareCardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).shareCard(str, str2, str3, str4);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareCardCommand).a(xd9Var2.a, shareCardCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showAgreement(String str) {
        ShowAgreementCommand showAgreementCommand = new ShowAgreementCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAgreementCommand).b(xd9Var.a, showAgreementCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showAgreement(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAgreementCommand).a(xd9Var2.a, showAgreementCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showCouldntGetAgreement() {
        ShowCouldntGetAgreementCommand showCouldntGetAgreementCommand = new ShowCouldntGetAgreementCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntGetAgreementCommand).b(xd9Var.a, showCouldntGetAgreementCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showCouldntGetAgreement();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntGetAgreementCommand).a(xd9Var2.a, showCouldntGetAgreementCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showCouldntGetTerms() {
        ShowCouldntGetTermsCommand showCouldntGetTermsCommand = new ShowCouldntGetTermsCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntGetTermsCommand).b(xd9Var.a, showCouldntGetTermsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showCouldntGetTerms();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntGetTermsCommand).a(xd9Var2.a, showCouldntGetTermsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showCouldntLoadProgram() {
        ShowCouldntLoadProgramCommand showCouldntLoadProgramCommand = new ShowCouldntLoadProgramCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadProgramCommand).b(xd9Var.a, showCouldntLoadProgramCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showCouldntLoadProgram();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadProgramCommand).a(xd9Var2.a, showCouldntLoadProgramCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showCouldntUpdateBalance() {
        ShowCouldntUpdateBalanceCommand showCouldntUpdateBalanceCommand = new ShowCouldntUpdateBalanceCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntUpdateBalanceCommand).b(xd9Var.a, showCouldntUpdateBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showCouldntUpdateBalance();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntUpdateBalanceCommand).a(xd9Var2.a, showCouldntUpdateBalanceCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showLoadingDialog(boolean z) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showLoadingDialog(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showLoadingProgram(boolean z) {
        ShowLoadingProgramCommand showLoadingProgramCommand = new ShowLoadingProgramCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingProgramCommand).b(xd9Var.a, showLoadingProgramCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showLoadingProgram(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingProgramCommand).a(xd9Var2.a, showLoadingProgramCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showProgram(long j, String str, String str2, String str3, String str4) {
        ShowProgramCommand showProgramCommand = new ShowProgramCommand(this, j, str, str2, str3, str4);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showProgramCommand).b(xd9Var.a, showProgramCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showProgram(j, str, str2, str3, str4);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showProgramCommand).a(xd9Var2.a, showProgramCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showTerms(List<jo0> list) {
        ShowTermsCommand showTermsCommand = new ShowTermsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTermsCommand).b(xd9Var.a, showTermsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showTerms(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTermsCommand).a(xd9Var2.a, showTermsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void showUpdatingBalance() {
        ShowUpdatingBalanceCommand showUpdatingBalanceCommand = new ShowUpdatingBalanceCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUpdatingBalanceCommand).b(xd9Var.a, showUpdatingBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).showUpdatingBalance();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUpdatingBalanceCommand).a(xd9Var2.a, showUpdatingBalanceCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public void updateBalance(int i) {
        UpdateBalanceCommand updateBalanceCommand = new UpdateBalanceCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(updateBalanceCommand).b(xd9Var.a, updateBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PointsProgramView) it.next()).updateBalance(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(updateBalanceCommand).a(xd9Var2.a, updateBalanceCommand);
    }

    public class HideTransferCommand extends wd9<PointsProgramView> {
        public HideTransferCommand(PointsProgramView$$State pointsProgramView$$State) {
            super("hideTransfer", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.hideTransfer();
        }
    }

    public class OpenUrlCommand extends wd9<PointsProgramView> {
        public final String arg0;

        public OpenUrlCommand(PointsProgramView$$State pointsProgramView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PointsProgramView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PointsProgramView$$State pointsProgramView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAgreementCommand extends wd9<PointsProgramView> {
        public final String htmlAgreement;

        public ShowAgreementCommand(PointsProgramView$$State pointsProgramView$$State, String str) {
            super("showAgreement", k9.class);
            this.htmlAgreement = str;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showAgreement(this.htmlAgreement);
        }
    }

    public class ShowCouldntGetAgreementCommand extends wd9<PointsProgramView> {
        public ShowCouldntGetAgreementCommand(PointsProgramView$$State pointsProgramView$$State) {
            super("showCouldntGetAgreement", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showCouldntGetAgreement();
        }
    }

    public class ShowCouldntGetTermsCommand extends wd9<PointsProgramView> {
        public ShowCouldntGetTermsCommand(PointsProgramView$$State pointsProgramView$$State) {
            super("showCouldntGetTerms", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showCouldntGetTerms();
        }
    }

    public class ShowCouldntLoadProgramCommand extends wd9<PointsProgramView> {
        public ShowCouldntLoadProgramCommand(PointsProgramView$$State pointsProgramView$$State) {
            super("showCouldntLoadProgram", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showCouldntLoadProgram();
        }
    }

    public class ShowCouldntUpdateBalanceCommand extends wd9<PointsProgramView> {
        public ShowCouldntUpdateBalanceCommand(PointsProgramView$$State pointsProgramView$$State) {
            super("showCouldntUpdateBalance", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showCouldntUpdateBalance();
        }
    }

    public class ShowLoadingDialogCommand extends wd9<PointsProgramView> {
        public final boolean isLoading;

        public ShowLoadingDialogCommand(PointsProgramView$$State pointsProgramView$$State, boolean z) {
            super("showLoadingDialog", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showLoadingDialog(this.isLoading);
        }
    }

    public class ShowLoadingProgramCommand extends wd9<PointsProgramView> {
        public final boolean isLoading;

        public ShowLoadingProgramCommand(PointsProgramView$$State pointsProgramView$$State, boolean z) {
            super("showLoadingProgram", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showLoadingProgram(this.isLoading);
        }
    }

    public class ShowTermsCommand extends wd9<PointsProgramView> {
        public final List<jo0> terms;

        public ShowTermsCommand(PointsProgramView$$State pointsProgramView$$State, List<jo0> list) {
            super("showTerms", k9.class);
            this.terms = list;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showTerms(this.terms);
        }
    }

    public class ShowUpdatingBalanceCommand extends wd9<PointsProgramView> {
        public ShowUpdatingBalanceCommand(PointsProgramView$$State pointsProgramView$$State) {
            super("showUpdatingBalance", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.showUpdatingBalance();
        }
    }

    public class UpdateBalanceCommand extends wd9<PointsProgramView> {
        public final int balance;

        public UpdateBalanceCommand(PointsProgramView$$State pointsProgramView$$State, int i) {
            super("updateBalance", k9.class);
            this.balance = i;
        }

        @Override // defpackage.wd9
        public void apply(PointsProgramView pointsProgramView) {
            pointsProgramView.updateBalance(this.balance);
        }
    }
}

package com.warefly.checkscan.presentation.bankCardOptions.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.t90;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class BankCardsOptionsView$$State extends kh5<BankCardsOptionsView> implements BankCardsOptionsView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public void openOption(t90.a aVar) {
        OpenOptionCommand openOptionCommand = new OpenOptionCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openOptionCommand).b(xd9Var.a, openOptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankCardsOptionsView) it.next()).openOption(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openOptionCommand).a(xd9Var2.a, openOptionCommand);
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
            ((BankCardsOptionsView) it.next()).openUrl(str);
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
            ((BankCardsOptionsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public void showBankCardOptionsInfoLoadingError() {
        ShowBankCardOptionsInfoLoadingErrorCommand showBankCardOptionsInfoLoadingErrorCommand = new ShowBankCardOptionsInfoLoadingErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBankCardOptionsInfoLoadingErrorCommand).b(xd9Var.a, showBankCardOptionsInfoLoadingErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankCardsOptionsView) it.next()).showBankCardOptionsInfoLoadingError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBankCardOptionsInfoLoadingErrorCommand).a(xd9Var2.a, showBankCardOptionsInfoLoadingErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankCardsOptionsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public void showOptions(t90 t90Var) {
        ShowOptionsCommand showOptionsCommand = new ShowOptionsCommand(this, t90Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOptionsCommand).b(xd9Var.a, showOptionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankCardsOptionsView) it.next()).showOptions(t90Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOptionsCommand).a(xd9Var2.a, showOptionsCommand);
    }

    public class OpenOptionCommand extends wd9<BankCardsOptionsView> {
        public final t90.a cardOptionInfo;

        public OpenOptionCommand(BankCardsOptionsView$$State bankCardsOptionsView$$State, t90.a aVar) {
            super("openOption", k9.class);
            this.cardOptionInfo = aVar;
        }

        @Override // defpackage.wd9
        public void apply(BankCardsOptionsView bankCardsOptionsView) {
            bankCardsOptionsView.openOption(this.cardOptionInfo);
        }
    }

    public class OpenUrlCommand extends wd9<BankCardsOptionsView> {
        public final String arg0;

        public OpenUrlCommand(BankCardsOptionsView$$State bankCardsOptionsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BankCardsOptionsView bankCardsOptionsView) {
            bankCardsOptionsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BankCardsOptionsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BankCardsOptionsView$$State bankCardsOptionsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BankCardsOptionsView bankCardsOptionsView) {
            bankCardsOptionsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowBankCardOptionsInfoLoadingErrorCommand extends wd9<BankCardsOptionsView> {
        public ShowBankCardOptionsInfoLoadingErrorCommand(BankCardsOptionsView$$State bankCardsOptionsView$$State) {
            super("showBankCardOptionsInfoLoadingError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(BankCardsOptionsView bankCardsOptionsView) {
            bankCardsOptionsView.showBankCardOptionsInfoLoadingError();
        }
    }

    public class ShowLoadingCommand extends wd9<BankCardsOptionsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(BankCardsOptionsView$$State bankCardsOptionsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(BankCardsOptionsView bankCardsOptionsView) {
            bankCardsOptionsView.showLoading(this.isLoading);
        }
    }

    public class ShowOptionsCommand extends wd9<BankCardsOptionsView> {
        public final t90 cardOptions;

        public ShowOptionsCommand(BankCardsOptionsView$$State bankCardsOptionsView$$State, t90 t90Var) {
            super("showOptions", k9.class);
            this.cardOptions = t90Var;
        }

        @Override // defpackage.wd9
        public void apply(BankCardsOptionsView bankCardsOptionsView) {
            bankCardsOptionsView.showOptions(this.cardOptions);
        }
    }
}

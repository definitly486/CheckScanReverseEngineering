package com.warefly.checkscan.bankLanding.presentation.bank.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.lk3;
import defpackage.na0;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class BankLandingView$$State extends kh5<BankLandingView> implements BankLandingView {
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
            ((BankLandingView) it.next()).openUrl(str);
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
            ((BankLandingView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowView
    public void setLaunchScreen(lk3... lk3VarArr) {
        SetLaunchScreenCommand setLaunchScreenCommand = new SetLaunchScreenCommand(this, lk3VarArr);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLaunchScreenCommand).b(xd9Var.a, setLaunchScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankLandingView) it.next()).setLaunchScreen(lk3VarArr);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLaunchScreenCommand).a(xd9Var2.a, setLaunchScreenCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public void showButton(boolean z) {
        ShowButtonCommand showButtonCommand = new ShowButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonCommand).b(xd9Var.a, showButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankLandingView) it.next()).showButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonCommand).a(xd9Var2.a, showButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public void showContent(na0 na0Var) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, na0Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankLandingView) it.next()).showContent(na0Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankLandingView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankLandingView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<BankLandingView> {
        public final String arg0;

        public OpenUrlCommand(BankLandingView$$State bankLandingView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BankLandingView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BankLandingView$$State bankLandingView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetLaunchScreenCommand extends wd9<BankLandingView> {
        public final lk3[] arg0;

        public SetLaunchScreenCommand(BankLandingView$$State bankLandingView$$State, lk3[] lk3VarArr) {
            super("setLaunchScreen", hx5.class);
            this.arg0 = lk3VarArr;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.setLaunchScreen(this.arg0);
        }
    }

    public class ShowButtonCommand extends wd9<BankLandingView> {
        public final boolean isShow;

        public ShowButtonCommand(BankLandingView$$State bankLandingView$$State, boolean z) {
            super("showButton", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.showButton(this.isShow);
        }
    }

    public class ShowContentCommand extends wd9<BankLandingView> {
        public final na0 info;

        public ShowContentCommand(BankLandingView$$State bankLandingView$$State, na0 na0Var) {
            super("showContent", k9.class);
            this.info = na0Var;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.showContent(this.info);
        }
    }

    public class ShowErrorCommand extends wd9<BankLandingView> {
        public final boolean isError;

        public ShowErrorCommand(BankLandingView$$State bankLandingView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.showError(this.isError);
        }
    }

    public class ShowLoadingCommand extends wd9<BankLandingView> {
        public final boolean isLoading;

        public ShowLoadingCommand(BankLandingView$$State bankLandingView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(BankLandingView bankLandingView) {
            bankLandingView.showLoading(this.isLoading);
        }
    }
}

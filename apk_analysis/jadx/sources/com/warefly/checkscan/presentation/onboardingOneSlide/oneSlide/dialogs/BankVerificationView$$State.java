package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class BankVerificationView$$State extends kh5<BankVerificationView> implements BankVerificationView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankVerificationView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BankVerificationView) it.next()).dismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDialogCommand).a(xd9Var2.a, dismissDialogCommand);
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
            ((BankVerificationView) it.next()).openUrl(str);
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
            ((BankVerificationView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    public class DismissDialogCommand extends wd9<BankVerificationView> {
        public DismissDialogCommand(BankVerificationView$$State bankVerificationView$$State) {
            super("dismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BankVerificationView bankVerificationView) {
            bankVerificationView.dismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<BankVerificationView> {
        public final String arg0;

        public OpenUrlCommand(BankVerificationView$$State bankVerificationView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BankVerificationView bankVerificationView) {
            bankVerificationView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BankVerificationView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BankVerificationView$$State bankVerificationView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BankVerificationView bankVerificationView) {
            bankVerificationView.openUrlInCustomTab(this.arg0);
        }
    }
}

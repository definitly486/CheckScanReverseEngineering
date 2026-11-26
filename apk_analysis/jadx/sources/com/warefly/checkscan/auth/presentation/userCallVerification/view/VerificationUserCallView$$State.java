package com.warefly.checkscan.auth.presentation.userCallVerification.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class VerificationUserCallView$$State extends kh5<VerificationUserCallView> implements VerificationUserCallView {

    public class SetDescriptionCommand extends wd9<VerificationUserCallView> {
        public final String callPhone;
        public final String phone;

        public SetDescriptionCommand(VerificationUserCallView$$State verificationUserCallView$$State, String str, String str2) {
            super("setDescription", k9.class);
            this.phone = str;
            this.callPhone = str2;
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.setDescription(this.phone, this.callPhone);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).dismissLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissLoadingDialogCommand).a(xd9Var2.a, dismissLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void openPhoneCallApp(String str) {
        OpenPhoneCallAppCommand openPhoneCallAppCommand = new OpenPhoneCallAppCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openPhoneCallAppCommand).b(xd9Var.a, openPhoneCallAppCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).openPhoneCallApp(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openPhoneCallAppCommand).a(xd9Var2.a, openPhoneCallAppCommand);
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
            ((VerificationUserCallView) it.next()).openUrl(str);
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
            ((VerificationUserCallView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void setDescription(String str, String str2) {
        SetDescriptionCommand setDescriptionCommand = new SetDescriptionCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDescriptionCommand).b(xd9Var.a, setDescriptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).setDescription(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDescriptionCommand).a(xd9Var2.a, setDescriptionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void showEmailMethod(boolean z) {
        ShowEmailMethodCommand showEmailMethodCommand = new ShowEmailMethodCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailMethodCommand).b(xd9Var.a, showEmailMethodCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).showEmailMethod(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailMethodCommand).a(xd9Var2.a, showEmailMethodCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void showLoadingButton(boolean z) {
        ShowLoadingButtonCommand showLoadingButtonCommand = new ShowLoadingButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingButtonCommand).b(xd9Var.a, showLoadingButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).showLoadingButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingButtonCommand).a(xd9Var2.a, showLoadingButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public void showUnknownError() {
        ShowUnknownErrorCommand showUnknownErrorCommand = new ShowUnknownErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnknownErrorCommand).b(xd9Var.a, showUnknownErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationUserCallView) it.next()).showUnknownError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnknownErrorCommand).a(xd9Var2.a, showUnknownErrorCommand);
    }

    public class DismissLoadingDialogCommand extends wd9<VerificationUserCallView> {
        public DismissLoadingDialogCommand(VerificationUserCallView$$State verificationUserCallView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.dismissLoadingDialog();
        }
    }

    public class OpenPhoneCallAppCommand extends wd9<VerificationUserCallView> {
        public final String callPhone;

        public OpenPhoneCallAppCommand(VerificationUserCallView$$State verificationUserCallView$$State, String str) {
            super("openPhoneCallApp", hx5.class);
            this.callPhone = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.openPhoneCallApp(this.callPhone);
        }
    }

    public class OpenUrlCommand extends wd9<VerificationUserCallView> {
        public final String arg0;

        public OpenUrlCommand(VerificationUserCallView$$State verificationUserCallView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<VerificationUserCallView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(VerificationUserCallView$$State verificationUserCallView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowEmailMethodCommand extends wd9<VerificationUserCallView> {
        public final boolean show;

        public ShowEmailMethodCommand(VerificationUserCallView$$State verificationUserCallView$$State, boolean z) {
            super("showEmailMethod", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.showEmailMethod(this.show);
        }
    }

    public class ShowLoadingButtonCommand extends wd9<VerificationUserCallView> {
        public final boolean isLoading;

        public ShowLoadingButtonCommand(VerificationUserCallView$$State verificationUserCallView$$State, boolean z) {
            super("showLoadingButton", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.showLoadingButton(this.isLoading);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<VerificationUserCallView> {
        public ShowLoadingDialogCommand(VerificationUserCallView$$State verificationUserCallView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.showLoadingDialog();
        }
    }

    public class ShowUnknownErrorCommand extends wd9<VerificationUserCallView> {
        public ShowUnknownErrorCommand(VerificationUserCallView$$State verificationUserCallView$$State) {
            super("showUnknownError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationUserCallView verificationUserCallView) {
            verificationUserCallView.showUnknownError();
        }
    }
}

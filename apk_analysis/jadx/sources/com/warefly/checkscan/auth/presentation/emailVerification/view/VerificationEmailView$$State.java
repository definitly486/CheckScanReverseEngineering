package com.warefly.checkscan.auth.presentation.emailVerification.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class VerificationEmailView$$State extends kh5<VerificationEmailView> implements VerificationEmailView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void clearOtp() {
        ClearOtpCommand clearOtpCommand = new ClearOtpCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(clearOtpCommand).b(xd9Var.a, clearOtpCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).clearOtp();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(clearOtpCommand).a(xd9Var2.a, clearOtpCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).dismissLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissLoadingDialogCommand).a(xd9Var2.a, dismissLoadingDialogCommand);
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
            ((VerificationEmailView) it.next()).openUrl(str);
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
            ((VerificationEmailView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void setEmailTyped(String str) {
        SetEmailTypedCommand setEmailTypedCommand = new SetEmailTypedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setEmailTypedCommand).b(xd9Var.a, setEmailTypedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).setEmailTyped(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setEmailTypedCommand).a(xd9Var2.a, setEmailTypedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void setTimer(long j) {
        SetTimerCommand setTimerCommand = new SetTimerCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTimerCommand).b(xd9Var.a, setTimerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).setTimer(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTimerCommand).a(xd9Var2.a, setTimerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showEmailAddedBottomSheet() {
        ShowEmailAddedBottomSheetCommand showEmailAddedBottomSheetCommand = new ShowEmailAddedBottomSheetCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailAddedBottomSheetCommand).b(xd9Var.a, showEmailAddedBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showEmailAddedBottomSheet();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailAddedBottomSheetCommand).a(xd9Var2.a, showEmailAddedBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showEmailCodeSendError() {
        ShowEmailCodeSendErrorCommand showEmailCodeSendErrorCommand = new ShowEmailCodeSendErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailCodeSendErrorCommand).b(xd9Var.a, showEmailCodeSendErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showEmailCodeSendError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailCodeSendErrorCommand).a(xd9Var2.a, showEmailCodeSendErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showEmailPlacedError() {
        ShowEmailPlacedErrorCommand showEmailPlacedErrorCommand = new ShowEmailPlacedErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailPlacedErrorCommand).b(xd9Var.a, showEmailPlacedErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showEmailPlacedError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailPlacedErrorCommand).a(xd9Var2.a, showEmailPlacedErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showOtpError(boolean z) {
        ShowOtpErrorCommand showOtpErrorCommand = new ShowOtpErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOtpErrorCommand).b(xd9Var.a, showOtpErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showOtpError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOtpErrorCommand).a(xd9Var2.a, showOtpErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showSendAgainButton(boolean z) {
        ShowSendAgainButtonCommand showSendAgainButtonCommand = new ShowSendAgainButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSendAgainButtonCommand).b(xd9Var.a, showSendAgainButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showSendAgainButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSendAgainButtonCommand).a(xd9Var2.a, showSendAgainButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showTimer(boolean z) {
        ShowTimerCommand showTimerCommand = new ShowTimerCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimerCommand).b(xd9Var.a, showTimerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showTimer(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimerCommand).a(xd9Var2.a, showTimerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void showUnknownError() {
        ShowUnknownErrorCommand showUnknownErrorCommand = new ShowUnknownErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnknownErrorCommand).b(xd9Var.a, showUnknownErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).showUnknownError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnknownErrorCommand).a(xd9Var2.a, showUnknownErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public void vibrateError() {
        VibrateErrorCommand vibrateErrorCommand = new VibrateErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateErrorCommand).b(xd9Var.a, vibrateErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationEmailView) it.next()).vibrateError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateErrorCommand).a(xd9Var2.a, vibrateErrorCommand);
    }

    public class ClearOtpCommand extends wd9<VerificationEmailView> {
        public ClearOtpCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("clearOtp", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.clearOtp();
        }
    }

    public class DismissLoadingDialogCommand extends wd9<VerificationEmailView> {
        public DismissLoadingDialogCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.dismissLoadingDialog();
        }
    }

    public class OpenUrlCommand extends wd9<VerificationEmailView> {
        public final String arg0;

        public OpenUrlCommand(VerificationEmailView$$State verificationEmailView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<VerificationEmailView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(VerificationEmailView$$State verificationEmailView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetEmailTypedCommand extends wd9<VerificationEmailView> {
        public final String email;

        public SetEmailTypedCommand(VerificationEmailView$$State verificationEmailView$$State, String str) {
            super("setEmailTyped", k9.class);
            this.email = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.setEmailTyped(this.email);
        }
    }

    public class SetTimerCommand extends wd9<VerificationEmailView> {
        public final long time;

        public SetTimerCommand(VerificationEmailView$$State verificationEmailView$$State, long j) {
            super("setTimer", k9.class);
            this.time = j;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.setTimer(this.time);
        }
    }

    public class ShowEmailAddedBottomSheetCommand extends wd9<VerificationEmailView> {
        public ShowEmailAddedBottomSheetCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("showEmailAddedBottomSheet", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showEmailAddedBottomSheet();
        }
    }

    public class ShowEmailCodeSendErrorCommand extends wd9<VerificationEmailView> {
        public ShowEmailCodeSendErrorCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("showEmailCodeSendError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showEmailCodeSendError();
        }
    }

    public class ShowEmailPlacedErrorCommand extends wd9<VerificationEmailView> {
        public ShowEmailPlacedErrorCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("showEmailPlacedError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showEmailPlacedError();
        }
    }

    public class ShowLoadingDialogCommand extends wd9<VerificationEmailView> {
        public ShowLoadingDialogCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showLoadingDialog();
        }
    }

    public class ShowOtpErrorCommand extends wd9<VerificationEmailView> {
        public final boolean show;

        public ShowOtpErrorCommand(VerificationEmailView$$State verificationEmailView$$State, boolean z) {
            super("showOtpError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showOtpError(this.show);
        }
    }

    public class ShowSendAgainButtonCommand extends wd9<VerificationEmailView> {
        public final boolean show;

        public ShowSendAgainButtonCommand(VerificationEmailView$$State verificationEmailView$$State, boolean z) {
            super("showSendAgainButton", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showSendAgainButton(this.show);
        }
    }

    public class ShowTimerCommand extends wd9<VerificationEmailView> {
        public final boolean show;

        public ShowTimerCommand(VerificationEmailView$$State verificationEmailView$$State, boolean z) {
            super("showTimer", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showTimer(this.show);
        }
    }

    public class ShowUnknownErrorCommand extends wd9<VerificationEmailView> {
        public ShowUnknownErrorCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("showUnknownError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.showUnknownError();
        }
    }

    public class VibrateErrorCommand extends wd9<VerificationEmailView> {
        public VibrateErrorCommand(VerificationEmailView$$State verificationEmailView$$State) {
            super("vibrateError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationEmailView verificationEmailView) {
            verificationEmailView.vibrateError();
        }
    }
}

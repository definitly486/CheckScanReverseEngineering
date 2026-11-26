package com.warefly.checkscan.auth.presentation.smsVerification.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class VerificationSmsView$$State extends kh5<VerificationSmsView> implements VerificationSmsView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void clearOtp() {
        ClearOtpCommand clearOtpCommand = new ClearOtpCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(clearOtpCommand).b(xd9Var.a, clearOtpCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).clearOtp();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(clearOtpCommand).a(xd9Var2.a, clearOtpCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).dismissLoadingDialog();
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
            ((VerificationSmsView) it.next()).openUrl(str);
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
            ((VerificationSmsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void setCodeFromSms(String str) {
        SetCodeFromSmsCommand setCodeFromSmsCommand = new SetCodeFromSmsCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCodeFromSmsCommand).b(xd9Var.a, setCodeFromSmsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).setCodeFromSms(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCodeFromSmsCommand).a(xd9Var2.a, setCodeFromSmsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void setPhoneTyped(String str) {
        SetPhoneTypedCommand setPhoneTypedCommand = new SetPhoneTypedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPhoneTypedCommand).b(xd9Var.a, setPhoneTypedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).setPhoneTyped(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPhoneTypedCommand).a(xd9Var2.a, setPhoneTypedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void setTimer(long j) {
        SetTimerCommand setTimerCommand = new SetTimerCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTimerCommand).b(xd9Var.a, setTimerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).setTimer(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTimerCommand).a(xd9Var2.a, setTimerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void showOtpError(boolean z) {
        ShowOtpErrorCommand showOtpErrorCommand = new ShowOtpErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOtpErrorCommand).b(xd9Var.a, showOtpErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).showOtpError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOtpErrorCommand).a(xd9Var2.a, showOtpErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void showSendAgainButton(boolean z) {
        ShowSendAgainButtonCommand showSendAgainButtonCommand = new ShowSendAgainButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSendAgainButtonCommand).b(xd9Var.a, showSendAgainButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).showSendAgainButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSendAgainButtonCommand).a(xd9Var2.a, showSendAgainButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void showTimer(boolean z) {
        ShowTimerCommand showTimerCommand = new ShowTimerCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimerCommand).b(xd9Var.a, showTimerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).showTimer(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimerCommand).a(xd9Var2.a, showTimerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void showTryPhoneButton(boolean z) {
        ShowTryPhoneButtonCommand showTryPhoneButtonCommand = new ShowTryPhoneButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTryPhoneButtonCommand).b(xd9Var.a, showTryPhoneButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).showTryPhoneButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTryPhoneButtonCommand).a(xd9Var2.a, showTryPhoneButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void showUnknownError() {
        ShowUnknownErrorCommand showUnknownErrorCommand = new ShowUnknownErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnknownErrorCommand).b(xd9Var.a, showUnknownErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).showUnknownError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnknownErrorCommand).a(xd9Var2.a, showUnknownErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public void vibrateError() {
        VibrateErrorCommand vibrateErrorCommand = new VibrateErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateErrorCommand).b(xd9Var.a, vibrateErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationSmsView) it.next()).vibrateError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateErrorCommand).a(xd9Var2.a, vibrateErrorCommand);
    }

    public class ClearOtpCommand extends wd9<VerificationSmsView> {
        public ClearOtpCommand(VerificationSmsView$$State verificationSmsView$$State) {
            super("clearOtp", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.clearOtp();
        }
    }

    public class DismissLoadingDialogCommand extends wd9<VerificationSmsView> {
        public DismissLoadingDialogCommand(VerificationSmsView$$State verificationSmsView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.dismissLoadingDialog();
        }
    }

    public class OpenUrlCommand extends wd9<VerificationSmsView> {
        public final String arg0;

        public OpenUrlCommand(VerificationSmsView$$State verificationSmsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<VerificationSmsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(VerificationSmsView$$State verificationSmsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetCodeFromSmsCommand extends wd9<VerificationSmsView> {
        public final String code;

        public SetCodeFromSmsCommand(VerificationSmsView$$State verificationSmsView$$State, String str) {
            super("setCodeFromSms", k9.class);
            this.code = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.setCodeFromSms(this.code);
        }
    }

    public class SetPhoneTypedCommand extends wd9<VerificationSmsView> {
        public final String phone;

        public SetPhoneTypedCommand(VerificationSmsView$$State verificationSmsView$$State, String str) {
            super("setPhoneTyped", k9.class);
            this.phone = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.setPhoneTyped(this.phone);
        }
    }

    public class SetTimerCommand extends wd9<VerificationSmsView> {
        public final long time;

        public SetTimerCommand(VerificationSmsView$$State verificationSmsView$$State, long j) {
            super("setTimer", k9.class);
            this.time = j;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.setTimer(this.time);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<VerificationSmsView> {
        public ShowLoadingDialogCommand(VerificationSmsView$$State verificationSmsView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.showLoadingDialog();
        }
    }

    public class ShowOtpErrorCommand extends wd9<VerificationSmsView> {
        public final boolean show;

        public ShowOtpErrorCommand(VerificationSmsView$$State verificationSmsView$$State, boolean z) {
            super("showOtpError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.showOtpError(this.show);
        }
    }

    public class ShowSendAgainButtonCommand extends wd9<VerificationSmsView> {
        public final boolean show;

        public ShowSendAgainButtonCommand(VerificationSmsView$$State verificationSmsView$$State, boolean z) {
            super("showSendAgainButton", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.showSendAgainButton(this.show);
        }
    }

    public class ShowTimerCommand extends wd9<VerificationSmsView> {
        public final boolean show;

        public ShowTimerCommand(VerificationSmsView$$State verificationSmsView$$State, boolean z) {
            super("showTimer", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.showTimer(this.show);
        }
    }

    public class ShowTryPhoneButtonCommand extends wd9<VerificationSmsView> {
        public final boolean show;

        public ShowTryPhoneButtonCommand(VerificationSmsView$$State verificationSmsView$$State, boolean z) {
            super("showTryPhoneButton", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.showTryPhoneButton(this.show);
        }
    }

    public class ShowUnknownErrorCommand extends wd9<VerificationSmsView> {
        public ShowUnknownErrorCommand(VerificationSmsView$$State verificationSmsView$$State) {
            super("showUnknownError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.showUnknownError();
        }
    }

    public class VibrateErrorCommand extends wd9<VerificationSmsView> {
        public VibrateErrorCommand(VerificationSmsView$$State verificationSmsView$$State) {
            super("vibrateError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationSmsView verificationSmsView) {
            verificationSmsView.vibrateError();
        }
    }
}

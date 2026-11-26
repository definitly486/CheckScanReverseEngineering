package com.warefly.checkscan.auth.presentation.callVerification.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class VerificationCallView$$State extends kh5<VerificationCallView> implements VerificationCallView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void clearOtp() {
        ClearOtpCommand clearOtpCommand = new ClearOtpCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(clearOtpCommand).b(xd9Var.a, clearOtpCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).clearOtp();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(clearOtpCommand).a(xd9Var2.a, clearOtpCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).dismissLoadingDialog();
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
            ((VerificationCallView) it.next()).openUrl(str);
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
            ((VerificationCallView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void setPhoneTyped(String str) {
        SetPhoneTypedCommand setPhoneTypedCommand = new SetPhoneTypedCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPhoneTypedCommand).b(xd9Var.a, setPhoneTypedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).setPhoneTyped(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPhoneTypedCommand).a(xd9Var2.a, setPhoneTypedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void setTimer(long j) {
        SetTimerCommand setTimerCommand = new SetTimerCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTimerCommand).b(xd9Var.a, setTimerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).setTimer(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTimerCommand).a(xd9Var2.a, setTimerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void showOtpError(boolean z) {
        ShowOtpErrorCommand showOtpErrorCommand = new ShowOtpErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOtpErrorCommand).b(xd9Var.a, showOtpErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).showOtpError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOtpErrorCommand).a(xd9Var2.a, showOtpErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void showSendAgainButton(boolean z) {
        ShowSendAgainButtonCommand showSendAgainButtonCommand = new ShowSendAgainButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSendAgainButtonCommand).b(xd9Var.a, showSendAgainButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).showSendAgainButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSendAgainButtonCommand).a(xd9Var2.a, showSendAgainButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void showTimer(boolean z) {
        ShowTimerCommand showTimerCommand = new ShowTimerCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimerCommand).b(xd9Var.a, showTimerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).showTimer(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimerCommand).a(xd9Var2.a, showTimerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void showTrySmsButton(boolean z) {
        ShowTrySmsButtonCommand showTrySmsButtonCommand = new ShowTrySmsButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTrySmsButtonCommand).b(xd9Var.a, showTrySmsButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).showTrySmsButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTrySmsButtonCommand).a(xd9Var2.a, showTrySmsButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void showUnknownError() {
        ShowUnknownErrorCommand showUnknownErrorCommand = new ShowUnknownErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnknownErrorCommand).b(xd9Var.a, showUnknownErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).showUnknownError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnknownErrorCommand).a(xd9Var2.a, showUnknownErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public void vibrateError() {
        VibrateErrorCommand vibrateErrorCommand = new VibrateErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateErrorCommand).b(xd9Var.a, vibrateErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCallView) it.next()).vibrateError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateErrorCommand).a(xd9Var2.a, vibrateErrorCommand);
    }

    public class ClearOtpCommand extends wd9<VerificationCallView> {
        public ClearOtpCommand(VerificationCallView$$State verificationCallView$$State) {
            super("clearOtp", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.clearOtp();
        }
    }

    public class DismissLoadingDialogCommand extends wd9<VerificationCallView> {
        public DismissLoadingDialogCommand(VerificationCallView$$State verificationCallView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.dismissLoadingDialog();
        }
    }

    public class OpenUrlCommand extends wd9<VerificationCallView> {
        public final String arg0;

        public OpenUrlCommand(VerificationCallView$$State verificationCallView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<VerificationCallView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(VerificationCallView$$State verificationCallView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetPhoneTypedCommand extends wd9<VerificationCallView> {
        public final String phone;

        public SetPhoneTypedCommand(VerificationCallView$$State verificationCallView$$State, String str) {
            super("setPhoneTyped", k9.class);
            this.phone = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.setPhoneTyped(this.phone);
        }
    }

    public class SetTimerCommand extends wd9<VerificationCallView> {
        public final long time;

        public SetTimerCommand(VerificationCallView$$State verificationCallView$$State, long j) {
            super("setTimer", k9.class);
            this.time = j;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.setTimer(this.time);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<VerificationCallView> {
        public ShowLoadingDialogCommand(VerificationCallView$$State verificationCallView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.showLoadingDialog();
        }
    }

    public class ShowOtpErrorCommand extends wd9<VerificationCallView> {
        public final boolean show;

        public ShowOtpErrorCommand(VerificationCallView$$State verificationCallView$$State, boolean z) {
            super("showOtpError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.showOtpError(this.show);
        }
    }

    public class ShowSendAgainButtonCommand extends wd9<VerificationCallView> {
        public final boolean show;

        public ShowSendAgainButtonCommand(VerificationCallView$$State verificationCallView$$State, boolean z) {
            super("showSendAgainButton", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.showSendAgainButton(this.show);
        }
    }

    public class ShowTimerCommand extends wd9<VerificationCallView> {
        public final boolean show;

        public ShowTimerCommand(VerificationCallView$$State verificationCallView$$State, boolean z) {
            super("showTimer", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.showTimer(this.show);
        }
    }

    public class ShowTrySmsButtonCommand extends wd9<VerificationCallView> {
        public final boolean show;

        public ShowTrySmsButtonCommand(VerificationCallView$$State verificationCallView$$State, boolean z) {
            super("showTrySmsButton", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.showTrySmsButton(this.show);
        }
    }

    public class ShowUnknownErrorCommand extends wd9<VerificationCallView> {
        public ShowUnknownErrorCommand(VerificationCallView$$State verificationCallView$$State) {
            super("showUnknownError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.showUnknownError();
        }
    }

    public class VibrateErrorCommand extends wd9<VerificationCallView> {
        public VibrateErrorCommand(VerificationCallView$$State verificationCallView$$State) {
            super("vibrateError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCallView verificationCallView) {
            verificationCallView.vibrateError();
        }
    }
}

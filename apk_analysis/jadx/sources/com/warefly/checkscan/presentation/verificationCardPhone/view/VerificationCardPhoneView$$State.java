package com.warefly.checkscan.presentation.verificationCardPhone.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class VerificationCardPhoneView$$State extends kh5<VerificationCardPhoneView> implements VerificationCardPhoneView {

    public class SetCaseCallCommand extends wd9<VerificationCardPhoneView> {
        public final int codeLength;
        public final String phone;

        public SetCaseCallCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, String str, int i) {
            super("setCaseCall", hx5.class);
            this.phone = str;
            this.codeLength = i;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.setCaseCall(this.phone, this.codeLength);
        }
    }

    public class ShowErrorCommand extends wd9<VerificationCardPhoneView> {
        public final boolean contactSupport;
        public final boolean phoneConflict;
        public final boolean timeDelayError;

        public ShowErrorCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, boolean z, boolean z2, boolean z3) {
            super("showError", hx5.class);
            this.timeDelayError = z;
            this.phoneConflict = z2;
            this.contactSupport = z3;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showError(this.timeDelayError, this.phoneConflict, this.contactSupport);
        }
    }

    public class ShowOfferCardDialogCommand extends wd9<VerificationCardPhoneView> {
        public final int sum;
        public final int title;

        public ShowOfferCardDialogCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, int i, int i2) {
            super("showOfferCardDialog", hx5.class);
            this.sum = i;
            this.title = i2;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showOfferCardDialog(this.sum, this.title);
        }
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
            ((VerificationCardPhoneView) it.next()).openUrl(str);
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
            ((VerificationCardPhoneView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void setCaseCall(String str, int i) {
        SetCaseCallCommand setCaseCallCommand = new SetCaseCallCommand(this, str, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCaseCallCommand).b(xd9Var.a, setCaseCallCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).setCaseCall(str, i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCaseCallCommand).a(xd9Var2.a, setCaseCallCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void setCodeFromSms(String str) {
        SetCodeFromSmsCommand setCodeFromSmsCommand = new SetCodeFromSmsCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCodeFromSmsCommand).b(xd9Var.a, setCodeFromSmsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).setCodeFromSms(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCodeFromSmsCommand).a(xd9Var2.a, setCodeFromSmsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showError(boolean z, boolean z2, boolean z3) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z, z2, z3);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showError(z, z2, z3);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showErrorCode() {
        ShowErrorCodeCommand showErrorCodeCommand = new ShowErrorCodeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCodeCommand).b(xd9Var.a, showErrorCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showErrorCode();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCodeCommand).a(xd9Var2.a, showErrorCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showInvalidPhoneError() {
        ShowInvalidPhoneErrorCommand showInvalidPhoneErrorCommand = new ShowInvalidPhoneErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidPhoneErrorCommand).b(xd9Var.a, showInvalidPhoneErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showInvalidPhoneError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidPhoneErrorCommand).a(xd9Var2.a, showInvalidPhoneErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showLongCode() {
        ShowLongCodeCommand showLongCodeCommand = new ShowLongCodeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLongCodeCommand).b(xd9Var.a, showLongCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showLongCode();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLongCodeCommand).a(xd9Var2.a, showLongCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showMiddleCode() {
        ShowMiddleCodeCommand showMiddleCodeCommand = new ShowMiddleCodeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMiddleCodeCommand).b(xd9Var.a, showMiddleCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showMiddleCode();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMiddleCodeCommand).a(xd9Var2.a, showMiddleCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showOfferCardDialog(int i, int i2) {
        ShowOfferCardDialogCommand showOfferCardDialogCommand = new ShowOfferCardDialogCommand(this, i, i2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOfferCardDialogCommand).b(xd9Var.a, showOfferCardDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showOfferCardDialog(i, i2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOfferCardDialogCommand).a(xd9Var2.a, showOfferCardDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showProviderError() {
        ShowProviderErrorCommand showProviderErrorCommand = new ShowProviderErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showProviderErrorCommand).b(xd9Var.a, showProviderErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showProviderError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showProviderErrorCommand).a(xd9Var2.a, showProviderErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showRepeatCallAgain() {
        ShowRepeatCallAgainCommand showRepeatCallAgainCommand = new ShowRepeatCallAgainCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRepeatCallAgainCommand).b(xd9Var.a, showRepeatCallAgainCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showRepeatCallAgain();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRepeatCallAgainCommand).a(xd9Var2.a, showRepeatCallAgainCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showSendSmsAgain() {
        ShowSendSmsAgainCommand showSendSmsAgainCommand = new ShowSendSmsAgainCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSendSmsAgainCommand).b(xd9Var.a, showSendSmsAgainCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showSendSmsAgain();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSendSmsAgainCommand).a(xd9Var2.a, showSendSmsAgainCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showSendSmsCode(String str) {
        ShowSendSmsCodeCommand showSendSmsCodeCommand = new ShowSendSmsCodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSendSmsCodeCommand).b(xd9Var.a, showSendSmsCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showSendSmsCode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSendSmsCodeCommand).a(xd9Var2.a, showSendSmsCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showShortCode() {
        ShowShortCodeCommand showShortCodeCommand = new ShowShortCodeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShortCodeCommand).b(xd9Var.a, showShortCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showShortCode();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShortCodeCommand).a(xd9Var2.a, showShortCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showTimeForRepeatCode() {
        ShowTimeForRepeatCodeCommand showTimeForRepeatCodeCommand = new ShowTimeForRepeatCodeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimeForRepeatCodeCommand).b(xd9Var.a, showTimeForRepeatCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showTimeForRepeatCode();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimeForRepeatCodeCommand).a(xd9Var2.a, showTimeForRepeatCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void showTimesNotExpired() {
        ShowTimesNotExpiredCommand showTimesNotExpiredCommand = new ShowTimesNotExpiredCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimesNotExpiredCommand).b(xd9Var.a, showTimesNotExpiredCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).showTimesNotExpired();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimesNotExpiredCommand).a(xd9Var2.a, showTimesNotExpiredCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public void updateTextField() {
        UpdateTextFieldCommand updateTextFieldCommand = new UpdateTextFieldCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(updateTextFieldCommand).b(xd9Var.a, updateTextFieldCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((VerificationCardPhoneView) it.next()).updateTextField();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(updateTextFieldCommand).a(xd9Var2.a, updateTextFieldCommand);
    }

    public class OpenUrlCommand extends wd9<VerificationCardPhoneView> {
        public final String arg0;

        public OpenUrlCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<VerificationCardPhoneView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetCodeFromSmsCommand extends wd9<VerificationCardPhoneView> {
        public final String code;

        public SetCodeFromSmsCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, String str) {
            super("setCodeFromSms", hx5.class);
            this.code = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.setCodeFromSms(this.code);
        }
    }

    public class ShowErrorCodeCommand extends wd9<VerificationCardPhoneView> {
        public ShowErrorCodeCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showErrorCode", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showErrorCode();
        }
    }

    public class ShowInvalidPhoneErrorCommand extends wd9<VerificationCardPhoneView> {
        public ShowInvalidPhoneErrorCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showInvalidPhoneError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showInvalidPhoneError();
        }
    }

    public class ShowLoadingCommand extends wd9<VerificationCardPhoneView> {
        public final boolean show;

        public ShowLoadingCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showLoading(this.show);
        }
    }

    public class ShowLongCodeCommand extends wd9<VerificationCardPhoneView> {
        public ShowLongCodeCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showLongCode", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showLongCode();
        }
    }

    public class ShowMiddleCodeCommand extends wd9<VerificationCardPhoneView> {
        public ShowMiddleCodeCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showMiddleCode", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showMiddleCode();
        }
    }

    public class ShowProviderErrorCommand extends wd9<VerificationCardPhoneView> {
        public ShowProviderErrorCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showProviderError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showProviderError();
        }
    }

    public class ShowRepeatCallAgainCommand extends wd9<VerificationCardPhoneView> {
        public ShowRepeatCallAgainCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showRepeatCallAgain", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showRepeatCallAgain();
        }
    }

    public class ShowSendSmsAgainCommand extends wd9<VerificationCardPhoneView> {
        public ShowSendSmsAgainCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showSendSmsAgain", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showSendSmsAgain();
        }
    }

    public class ShowSendSmsCodeCommand extends wd9<VerificationCardPhoneView> {
        public final String phone;

        public ShowSendSmsCodeCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State, String str) {
            super("showSendSmsCode", hx5.class);
            this.phone = str;
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showSendSmsCode(this.phone);
        }
    }

    public class ShowShortCodeCommand extends wd9<VerificationCardPhoneView> {
        public ShowShortCodeCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showShortCode", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showShortCode();
        }
    }

    public class ShowTimeForRepeatCodeCommand extends wd9<VerificationCardPhoneView> {
        public ShowTimeForRepeatCodeCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showTimeForRepeatCode", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showTimeForRepeatCode();
        }
    }

    public class ShowTimesNotExpiredCommand extends wd9<VerificationCardPhoneView> {
        public ShowTimesNotExpiredCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("showTimesNotExpired", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.showTimesNotExpired();
        }
    }

    public class UpdateTextFieldCommand extends wd9<VerificationCardPhoneView> {
        public UpdateTextFieldCommand(VerificationCardPhoneView$$State verificationCardPhoneView$$State) {
            super("updateTextField", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(VerificationCardPhoneView verificationCardPhoneView) {
            verificationCardPhoneView.updateTextField();
        }
    }
}

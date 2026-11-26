package com.warefly.checkscan.auth.presentation.main.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.ub;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.z99;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PhoneSignUpView$$State extends kh5<PhoneSignUpView> implements PhoneSignUpView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).dismissLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissLoadingDialogCommand).a(xd9Var2.a, dismissLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void flashAgreementsError() {
        FlashAgreementsErrorCommand flashAgreementsErrorCommand = new FlashAgreementsErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(flashAgreementsErrorCommand).b(xd9Var.a, flashAgreementsErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).flashAgreementsError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(flashAgreementsErrorCommand).a(xd9Var2.a, flashAgreementsErrorCommand);
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
            ((PhoneSignUpView) it.next()).openUrl(str);
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
            ((PhoneSignUpView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void setInviteCodeFiled(String str) {
        SetInviteCodeFiledCommand setInviteCodeFiledCommand = new SetInviteCodeFiledCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setInviteCodeFiledCommand).b(xd9Var.a, setInviteCodeFiledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).setInviteCodeFiled(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setInviteCodeFiledCommand).a(xd9Var2.a, setInviteCodeFiledCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showAgreementBottomSheet(String str) {
        ShowAgreementBottomSheetCommand showAgreementBottomSheetCommand = new ShowAgreementBottomSheetCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAgreementBottomSheetCommand).b(xd9Var.a, showAgreementBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showAgreementBottomSheet(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAgreementBottomSheetCommand).a(xd9Var2.a, showAgreementBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showAgreements(List<ub> list) {
        ShowAgreementsCommand showAgreementsCommand = new ShowAgreementsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAgreementsCommand).b(xd9Var.a, showAgreementsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showAgreements(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAgreementsCommand).a(xd9Var2.a, showAgreementsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showInviteCodeField() {
        ShowInviteCodeFieldCommand showInviteCodeFieldCommand = new ShowInviteCodeFieldCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInviteCodeFieldCommand).b(xd9Var.a, showInviteCodeFieldCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showInviteCodeField();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInviteCodeFieldCommand).a(xd9Var2.a, showInviteCodeFieldCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showInviteCodeFieldError(boolean z) {
        ShowInviteCodeFieldErrorCommand showInviteCodeFieldErrorCommand = new ShowInviteCodeFieldErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInviteCodeFieldErrorCommand).b(xd9Var.a, showInviteCodeFieldErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showInviteCodeFieldError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInviteCodeFieldErrorCommand).a(xd9Var2.a, showInviteCodeFieldErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showPhoneFieldError(boolean z) {
        ShowPhoneFieldErrorCommand showPhoneFieldErrorCommand = new ShowPhoneFieldErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPhoneFieldErrorCommand).b(xd9Var.a, showPhoneFieldErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showPhoneFieldError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPhoneFieldErrorCommand).a(xd9Var2.a, showPhoneFieldErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showSkipButton() {
        ShowSkipButtonCommand showSkipButtonCommand = new ShowSkipButtonCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSkipButtonCommand).b(xd9Var.a, showSkipButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showSkipButton();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSkipButtonCommand).a(xd9Var2.a, showSkipButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showUnknownError() {
        ShowUnknownErrorCommand showUnknownErrorCommand = new ShowUnknownErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnknownErrorCommand).b(xd9Var.a, showUnknownErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showUnknownError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnknownErrorCommand).a(xd9Var2.a, showUnknownErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public void showUserPolicy(z99 z99Var) {
        ShowUserPolicyCommand showUserPolicyCommand = new ShowUserPolicyCommand(this, z99Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUserPolicyCommand).b(xd9Var.a, showUserPolicyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneSignUpView) it.next()).showUserPolicy(z99Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUserPolicyCommand).a(xd9Var2.a, showUserPolicyCommand);
    }

    public class DismissLoadingDialogCommand extends wd9<PhoneSignUpView> {
        public DismissLoadingDialogCommand(PhoneSignUpView$$State phoneSignUpView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.dismissLoadingDialog();
        }
    }

    public class FlashAgreementsErrorCommand extends wd9<PhoneSignUpView> {
        public FlashAgreementsErrorCommand(PhoneSignUpView$$State phoneSignUpView$$State) {
            super("flashAgreementsError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.flashAgreementsError();
        }
    }

    public class OpenUrlCommand extends wd9<PhoneSignUpView> {
        public final String arg0;

        public OpenUrlCommand(PhoneSignUpView$$State phoneSignUpView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PhoneSignUpView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PhoneSignUpView$$State phoneSignUpView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetInviteCodeFiledCommand extends wd9<PhoneSignUpView> {
        public final String inviteCode;

        public SetInviteCodeFiledCommand(PhoneSignUpView$$State phoneSignUpView$$State, String str) {
            super("setInviteCodeFiled", k9.class);
            this.inviteCode = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.setInviteCodeFiled(this.inviteCode);
        }
    }

    public class ShowAgreementBottomSheetCommand extends wd9<PhoneSignUpView> {
        public final String url;

        public ShowAgreementBottomSheetCommand(PhoneSignUpView$$State phoneSignUpView$$State, String str) {
            super("showAgreementBottomSheet", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showAgreementBottomSheet(this.url);
        }
    }

    public class ShowAgreementsCommand extends wd9<PhoneSignUpView> {
        public final List<ub> agreements;

        public ShowAgreementsCommand(PhoneSignUpView$$State phoneSignUpView$$State, List<ub> list) {
            super("showAgreements", k9.class);
            this.agreements = list;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showAgreements(this.agreements);
        }
    }

    public class ShowInviteCodeFieldCommand extends wd9<PhoneSignUpView> {
        public ShowInviteCodeFieldCommand(PhoneSignUpView$$State phoneSignUpView$$State) {
            super("showInviteCodeField", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showInviteCodeField();
        }
    }

    public class ShowInviteCodeFieldErrorCommand extends wd9<PhoneSignUpView> {
        public final boolean show;

        public ShowInviteCodeFieldErrorCommand(PhoneSignUpView$$State phoneSignUpView$$State, boolean z) {
            super("showInviteCodeFieldError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showInviteCodeFieldError(this.show);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<PhoneSignUpView> {
        public ShowLoadingDialogCommand(PhoneSignUpView$$State phoneSignUpView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showLoadingDialog();
        }
    }

    public class ShowPhoneFieldErrorCommand extends wd9<PhoneSignUpView> {
        public final boolean show;

        public ShowPhoneFieldErrorCommand(PhoneSignUpView$$State phoneSignUpView$$State, boolean z) {
            super("showPhoneFieldError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showPhoneFieldError(this.show);
        }
    }

    public class ShowSkipButtonCommand extends wd9<PhoneSignUpView> {
        public ShowSkipButtonCommand(PhoneSignUpView$$State phoneSignUpView$$State) {
            super("showSkipButton", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showSkipButton();
        }
    }

    public class ShowUnknownErrorCommand extends wd9<PhoneSignUpView> {
        public ShowUnknownErrorCommand(PhoneSignUpView$$State phoneSignUpView$$State) {
            super("showUnknownError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showUnknownError();
        }
    }

    public class ShowUserPolicyCommand extends wd9<PhoneSignUpView> {
        public final z99 userPolicy;

        public ShowUserPolicyCommand(PhoneSignUpView$$State phoneSignUpView$$State, z99 z99Var) {
            super("showUserPolicy", k9.class);
            this.userPolicy = z99Var;
        }

        @Override // defpackage.wd9
        public void apply(PhoneSignUpView phoneSignUpView) {
            phoneSignUpView.showUserPolicy(this.userPolicy);
        }
    }
}

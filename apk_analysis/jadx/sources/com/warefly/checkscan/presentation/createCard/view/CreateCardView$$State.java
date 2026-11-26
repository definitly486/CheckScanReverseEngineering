package com.warefly.checkscan.presentation.createCard.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class CreateCardView$$State extends kh5<CreateCardView> implements CreateCardView {

    public class IsHaveNumberCommand extends wd9<CreateCardView> {
        public final String number;
        public final boolean validNumber;
        public final boolean value;

        public IsHaveNumberCommand(CreateCardView$$State createCardView$$State, boolean z, boolean z2, String str) {
            super("isHaveNumber", k9.class);
            this.value = z;
            this.validNumber = z2;
            this.number = str;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.isHaveNumber(this.value, this.validNumber, this.number);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void dismissUpridDialog() {
        DismissUpridDialogCommand dismissUpridDialogCommand = new DismissUpridDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissUpridDialogCommand).b(xd9Var.a, dismissUpridDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).dismissUpridDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissUpridDialogCommand).a(xd9Var2.a, dismissUpridDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void editNumberClick() {
        EditNumberClickCommand editNumberClickCommand = new EditNumberClickCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(editNumberClickCommand).b(xd9Var.a, editNumberClickCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).editNumberClick();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(editNumberClickCommand).a(xd9Var2.a, editNumberClickCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void enableIssueButton(boolean z) {
        EnableIssueButtonCommand enableIssueButtonCommand = new EnableIssueButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableIssueButtonCommand).b(xd9Var.a, enableIssueButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).enableIssueButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableIssueButtonCommand).a(xd9Var2.a, enableIssueButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void isHaveNumber(boolean z, boolean z2, String str) {
        IsHaveNumberCommand isHaveNumberCommand = new IsHaveNumberCommand(this, z, z2, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(isHaveNumberCommand).b(xd9Var.a, isHaveNumberCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).isHaveNumber(z, z2, str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(isHaveNumberCommand).a(xd9Var2.a, isHaveNumberCommand);
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
            ((CreateCardView) it.next()).openUrl(str);
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
            ((CreateCardView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showError(String str) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showError(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showIncorrectPhoneMessage(boolean z) {
        ShowIncorrectPhoneMessageCommand showIncorrectPhoneMessageCommand = new ShowIncorrectPhoneMessageCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showIncorrectPhoneMessageCommand).b(xd9Var.a, showIncorrectPhoneMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showIncorrectPhoneMessage(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showIncorrectPhoneMessageCommand).a(xd9Var2.a, showIncorrectPhoneMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showLoadingSpinner(boolean z) {
        ShowLoadingSpinnerCommand showLoadingSpinnerCommand = new ShowLoadingSpinnerCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingSpinnerCommand).b(xd9Var.a, showLoadingSpinnerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showLoadingSpinner(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingSpinnerCommand).a(xd9Var2.a, showLoadingSpinnerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showPhoneUsedError() {
        ShowPhoneUsedErrorCommand showPhoneUsedErrorCommand = new ShowPhoneUsedErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPhoneUsedErrorCommand).b(xd9Var.a, showPhoneUsedErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showPhoneUsedError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPhoneUsedErrorCommand).a(xd9Var2.a, showPhoneUsedErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showTimeConfirmError() {
        ShowTimeConfirmErrorCommand showTimeConfirmErrorCommand = new ShowTimeConfirmErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimeConfirmErrorCommand).b(xd9Var.a, showTimeConfirmErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showTimeConfirmError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimeConfirmErrorCommand).a(xd9Var2.a, showTimeConfirmErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public void showUpridWebDialog(String str) {
        ShowUpridWebDialogCommand showUpridWebDialogCommand = new ShowUpridWebDialogCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUpridWebDialogCommand).b(xd9Var.a, showUpridWebDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CreateCardView) it.next()).showUpridWebDialog(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUpridWebDialogCommand).a(xd9Var2.a, showUpridWebDialogCommand);
    }

    public class DismissUpridDialogCommand extends wd9<CreateCardView> {
        public DismissUpridDialogCommand(CreateCardView$$State createCardView$$State) {
            super("dismissUpridDialog", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.dismissUpridDialog();
        }
    }

    public class EditNumberClickCommand extends wd9<CreateCardView> {
        public EditNumberClickCommand(CreateCardView$$State createCardView$$State) {
            super("editNumberClick", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.editNumberClick();
        }
    }

    public class EnableIssueButtonCommand extends wd9<CreateCardView> {
        public final boolean isEnabled;

        public EnableIssueButtonCommand(CreateCardView$$State createCardView$$State, boolean z) {
            super("enableIssueButton", k9.class);
            this.isEnabled = z;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.enableIssueButton(this.isEnabled);
        }
    }

    public class OpenUrlCommand extends wd9<CreateCardView> {
        public final String arg0;

        public OpenUrlCommand(CreateCardView$$State createCardView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CreateCardView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CreateCardView$$State createCardView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowErrorCommand extends wd9<CreateCardView> {
        public final String message;

        public ShowErrorCommand(CreateCardView$$State createCardView$$State, String str) {
            super("showError", hx5.class);
            this.message = str;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showError(this.message);
        }
    }

    public class ShowIncorrectPhoneMessageCommand extends wd9<CreateCardView> {
        public final boolean show;

        public ShowIncorrectPhoneMessageCommand(CreateCardView$$State createCardView$$State, boolean z) {
            super("showIncorrectPhoneMessage", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showIncorrectPhoneMessage(this.show);
        }
    }

    public class ShowLoadingCommand extends wd9<CreateCardView> {
        public final boolean showLoading;

        public ShowLoadingCommand(CreateCardView$$State createCardView$$State, boolean z) {
            super("showLoading", k9.class);
            this.showLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showLoading(this.showLoading);
        }
    }

    public class ShowLoadingSpinnerCommand extends wd9<CreateCardView> {
        public final boolean show;

        public ShowLoadingSpinnerCommand(CreateCardView$$State createCardView$$State, boolean z) {
            super("showLoadingSpinner", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showLoadingSpinner(this.show);
        }
    }

    public class ShowPhoneUsedErrorCommand extends wd9<CreateCardView> {
        public ShowPhoneUsedErrorCommand(CreateCardView$$State createCardView$$State) {
            super("showPhoneUsedError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showPhoneUsedError();
        }
    }

    public class ShowTimeConfirmErrorCommand extends wd9<CreateCardView> {
        public ShowTimeConfirmErrorCommand(CreateCardView$$State createCardView$$State) {
            super("showTimeConfirmError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showTimeConfirmError();
        }
    }

    public class ShowUpridWebDialogCommand extends wd9<CreateCardView> {
        public final String url;

        public ShowUpridWebDialogCommand(CreateCardView$$State createCardView$$State, String str) {
            super("showUpridWebDialog", k9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(CreateCardView createCardView) {
            createCardView.showUpridWebDialog(this.url);
        }
    }
}

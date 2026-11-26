package com.warefly.checkscan.presentation.chequePage.form.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ChequeInfoFormView$$State extends kh5<ChequeInfoFormView> implements ChequeInfoFormView {
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
            ((ChequeInfoFormView) it.next()).openUrl(str);
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
            ((ChequeInfoFormView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public void setPostingFormEnabled(boolean z) {
        SetPostingFormEnabledCommand setPostingFormEnabledCommand = new SetPostingFormEnabledCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPostingFormEnabledCommand).b(xd9Var.a, setPostingFormEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequeInfoFormView) it.next()).setPostingFormEnabled(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPostingFormEnabledCommand).a(xd9Var2.a, setPostingFormEnabledCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public void showInvalidFullNameError(boolean z) {
        ShowInvalidFullNameErrorCommand showInvalidFullNameErrorCommand = new ShowInvalidFullNameErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidFullNameErrorCommand).b(xd9Var.a, showInvalidFullNameErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequeInfoFormView) it.next()).showInvalidFullNameError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidFullNameErrorCommand).a(xd9Var2.a, showInvalidFullNameErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public void showInvalidPhoneError(boolean z) {
        ShowInvalidPhoneErrorCommand showInvalidPhoneErrorCommand = new ShowInvalidPhoneErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidPhoneErrorCommand).b(xd9Var.a, showInvalidPhoneErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequeInfoFormView) it.next()).showInvalidPhoneError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidPhoneErrorCommand).a(xd9Var2.a, showInvalidPhoneErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public void showPostingForm(boolean z) {
        ShowPostingFormCommand showPostingFormCommand = new ShowPostingFormCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPostingFormCommand).b(xd9Var.a, showPostingFormCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequeInfoFormView) it.next()).showPostingForm(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPostingFormCommand).a(xd9Var2.a, showPostingFormCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public void showPostingFormError() {
        ShowPostingFormErrorCommand showPostingFormErrorCommand = new ShowPostingFormErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPostingFormErrorCommand).b(xd9Var.a, showPostingFormErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequeInfoFormView) it.next()).showPostingFormError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPostingFormErrorCommand).a(xd9Var2.a, showPostingFormErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public void showPostingFormSuccess() {
        ShowPostingFormSuccessCommand showPostingFormSuccessCommand = new ShowPostingFormSuccessCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPostingFormSuccessCommand).b(xd9Var.a, showPostingFormSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequeInfoFormView) it.next()).showPostingFormSuccess();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPostingFormSuccessCommand).a(xd9Var2.a, showPostingFormSuccessCommand);
    }

    public class OpenUrlCommand extends wd9<ChequeInfoFormView> {
        public final String arg0;

        public OpenUrlCommand(ChequeInfoFormView$$State chequeInfoFormView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ChequeInfoFormView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ChequeInfoFormView$$State chequeInfoFormView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetPostingFormEnabledCommand extends wd9<ChequeInfoFormView> {
        public final boolean isEnabled;

        public SetPostingFormEnabledCommand(ChequeInfoFormView$$State chequeInfoFormView$$State, boolean z) {
            super("setPostingFormEnabled", k9.class);
            this.isEnabled = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.setPostingFormEnabled(this.isEnabled);
        }
    }

    public class ShowInvalidFullNameErrorCommand extends wd9<ChequeInfoFormView> {
        public final boolean show;

        public ShowInvalidFullNameErrorCommand(ChequeInfoFormView$$State chequeInfoFormView$$State, boolean z) {
            super("showInvalidFullNameError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.showInvalidFullNameError(this.show);
        }
    }

    public class ShowInvalidPhoneErrorCommand extends wd9<ChequeInfoFormView> {
        public final boolean show;

        public ShowInvalidPhoneErrorCommand(ChequeInfoFormView$$State chequeInfoFormView$$State, boolean z) {
            super("showInvalidPhoneError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.showInvalidPhoneError(this.show);
        }
    }

    public class ShowPostingFormCommand extends wd9<ChequeInfoFormView> {
        public final boolean show;

        public ShowPostingFormCommand(ChequeInfoFormView$$State chequeInfoFormView$$State, boolean z) {
            super("showPostingForm", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.showPostingForm(this.show);
        }
    }

    public class ShowPostingFormErrorCommand extends wd9<ChequeInfoFormView> {
        public ShowPostingFormErrorCommand(ChequeInfoFormView$$State chequeInfoFormView$$State) {
            super("showPostingFormError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.showPostingFormError();
        }
    }

    public class ShowPostingFormSuccessCommand extends wd9<ChequeInfoFormView> {
        public ShowPostingFormSuccessCommand(ChequeInfoFormView$$State chequeInfoFormView$$State) {
            super("showPostingFormSuccess", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequeInfoFormView chequeInfoFormView) {
            chequeInfoFormView.showPostingFormSuccess();
        }
    }
}

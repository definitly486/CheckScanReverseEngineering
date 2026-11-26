package com.warefly.checkscan.support.presentation.form.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.ni3;
import defpackage.wd9;
import defpackage.we8;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class SupportFormView$$State extends kh5<SupportFormView> implements SupportFormView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void flashCheckboxError() {
        FlashCheckboxErrorCommand flashCheckboxErrorCommand = new FlashCheckboxErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(flashCheckboxErrorCommand).b(xd9Var.a, flashCheckboxErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).flashCheckboxError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(flashCheckboxErrorCommand).a(xd9Var2.a, flashCheckboxErrorCommand);
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
            ((SupportFormView) it.next()).openUrl(str);
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
            ((SupportFormView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setButtonLoading(boolean z) {
        SetButtonLoadingCommand setButtonLoadingCommand = new SetButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setButtonLoadingCommand).b(xd9Var.a, setButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setButtonLoadingCommand).a(xd9Var2.a, setButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setCheckbox(boolean z) {
        SetCheckboxCommand setCheckboxCommand = new SetCheckboxCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCheckboxCommand).b(xd9Var.a, setCheckboxCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setCheckbox(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCheckboxCommand).a(xd9Var2.a, setCheckboxCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setDescriptionFocus() {
        SetDescriptionFocusCommand setDescriptionFocusCommand = new SetDescriptionFocusCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDescriptionFocusCommand).b(xd9Var.a, setDescriptionFocusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setDescriptionFocus();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDescriptionFocusCommand).a(xd9Var2.a, setDescriptionFocusCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setEmailField(String str) {
        SetEmailFieldCommand setEmailFieldCommand = new SetEmailFieldCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setEmailFieldCommand).b(xd9Var.a, setEmailFieldCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setEmailField(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setEmailFieldCommand).a(xd9Var2.a, setEmailFieldCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setEmailFocus() {
        SetEmailFocusCommand setEmailFocusCommand = new SetEmailFocusCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setEmailFocusCommand).b(xd9Var.a, setEmailFocusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setEmailFocus();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setEmailFocusCommand).a(xd9Var2.a, setEmailFocusCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setNameField(String str) {
        SetNameFieldCommand setNameFieldCommand = new SetNameFieldCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setNameFieldCommand).b(xd9Var.a, setNameFieldCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setNameField(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setNameFieldCommand).a(xd9Var2.a, setNameFieldCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setNameFocus() {
        SetNameFocusCommand setNameFocusCommand = new SetNameFocusCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setNameFocusCommand).b(xd9Var.a, setNameFocusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setNameFocus();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setNameFocusCommand).a(xd9Var2.a, setNameFocusCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void setScreenInfo(ni3 ni3Var) {
        SetScreenInfoCommand setScreenInfoCommand = new SetScreenInfoCommand(this, ni3Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setScreenInfoCommand).b(xd9Var.a, setScreenInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).setScreenInfo(ni3Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setScreenInfoCommand).a(xd9Var2.a, setScreenInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void showDescriptionError(boolean z) {
        ShowDescriptionErrorCommand showDescriptionErrorCommand = new ShowDescriptionErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDescriptionErrorCommand).b(xd9Var.a, showDescriptionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).showDescriptionError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDescriptionErrorCommand).a(xd9Var2.a, showDescriptionErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void showEmailError(boolean z) {
        ShowEmailErrorCommand showEmailErrorCommand = new ShowEmailErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailErrorCommand).b(xd9Var.a, showEmailErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).showEmailError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailErrorCommand).a(xd9Var2.a, showEmailErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void showFailBottomSheet(we8 we8Var) {
        ShowFailBottomSheetCommand showFailBottomSheetCommand = new ShowFailBottomSheetCommand(this, we8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFailBottomSheetCommand).b(xd9Var.a, showFailBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).showFailBottomSheet(we8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFailBottomSheetCommand).a(xd9Var2.a, showFailBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public void showSuccessBottomSheet(we8 we8Var) {
        ShowSuccessBottomSheetCommand showSuccessBottomSheetCommand = new ShowSuccessBottomSheetCommand(this, we8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSuccessBottomSheetCommand).b(xd9Var.a, showSuccessBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportFormView) it.next()).showSuccessBottomSheet(we8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSuccessBottomSheetCommand).a(xd9Var2.a, showSuccessBottomSheetCommand);
    }

    public class FlashCheckboxErrorCommand extends wd9<SupportFormView> {
        public FlashCheckboxErrorCommand(SupportFormView$$State supportFormView$$State) {
            super("flashCheckboxError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.flashCheckboxError();
        }
    }

    public class OpenUrlCommand extends wd9<SupportFormView> {
        public final String arg0;

        public OpenUrlCommand(SupportFormView$$State supportFormView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<SupportFormView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(SupportFormView$$State supportFormView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetButtonLoadingCommand extends wd9<SupportFormView> {
        public final boolean isLoading;

        public SetButtonLoadingCommand(SupportFormView$$State supportFormView$$State, boolean z) {
            super("setButtonLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setButtonLoading(this.isLoading);
        }
    }

    public class SetCheckboxCommand extends wd9<SupportFormView> {
        public final boolean isChecked;

        public SetCheckboxCommand(SupportFormView$$State supportFormView$$State, boolean z) {
            super("setCheckbox", k9.class);
            this.isChecked = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setCheckbox(this.isChecked);
        }
    }

    public class SetDescriptionFocusCommand extends wd9<SupportFormView> {
        public SetDescriptionFocusCommand(SupportFormView$$State supportFormView$$State) {
            super("setDescriptionFocus", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setDescriptionFocus();
        }
    }

    public class SetEmailFieldCommand extends wd9<SupportFormView> {
        public final String email;

        public SetEmailFieldCommand(SupportFormView$$State supportFormView$$State, String str) {
            super("setEmailField", hx5.class);
            this.email = str;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setEmailField(this.email);
        }
    }

    public class SetEmailFocusCommand extends wd9<SupportFormView> {
        public SetEmailFocusCommand(SupportFormView$$State supportFormView$$State) {
            super("setEmailFocus", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setEmailFocus();
        }
    }

    public class SetNameFieldCommand extends wd9<SupportFormView> {
        public final String name;

        public SetNameFieldCommand(SupportFormView$$State supportFormView$$State, String str) {
            super("setNameField", hx5.class);
            this.name = str;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setNameField(this.name);
        }
    }

    public class SetNameFocusCommand extends wd9<SupportFormView> {
        public SetNameFocusCommand(SupportFormView$$State supportFormView$$State) {
            super("setNameFocus", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setNameFocus();
        }
    }

    public class SetScreenInfoCommand extends wd9<SupportFormView> {
        public final ni3 screenInfo;

        public SetScreenInfoCommand(SupportFormView$$State supportFormView$$State, ni3 ni3Var) {
            super("setScreenInfo", k9.class);
            this.screenInfo = ni3Var;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.setScreenInfo(this.screenInfo);
        }
    }

    public class ShowDescriptionErrorCommand extends wd9<SupportFormView> {
        public final boolean isError;

        public ShowDescriptionErrorCommand(SupportFormView$$State supportFormView$$State, boolean z) {
            super("showDescriptionError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.showDescriptionError(this.isError);
        }
    }

    public class ShowEmailErrorCommand extends wd9<SupportFormView> {
        public final boolean isError;

        public ShowEmailErrorCommand(SupportFormView$$State supportFormView$$State, boolean z) {
            super("showEmailError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.showEmailError(this.isError);
        }
    }

    public class ShowErrorCommand extends wd9<SupportFormView> {
        public final boolean isError;

        public ShowErrorCommand(SupportFormView$$State supportFormView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.showError(this.isError);
        }
    }

    public class ShowFailBottomSheetCommand extends wd9<SupportFormView> {
        public final we8 result;

        public ShowFailBottomSheetCommand(SupportFormView$$State supportFormView$$State, we8 we8Var) {
            super("showFailBottomSheet", hx5.class);
            this.result = we8Var;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.showFailBottomSheet(this.result);
        }
    }

    public class ShowLoadingCommand extends wd9<SupportFormView> {
        public final boolean isLoading;

        public ShowLoadingCommand(SupportFormView$$State supportFormView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.showLoading(this.isLoading);
        }
    }

    public class ShowSuccessBottomSheetCommand extends wd9<SupportFormView> {
        public final we8 result;

        public ShowSuccessBottomSheetCommand(SupportFormView$$State supportFormView$$State, we8 we8Var) {
            super("showSuccessBottomSheet", hx5.class);
            this.result = we8Var;
        }

        @Override // defpackage.wd9
        public void apply(SupportFormView supportFormView) {
            supportFormView.showSuccessBottomSheet(this.result);
        }
    }
}

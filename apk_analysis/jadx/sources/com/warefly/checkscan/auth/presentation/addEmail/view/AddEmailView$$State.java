package com.warefly.checkscan.auth.presentation.addEmail.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AddEmailView$$State extends kh5<AddEmailView> implements AddEmailView {
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
            ((AddEmailView) it.next()).openUrl(str);
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
            ((AddEmailView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public void showButtonLoading(boolean z) {
        ShowButtonLoadingCommand showButtonLoadingCommand = new ShowButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonLoadingCommand).b(xd9Var.a, showButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddEmailView) it.next()).showButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonLoadingCommand).a(xd9Var2.a, showButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public void showEmailFormatError(boolean z) {
        ShowEmailFormatErrorCommand showEmailFormatErrorCommand = new ShowEmailFormatErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailFormatErrorCommand).b(xd9Var.a, showEmailFormatErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddEmailView) it.next()).showEmailFormatError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailFormatErrorCommand).a(xd9Var2.a, showEmailFormatErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public void showEmailPlacedError() {
        ShowEmailPlacedErrorCommand showEmailPlacedErrorCommand = new ShowEmailPlacedErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailPlacedErrorCommand).b(xd9Var.a, showEmailPlacedErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddEmailView) it.next()).showEmailPlacedError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailPlacedErrorCommand).a(xd9Var2.a, showEmailPlacedErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public void showEmailSuccess() {
        ShowEmailSuccessCommand showEmailSuccessCommand = new ShowEmailSuccessCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailSuccessCommand).b(xd9Var.a, showEmailSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddEmailView) it.next()).showEmailSuccess();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailSuccessCommand).a(xd9Var2.a, showEmailSuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public void showEmailTimeoutError() {
        ShowEmailTimeoutErrorCommand showEmailTimeoutErrorCommand = new ShowEmailTimeoutErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailTimeoutErrorCommand).b(xd9Var.a, showEmailTimeoutErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddEmailView) it.next()).showEmailTimeoutError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailTimeoutErrorCommand).a(xd9Var2.a, showEmailTimeoutErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public void showEmailUnknownError() {
        ShowEmailUnknownErrorCommand showEmailUnknownErrorCommand = new ShowEmailUnknownErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailUnknownErrorCommand).b(xd9Var.a, showEmailUnknownErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddEmailView) it.next()).showEmailUnknownError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailUnknownErrorCommand).a(xd9Var2.a, showEmailUnknownErrorCommand);
    }

    public class OpenUrlCommand extends wd9<AddEmailView> {
        public final String arg0;

        public OpenUrlCommand(AddEmailView$$State addEmailView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AddEmailView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AddEmailView$$State addEmailView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowButtonLoadingCommand extends wd9<AddEmailView> {
        public final boolean loading;

        public ShowButtonLoadingCommand(AddEmailView$$State addEmailView$$State, boolean z) {
            super("showButtonLoading", k9.class);
            this.loading = z;
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.showButtonLoading(this.loading);
        }
    }

    public class ShowEmailFormatErrorCommand extends wd9<AddEmailView> {
        public final boolean show;

        public ShowEmailFormatErrorCommand(AddEmailView$$State addEmailView$$State, boolean z) {
            super("showEmailFormatError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.showEmailFormatError(this.show);
        }
    }

    public class ShowEmailPlacedErrorCommand extends wd9<AddEmailView> {
        public ShowEmailPlacedErrorCommand(AddEmailView$$State addEmailView$$State) {
            super("showEmailPlacedError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.showEmailPlacedError();
        }
    }

    public class ShowEmailSuccessCommand extends wd9<AddEmailView> {
        public ShowEmailSuccessCommand(AddEmailView$$State addEmailView$$State) {
            super("showEmailSuccess", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.showEmailSuccess();
        }
    }

    public class ShowEmailTimeoutErrorCommand extends wd9<AddEmailView> {
        public ShowEmailTimeoutErrorCommand(AddEmailView$$State addEmailView$$State) {
            super("showEmailTimeoutError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.showEmailTimeoutError();
        }
    }

    public class ShowEmailUnknownErrorCommand extends wd9<AddEmailView> {
        public ShowEmailUnknownErrorCommand(AddEmailView$$State addEmailView$$State) {
            super("showEmailUnknownError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddEmailView addEmailView) {
            addEmailView.showEmailUnknownError();
        }
    }
}

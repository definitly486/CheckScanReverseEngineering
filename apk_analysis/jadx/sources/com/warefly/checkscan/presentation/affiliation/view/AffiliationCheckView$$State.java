package com.warefly.checkscan.presentation.affiliation.view;

import defpackage.bh6;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class AffiliationCheckView$$State extends kh5<AffiliationCheckView> implements AffiliationCheckView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void clearInput() {
        ClearInputCommand clearInputCommand = new ClearInputCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(clearInputCommand).b(xd9Var.a, clearInputCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).clearInput();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(clearInputCommand).a(xd9Var2.a, clearInputCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void enableCheckButton(boolean z) {
        EnableCheckButtonCommand enableCheckButtonCommand = new EnableCheckButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableCheckButtonCommand).b(xd9Var.a, enableCheckButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).enableCheckButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableCheckButtonCommand).a(xd9Var2.a, enableCheckButtonCommand);
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
            ((AffiliationCheckView) it.next()).openUrl(str);
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
            ((AffiliationCheckView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void pasteFromClipboard() {
        PasteFromClipboardCommand pasteFromClipboardCommand = new PasteFromClipboardCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(pasteFromClipboardCommand).b(xd9Var.a, pasteFromClipboardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).pasteFromClipboard();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(pasteFromClipboardCommand).a(xd9Var2.a, pasteFromClipboardCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void setLinkCheckingLoading(boolean z) {
        SetLinkCheckingLoadingCommand setLinkCheckingLoadingCommand = new SetLinkCheckingLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLinkCheckingLoadingCommand).b(xd9Var.a, setLinkCheckingLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).setLinkCheckingLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLinkCheckingLoadingCommand).a(xd9Var2.a, setLinkCheckingLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void setNoError() {
        SetNoErrorCommand setNoErrorCommand = new SetNoErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setNoErrorCommand).b(xd9Var.a, setNoErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).setNoError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setNoErrorCommand).a(xd9Var2.a, setNoErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void showClearButton(boolean z) {
        ShowClearButtonCommand showClearButtonCommand = new ShowClearButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showClearButtonCommand).b(xd9Var.a, showClearButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).showClearButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showClearButtonCommand).a(xd9Var2.a, showClearButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void showHowToCopyDialog() {
        ShowHowToCopyDialogCommand showHowToCopyDialogCommand = new ShowHowToCopyDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showHowToCopyDialogCommand).b(xd9Var.a, showHowToCopyDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).showHowToCopyDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showHowToCopyDialogCommand).a(xd9Var2.a, showHowToCopyDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void showNotFoundError() {
        ShowNotFoundErrorCommand showNotFoundErrorCommand = new ShowNotFoundErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNotFoundErrorCommand).b(xd9Var.a, showNotFoundErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).showNotFoundError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNotFoundErrorCommand).a(xd9Var2.a, showNotFoundErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void showNotValidLinkError() {
        ShowNotValidLinkErrorCommand showNotValidLinkErrorCommand = new ShowNotValidLinkErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNotValidLinkErrorCommand).b(xd9Var.a, showNotValidLinkErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).showNotValidLinkError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNotValidLinkErrorCommand).a(xd9Var2.a, showNotValidLinkErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void showResultDialog(bh6 bh6Var) {
        ShowResultDialogCommand showResultDialogCommand = new ShowResultDialogCommand(this, bh6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showResultDialogCommand).b(xd9Var.a, showResultDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).showResultDialog(bh6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showResultDialogCommand).a(xd9Var2.a, showResultDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public void showUnexpectedError() {
        ShowUnexpectedErrorCommand showUnexpectedErrorCommand = new ShowUnexpectedErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnexpectedErrorCommand).b(xd9Var.a, showUnexpectedErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AffiliationCheckView) it.next()).showUnexpectedError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnexpectedErrorCommand).a(xd9Var2.a, showUnexpectedErrorCommand);
    }

    public class ClearInputCommand extends wd9<AffiliationCheckView> {
        public ClearInputCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("clearInput", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.clearInput();
        }
    }

    public class EnableCheckButtonCommand extends wd9<AffiliationCheckView> {
        public final boolean isEnable;

        public EnableCheckButtonCommand(AffiliationCheckView$$State affiliationCheckView$$State, boolean z) {
            super("enableCheckButton", k9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.enableCheckButton(this.isEnable);
        }
    }

    public class OpenUrlCommand extends wd9<AffiliationCheckView> {
        public final String arg0;

        public OpenUrlCommand(AffiliationCheckView$$State affiliationCheckView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AffiliationCheckView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AffiliationCheckView$$State affiliationCheckView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.openUrlInCustomTab(this.arg0);
        }
    }

    public class PasteFromClipboardCommand extends wd9<AffiliationCheckView> {
        public PasteFromClipboardCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("pasteFromClipboard", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.pasteFromClipboard();
        }
    }

    public class SetLinkCheckingLoadingCommand extends wd9<AffiliationCheckView> {
        public final boolean isLoading;

        public SetLinkCheckingLoadingCommand(AffiliationCheckView$$State affiliationCheckView$$State, boolean z) {
            super("setLinkCheckingLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.setLinkCheckingLoading(this.isLoading);
        }
    }

    public class SetNoErrorCommand extends wd9<AffiliationCheckView> {
        public SetNoErrorCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("setNoError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.setNoError();
        }
    }

    public class ShowClearButtonCommand extends wd9<AffiliationCheckView> {
        public final boolean isShow;

        public ShowClearButtonCommand(AffiliationCheckView$$State affiliationCheckView$$State, boolean z) {
            super("showClearButton", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.showClearButton(this.isShow);
        }
    }

    public class ShowHowToCopyDialogCommand extends wd9<AffiliationCheckView> {
        public ShowHowToCopyDialogCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("showHowToCopyDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.showHowToCopyDialog();
        }
    }

    public class ShowNotFoundErrorCommand extends wd9<AffiliationCheckView> {
        public ShowNotFoundErrorCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("showNotFoundError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.showNotFoundError();
        }
    }

    public class ShowNotValidLinkErrorCommand extends wd9<AffiliationCheckView> {
        public ShowNotValidLinkErrorCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("showNotValidLinkError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.showNotValidLinkError();
        }
    }

    public class ShowResultDialogCommand extends wd9<AffiliationCheckView> {
        public final bh6 result;

        public ShowResultDialogCommand(AffiliationCheckView$$State affiliationCheckView$$State, bh6 bh6Var) {
            super("showResultDialog", hx5.class);
            this.result = bh6Var;
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.showResultDialog(this.result);
        }
    }

    public class ShowUnexpectedErrorCommand extends wd9<AffiliationCheckView> {
        public ShowUnexpectedErrorCommand(AffiliationCheckView$$State affiliationCheckView$$State) {
            super("showUnexpectedError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AffiliationCheckView affiliationCheckView) {
            affiliationCheckView.showUnexpectedError();
        }
    }
}

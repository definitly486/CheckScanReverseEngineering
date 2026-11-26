package com.warefly.checkscan.presentation.cheques.exportCheques.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ChequesExportView$$State extends kh5<ChequesExportView> implements ChequesExportView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void assignUserEmail(String str) {
        AssignUserEmailCommand assignUserEmailCommand = new AssignUserEmailCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(assignUserEmailCommand).b(xd9Var.a, assignUserEmailCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).assignUserEmail(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(assignUserEmailCommand).a(xd9Var2.a, assignUserEmailCommand);
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
            ((ChequesExportView) it.next()).openUrl(str);
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
            ((ChequesExportView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void setDateRangeText(String str) {
        SetDateRangeTextCommand setDateRangeTextCommand = new SetDateRangeTextCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDateRangeTextCommand).b(xd9Var.a, setDateRangeTextCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).setDateRangeText(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDateRangeTextCommand).a(xd9Var2.a, setDateRangeTextCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void showDoneDialog() {
        ShowDoneDialogCommand showDoneDialogCommand = new ShowDoneDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDoneDialogCommand).b(xd9Var.a, showDoneDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).showDoneDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDoneDialogCommand).a(xd9Var2.a, showDoneDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void showEnableButton(boolean z) {
        ShowEnableButtonCommand showEnableButtonCommand = new ShowEnableButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEnableButtonCommand).b(xd9Var.a, showEnableButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).showEnableButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEnableButtonCommand).a(xd9Var2.a, showEnableButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void showFailDialog() {
        ShowFailDialogCommand showFailDialogCommand = new ShowFailDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFailDialogCommand).b(xd9Var.a, showFailDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).showFailDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFailDialogCommand).a(xd9Var2.a, showFailDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void showInvalidDateError(boolean z) {
        ShowInvalidDateErrorCommand showInvalidDateErrorCommand = new ShowInvalidDateErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidDateErrorCommand).b(xd9Var.a, showInvalidDateErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).showInvalidDateError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidDateErrorCommand).a(xd9Var2.a, showInvalidDateErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public void showInvalidEmailError(boolean z) {
        ShowInvalidEmailErrorCommand showInvalidEmailErrorCommand = new ShowInvalidEmailErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInvalidEmailErrorCommand).b(xd9Var.a, showInvalidEmailErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesExportView) it.next()).showInvalidEmailError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInvalidEmailErrorCommand).a(xd9Var2.a, showInvalidEmailErrorCommand);
    }

    public class AssignUserEmailCommand extends wd9<ChequesExportView> {
        public final String email;

        public AssignUserEmailCommand(ChequesExportView$$State chequesExportView$$State, String str) {
            super("assignUserEmail", k9.class);
            this.email = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.assignUserEmail(this.email);
        }
    }

    public class OpenUrlCommand extends wd9<ChequesExportView> {
        public final String arg0;

        public OpenUrlCommand(ChequesExportView$$State chequesExportView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ChequesExportView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ChequesExportView$$State chequesExportView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetDateRangeTextCommand extends wd9<ChequesExportView> {
        public final String dateRange;

        public SetDateRangeTextCommand(ChequesExportView$$State chequesExportView$$State, String str) {
            super("setDateRangeText", k9.class);
            this.dateRange = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.setDateRangeText(this.dateRange);
        }
    }

    public class ShowDoneDialogCommand extends wd9<ChequesExportView> {
        public ShowDoneDialogCommand(ChequesExportView$$State chequesExportView$$State) {
            super("showDoneDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.showDoneDialog();
        }
    }

    public class ShowEnableButtonCommand extends wd9<ChequesExportView> {
        public final boolean enable;

        public ShowEnableButtonCommand(ChequesExportView$$State chequesExportView$$State, boolean z) {
            super("showEnableButton", k9.class);
            this.enable = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.showEnableButton(this.enable);
        }
    }

    public class ShowFailDialogCommand extends wd9<ChequesExportView> {
        public ShowFailDialogCommand(ChequesExportView$$State chequesExportView$$State) {
            super("showFailDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.showFailDialog();
        }
    }

    public class ShowInvalidDateErrorCommand extends wd9<ChequesExportView> {
        public final boolean show;

        public ShowInvalidDateErrorCommand(ChequesExportView$$State chequesExportView$$State, boolean z) {
            super("showInvalidDateError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.showInvalidDateError(this.show);
        }
    }

    public class ShowInvalidEmailErrorCommand extends wd9<ChequesExportView> {
        public final boolean show;

        public ShowInvalidEmailErrorCommand(ChequesExportView$$State chequesExportView$$State, boolean z) {
            super("showInvalidEmailError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesExportView chequesExportView) {
            chequesExportView.showInvalidEmailError(this.show);
        }
    }
}

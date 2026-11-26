package com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view;

import defpackage.dy0;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class LightDatePickerView$$State extends kh5<LightDatePickerView> implements LightDatePickerView {

    public class ShowButtonEnabled1Command extends wd9<LightDatePickerView> {
        public final dy0 date;
        public final boolean enabled;

        public ShowButtonEnabled1Command(LightDatePickerView$$State lightDatePickerView$$State, boolean z, dy0 dy0Var) {
            super("showButtonEnabled", k9.class);
            this.enabled = z;
            this.date = dy0Var;
        }

        @Override // defpackage.wd9
        public void apply(LightDatePickerView lightDatePickerView) {
            lightDatePickerView.showButtonEnabled(this.enabled, this.date);
        }
    }

    public class ShowButtonEnabledCommand extends wd9<LightDatePickerView> {
        public final dy0 dateFrom;
        public final dy0 dateTo;
        public final boolean enabled;

        public ShowButtonEnabledCommand(LightDatePickerView$$State lightDatePickerView$$State, boolean z, dy0 dy0Var, dy0 dy0Var2) {
            super("showButtonEnabled", k9.class);
            this.enabled = z;
            this.dateFrom = dy0Var;
            this.dateTo = dy0Var2;
        }

        @Override // defpackage.wd9
        public void apply(LightDatePickerView lightDatePickerView) {
            lightDatePickerView.showButtonEnabled(this.enabled, this.dateFrom, this.dateTo);
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
            ((LightDatePickerView) it.next()).openUrl(str);
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
            ((LightDatePickerView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView
    public void setTitle() {
        SetTitleCommand setTitleCommand = new SetTitleCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTitleCommand).b(xd9Var.a, setTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LightDatePickerView) it.next()).setTitle();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTitleCommand).a(xd9Var2.a, setTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView
    public void showButtonEnabled(boolean z, dy0 dy0Var, dy0 dy0Var2) {
        ShowButtonEnabledCommand showButtonEnabledCommand = new ShowButtonEnabledCommand(this, z, dy0Var, dy0Var2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonEnabledCommand).b(xd9Var.a, showButtonEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LightDatePickerView) it.next()).showButtonEnabled(z, dy0Var, dy0Var2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonEnabledCommand).a(xd9Var2.a, showButtonEnabledCommand);
    }

    public class OpenUrlCommand extends wd9<LightDatePickerView> {
        public final String arg0;

        public OpenUrlCommand(LightDatePickerView$$State lightDatePickerView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LightDatePickerView lightDatePickerView) {
            lightDatePickerView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<LightDatePickerView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(LightDatePickerView$$State lightDatePickerView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LightDatePickerView lightDatePickerView) {
            lightDatePickerView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetTitleCommand extends wd9<LightDatePickerView> {
        public SetTitleCommand(LightDatePickerView$$State lightDatePickerView$$State) {
            super("setTitle", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(LightDatePickerView lightDatePickerView) {
            lightDatePickerView.setTitle();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView
    public void showButtonEnabled(boolean z, dy0 dy0Var) {
        ShowButtonEnabled1Command showButtonEnabled1Command = new ShowButtonEnabled1Command(this, z, dy0Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonEnabled1Command).b(xd9Var.a, showButtonEnabled1Command);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LightDatePickerView) it.next()).showButtonEnabled(z, dy0Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonEnabled1Command).a(xd9Var2.a, showButtonEnabled1Command);
    }
}

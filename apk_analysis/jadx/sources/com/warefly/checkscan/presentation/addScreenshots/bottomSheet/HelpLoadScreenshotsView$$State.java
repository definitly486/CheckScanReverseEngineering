package com.warefly.checkscan.presentation.addScreenshots.bottomSheet;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class HelpLoadScreenshotsView$$State extends kh5<HelpLoadScreenshotsView> implements HelpLoadScreenshotsView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotsView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((HelpLoadScreenshotsView) it.next()).dismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDialogCommand).a(xd9Var2.a, dismissDialogCommand);
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
            ((HelpLoadScreenshotsView) it.next()).openUrl(str);
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
            ((HelpLoadScreenshotsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotsView
    public void showData(String str) {
        ShowDataCommand showDataCommand = new ShowDataCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDataCommand).b(xd9Var.a, showDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((HelpLoadScreenshotsView) it.next()).showData(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDataCommand).a(xd9Var2.a, showDataCommand);
    }

    public class DismissDialogCommand extends wd9<HelpLoadScreenshotsView> {
        public DismissDialogCommand(HelpLoadScreenshotsView$$State helpLoadScreenshotsView$$State) {
            super("dismissDialog", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(HelpLoadScreenshotsView helpLoadScreenshotsView) {
            helpLoadScreenshotsView.dismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<HelpLoadScreenshotsView> {
        public final String arg0;

        public OpenUrlCommand(HelpLoadScreenshotsView$$State helpLoadScreenshotsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(HelpLoadScreenshotsView helpLoadScreenshotsView) {
            helpLoadScreenshotsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<HelpLoadScreenshotsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(HelpLoadScreenshotsView$$State helpLoadScreenshotsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(HelpLoadScreenshotsView helpLoadScreenshotsView) {
            helpLoadScreenshotsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowDataCommand extends wd9<HelpLoadScreenshotsView> {
        public final String data;

        public ShowDataCommand(HelpLoadScreenshotsView$$State helpLoadScreenshotsView$$State, String str) {
            super("showData", k9.class);
            this.data = str;
        }

        @Override // defpackage.wd9
        public void apply(HelpLoadScreenshotsView helpLoadScreenshotsView) {
            helpLoadScreenshotsView.showData(this.data);
        }
    }
}

package com.warefly.checkscan.presentation.stock.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class AgreementView$$State extends kh5<AgreementView> implements AgreementView {
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
            ((AgreementView) it.next()).openUrl(str);
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
            ((AgreementView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.stock.view.AgreementView
    public void showAgreement() {
        ShowAgreementCommand showAgreementCommand = new ShowAgreementCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAgreementCommand).b(xd9Var.a, showAgreementCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AgreementView) it.next()).showAgreement();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAgreementCommand).a(xd9Var2.a, showAgreementCommand);
    }

    public class OpenUrlCommand extends wd9<AgreementView> {
        public final String arg0;

        public OpenUrlCommand(AgreementView$$State agreementView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AgreementView agreementView) {
            agreementView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AgreementView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AgreementView$$State agreementView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AgreementView agreementView) {
            agreementView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAgreementCommand extends wd9<AgreementView> {
        public ShowAgreementCommand(AgreementView$$State agreementView$$State) {
            super("showAgreement", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AgreementView agreementView) {
            agreementView.showAgreement();
        }
    }
}

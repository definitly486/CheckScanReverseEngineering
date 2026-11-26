package com.warefly.checkscan.presentation.update.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class UpdateView$$State extends kh5<UpdateView> implements UpdateView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.update.presenter.UpdateView
    public void openFeedback() {
        OpenFeedbackCommand openFeedbackCommand = new OpenFeedbackCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openFeedbackCommand).b(xd9Var.a, openFeedbackCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UpdateView) it.next()).openFeedback();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openFeedbackCommand).a(xd9Var2.a, openFeedbackCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.update.presenter.UpdateView
    public void openMarketUrl() {
        OpenMarketUrlCommand openMarketUrlCommand = new OpenMarketUrlCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openMarketUrlCommand).b(xd9Var.a, openMarketUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UpdateView) it.next()).openMarketUrl();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openMarketUrlCommand).a(xd9Var2.a, openMarketUrlCommand);
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
            ((UpdateView) it.next()).openUrl(str);
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
            ((UpdateView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    public class OpenFeedbackCommand extends wd9<UpdateView> {
        public OpenFeedbackCommand(UpdateView$$State updateView$$State) {
            super("openFeedback", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(UpdateView updateView) {
            updateView.openFeedback();
        }
    }

    public class OpenMarketUrlCommand extends wd9<UpdateView> {
        public OpenMarketUrlCommand(UpdateView$$State updateView$$State) {
            super("openMarketUrl", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(UpdateView updateView) {
            updateView.openMarketUrl();
        }
    }

    public class OpenUrlCommand extends wd9<UpdateView> {
        public final String arg0;

        public OpenUrlCommand(UpdateView$$State updateView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(UpdateView updateView) {
            updateView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<UpdateView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(UpdateView$$State updateView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(UpdateView updateView) {
            updateView.openUrlInCustomTab(this.arg0);
        }
    }
}

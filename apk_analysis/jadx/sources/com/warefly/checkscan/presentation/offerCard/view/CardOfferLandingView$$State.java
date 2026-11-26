package com.warefly.checkscan.presentation.offerCard.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.nt5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class CardOfferLandingView$$State extends kh5<CardOfferLandingView> implements CardOfferLandingView {
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
            ((CardOfferLandingView) it.next()).openUrl(str);
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
            ((CardOfferLandingView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingView
    public void showData(nt5 nt5Var) {
        ShowDataCommand showDataCommand = new ShowDataCommand(this, nt5Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDataCommand).b(xd9Var.a, showDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CardOfferLandingView) it.next()).showData(nt5Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDataCommand).a(xd9Var2.a, showDataCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingView
    public void showSomeError() {
        ShowSomeErrorCommand showSomeErrorCommand = new ShowSomeErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSomeErrorCommand).b(xd9Var.a, showSomeErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CardOfferLandingView) it.next()).showSomeError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSomeErrorCommand).a(xd9Var2.a, showSomeErrorCommand);
    }

    public class OpenUrlCommand extends wd9<CardOfferLandingView> {
        public final String arg0;

        public OpenUrlCommand(CardOfferLandingView$$State cardOfferLandingView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CardOfferLandingView cardOfferLandingView) {
            cardOfferLandingView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CardOfferLandingView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CardOfferLandingView$$State cardOfferLandingView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CardOfferLandingView cardOfferLandingView) {
            cardOfferLandingView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowDataCommand extends wd9<CardOfferLandingView> {
        public final nt5 data;

        public ShowDataCommand(CardOfferLandingView$$State cardOfferLandingView$$State, nt5 nt5Var) {
            super("showData", i9.class);
            this.data = nt5Var;
        }

        @Override // defpackage.wd9
        public void apply(CardOfferLandingView cardOfferLandingView) {
            cardOfferLandingView.showData(this.data);
        }
    }

    public class ShowSomeErrorCommand extends wd9<CardOfferLandingView> {
        public ShowSomeErrorCommand(CardOfferLandingView$$State cardOfferLandingView$$State) {
            super("showSomeError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CardOfferLandingView cardOfferLandingView) {
            cardOfferLandingView.showSomeError();
        }
    }
}

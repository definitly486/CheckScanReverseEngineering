package com.warefly.checkscan.presentation.offerLanding.landing.view;

import defpackage.hu5;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class OfferLandingView$$State extends kh5<OfferLandingView> implements OfferLandingView {
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
            ((OfferLandingView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public void openUrlCustomTab(String str) {
        OpenUrlCustomTabCommand openUrlCustomTabCommand = new OpenUrlCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCustomTabCommand).b(xd9Var.a, openUrlCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OfferLandingView) it.next()).openUrlCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCustomTabCommand).a(xd9Var2.a, openUrlCustomTabCommand);
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
            ((OfferLandingView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public void showButtonLoading(boolean z) {
        ShowButtonLoadingCommand showButtonLoadingCommand = new ShowButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonLoadingCommand).b(xd9Var.a, showButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OfferLandingView) it.next()).showButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonLoadingCommand).a(xd9Var2.a, showButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public void showData(hu5 hu5Var) {
        ShowDataCommand showDataCommand = new ShowDataCommand(this, hu5Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDataCommand).b(xd9Var.a, showDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OfferLandingView) it.next()).showData(hu5Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDataCommand).a(xd9Var2.a, showDataCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public void showLandingLoadingError() {
        ShowLandingLoadingErrorCommand showLandingLoadingErrorCommand = new ShowLandingLoadingErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLandingLoadingErrorCommand).b(xd9Var.a, showLandingLoadingErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OfferLandingView) it.next()).showLandingLoadingError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLandingLoadingErrorCommand).a(xd9Var2.a, showLandingLoadingErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public void showLinkLoadingError() {
        ShowLinkLoadingErrorCommand showLinkLoadingErrorCommand = new ShowLinkLoadingErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLinkLoadingErrorCommand).b(xd9Var.a, showLinkLoadingErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OfferLandingView) it.next()).showLinkLoadingError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLinkLoadingErrorCommand).a(xd9Var2.a, showLinkLoadingErrorCommand);
    }

    public class OpenUrlCommand extends wd9<OfferLandingView> {
        public final String arg0;

        public OpenUrlCommand(OfferLandingView$$State offerLandingView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.openUrl(this.arg0);
        }
    }

    public class OpenUrlCustomTabCommand extends wd9<OfferLandingView> {
        public final String url;

        public OpenUrlCustomTabCommand(OfferLandingView$$State offerLandingView$$State, String str) {
            super("openUrlCustomTab", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.openUrlCustomTab(this.url);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OfferLandingView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OfferLandingView$$State offerLandingView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowButtonLoadingCommand extends wd9<OfferLandingView> {
        public final boolean isLoading;

        public ShowButtonLoadingCommand(OfferLandingView$$State offerLandingView$$State, boolean z) {
            super("showButtonLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.showButtonLoading(this.isLoading);
        }
    }

    public class ShowDataCommand extends wd9<OfferLandingView> {
        public final hu5 data;

        public ShowDataCommand(OfferLandingView$$State offerLandingView$$State, hu5 hu5Var) {
            super("showData", i9.class);
            this.data = hu5Var;
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.showData(this.data);
        }
    }

    public class ShowLandingLoadingErrorCommand extends wd9<OfferLandingView> {
        public ShowLandingLoadingErrorCommand(OfferLandingView$$State offerLandingView$$State) {
            super("showLandingLoadingError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.showLandingLoadingError();
        }
    }

    public class ShowLinkLoadingErrorCommand extends wd9<OfferLandingView> {
        public ShowLinkLoadingErrorCommand(OfferLandingView$$State offerLandingView$$State) {
            super("showLinkLoadingError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(OfferLandingView offerLandingView) {
            offerLandingView.showLinkLoadingError();
        }
    }
}

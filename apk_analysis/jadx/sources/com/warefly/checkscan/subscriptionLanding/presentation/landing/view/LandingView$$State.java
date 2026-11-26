package com.warefly.checkscan.subscriptionLanding.presentation.landing.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LandingView$$State extends kh5<LandingView> implements LandingView {
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
            ((LandingView) it.next()).openUrl(str);
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
            ((LandingView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    public class OpenUrlCommand extends wd9<LandingView> {
        public final String arg0;

        public OpenUrlCommand(LandingView$$State landingView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<LandingView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(LandingView$$State landingView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<LandingView> {
        public final List<? extends pz3> items;

        public ShowContentCommand(LandingView$$State landingView$$State, List<? extends pz3> list) {
            super("showContent", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showContent(this.items);
        }
    }
}

package com.warefly.checkscan.presentation.webview;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class WebViewReplenishment$$State extends kh5<WebViewReplenishment> implements WebViewReplenishment {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.webview.WebViewReplenishment
    public void loadReplenishment(String str) {
        LoadReplenishmentCommand loadReplenishmentCommand = new LoadReplenishmentCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(loadReplenishmentCommand).b(xd9Var.a, loadReplenishmentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WebViewReplenishment) it.next()).loadReplenishment(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(loadReplenishmentCommand).a(xd9Var2.a, loadReplenishmentCommand);
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
            ((WebViewReplenishment) it.next()).openUrl(str);
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
            ((WebViewReplenishment) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.webview.WebViewReplenishment
    public void showSomeError() {
        ShowSomeErrorCommand showSomeErrorCommand = new ShowSomeErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSomeErrorCommand).b(xd9Var.a, showSomeErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WebViewReplenishment) it.next()).showSomeError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSomeErrorCommand).a(xd9Var2.a, showSomeErrorCommand);
    }

    public class LoadReplenishmentCommand extends wd9<WebViewReplenishment> {
        public final String url;

        public LoadReplenishmentCommand(WebViewReplenishment$$State webViewReplenishment$$State, String str) {
            super("loadReplenishment", k9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewReplenishment webViewReplenishment) {
            webViewReplenishment.loadReplenishment(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<WebViewReplenishment> {
        public final String arg0;

        public OpenUrlCommand(WebViewReplenishment$$State webViewReplenishment$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewReplenishment webViewReplenishment) {
            webViewReplenishment.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<WebViewReplenishment> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(WebViewReplenishment$$State webViewReplenishment$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewReplenishment webViewReplenishment) {
            webViewReplenishment.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowSomeErrorCommand extends wd9<WebViewReplenishment> {
        public ShowSomeErrorCommand(WebViewReplenishment$$State webViewReplenishment$$State) {
            super("showSomeError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(WebViewReplenishment webViewReplenishment) {
            webViewReplenishment.showSomeError();
        }
    }
}

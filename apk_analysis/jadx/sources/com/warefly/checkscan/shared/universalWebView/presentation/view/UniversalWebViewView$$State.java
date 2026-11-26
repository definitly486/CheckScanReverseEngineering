package com.warefly.checkscan.shared.universalWebView.presentation.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class UniversalWebViewView$$State extends kh5<UniversalWebViewView> implements UniversalWebViewView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void goBackInHistory() {
        GoBackInHistoryCommand goBackInHistoryCommand = new GoBackInHistoryCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(goBackInHistoryCommand).b(xd9Var.a, goBackInHistoryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).goBackInHistory();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(goBackInHistoryCommand).a(xd9Var2.a, goBackInHistoryCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void loadUrl(String str) {
        LoadUrlCommand loadUrlCommand = new LoadUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(loadUrlCommand).b(xd9Var.a, loadUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).loadUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(loadUrlCommand).a(xd9Var2.a, loadUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void openInExternalApp(String str) {
        OpenInExternalAppCommand openInExternalAppCommand = new OpenInExternalAppCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openInExternalAppCommand).b(xd9Var.a, openInExternalAppCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).openInExternalApp(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openInExternalAppCommand).a(xd9Var2.a, openInExternalAppCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void openIntentScheme(String str) {
        OpenIntentSchemeCommand openIntentSchemeCommand = new OpenIntentSchemeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openIntentSchemeCommand).b(xd9Var.a, openIntentSchemeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).openIntentScheme(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openIntentSchemeCommand).a(xd9Var2.a, openIntentSchemeCommand);
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
            ((UniversalWebViewView) it.next()).openUrl(str);
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
            ((UniversalWebViewView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void showTitle(String str) {
        ShowTitleCommand showTitleCommand = new ShowTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTitleCommand).b(xd9Var.a, showTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).showTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTitleCommand).a(xd9Var2.a, showTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public void stopRefreshing() {
        StopRefreshingCommand stopRefreshingCommand = new StopRefreshingCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(stopRefreshingCommand).b(xd9Var.a, stopRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((UniversalWebViewView) it.next()).stopRefreshing();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(stopRefreshingCommand).a(xd9Var2.a, stopRefreshingCommand);
    }

    public class GoBackInHistoryCommand extends wd9<UniversalWebViewView> {
        public GoBackInHistoryCommand(UniversalWebViewView$$State universalWebViewView$$State) {
            super("goBackInHistory", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.goBackInHistory();
        }
    }

    public class LoadUrlCommand extends wd9<UniversalWebViewView> {
        public final String url;

        public LoadUrlCommand(UniversalWebViewView$$State universalWebViewView$$State, String str) {
            super("loadUrl", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.loadUrl(this.url);
        }
    }

    public class OpenInExternalAppCommand extends wd9<UniversalWebViewView> {
        public final String url;

        public OpenInExternalAppCommand(UniversalWebViewView$$State universalWebViewView$$State, String str) {
            super("openInExternalApp", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.openInExternalApp(this.url);
        }
    }

    public class OpenIntentSchemeCommand extends wd9<UniversalWebViewView> {
        public final String url;

        public OpenIntentSchemeCommand(UniversalWebViewView$$State universalWebViewView$$State, String str) {
            super("openIntentScheme", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.openIntentScheme(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<UniversalWebViewView> {
        public final String arg0;

        public OpenUrlCommand(UniversalWebViewView$$State universalWebViewView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<UniversalWebViewView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(UniversalWebViewView$$State universalWebViewView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowErrorCommand extends wd9<UniversalWebViewView> {
        public final boolean isShow;

        public ShowErrorCommand(UniversalWebViewView$$State universalWebViewView$$State, boolean z) {
            super("showError", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.showError(this.isShow);
        }
    }

    public class ShowLoadingCommand extends wd9<UniversalWebViewView> {
        public final boolean isShow;

        public ShowLoadingCommand(UniversalWebViewView$$State universalWebViewView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.showLoading(this.isShow);
        }
    }

    public class ShowTitleCommand extends wd9<UniversalWebViewView> {
        public final String title;

        public ShowTitleCommand(UniversalWebViewView$$State universalWebViewView$$State, String str) {
            super("showTitle", i9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.showTitle(this.title);
        }
    }

    public class StopRefreshingCommand extends wd9<UniversalWebViewView> {
        public StopRefreshingCommand(UniversalWebViewView$$State universalWebViewView$$State) {
            super("stopRefreshing", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(UniversalWebViewView universalWebViewView) {
            universalWebViewView.stopRefreshing();
        }
    }
}

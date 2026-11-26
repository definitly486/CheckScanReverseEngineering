package com.warefly.checkscan.presentation.electrocheque.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class WebViewFragmentView$$State extends kh5<WebViewFragmentView> implements WebViewFragmentView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public void loadUrl(String str) {
        LoadUrlCommand loadUrlCommand = new LoadUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(loadUrlCommand).b(xd9Var.a, loadUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WebViewFragmentView) it.next()).loadUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(loadUrlCommand).a(xd9Var2.a, loadUrlCommand);
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
            ((WebViewFragmentView) it.next()).openUrl(str);
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
            ((WebViewFragmentView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public void showToastMessage(String str) {
        ShowToastMessageCommand showToastMessageCommand = new ShowToastMessageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToastMessageCommand).b(xd9Var.a, showToastMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WebViewFragmentView) it.next()).showToastMessage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToastMessageCommand).a(xd9Var2.a, showToastMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public void workWithScript() {
        WorkWithScriptCommand workWithScriptCommand = new WorkWithScriptCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(workWithScriptCommand).b(xd9Var.a, workWithScriptCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WebViewFragmentView) it.next()).workWithScript();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(workWithScriptCommand).a(xd9Var2.a, workWithScriptCommand);
    }

    public class LoadUrlCommand extends wd9<WebViewFragmentView> {
        public final String url;

        public LoadUrlCommand(WebViewFragmentView$$State webViewFragmentView$$State, String str) {
            super("loadUrl", k9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewFragmentView webViewFragmentView) {
            webViewFragmentView.loadUrl(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<WebViewFragmentView> {
        public final String arg0;

        public OpenUrlCommand(WebViewFragmentView$$State webViewFragmentView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewFragmentView webViewFragmentView) {
            webViewFragmentView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<WebViewFragmentView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(WebViewFragmentView$$State webViewFragmentView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewFragmentView webViewFragmentView) {
            webViewFragmentView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowToastMessage1Command extends wd9<WebViewFragmentView> {
        public final int message;

        public ShowToastMessage1Command(WebViewFragmentView$$State webViewFragmentView$$State, int i) {
            super("showToastMessage", k9.class);
            this.message = i;
        }

        @Override // defpackage.wd9
        public void apply(WebViewFragmentView webViewFragmentView) {
            webViewFragmentView.showToastMessage(this.message);
        }
    }

    public class ShowToastMessageCommand extends wd9<WebViewFragmentView> {
        public final String message;

        public ShowToastMessageCommand(WebViewFragmentView$$State webViewFragmentView$$State, String str) {
            super("showToastMessage", k9.class);
            this.message = str;
        }

        @Override // defpackage.wd9
        public void apply(WebViewFragmentView webViewFragmentView) {
            webViewFragmentView.showToastMessage(this.message);
        }
    }

    public class WorkWithScriptCommand extends wd9<WebViewFragmentView> {
        public WorkWithScriptCommand(WebViewFragmentView$$State webViewFragmentView$$State) {
            super("workWithScript", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(WebViewFragmentView webViewFragmentView) {
            webViewFragmentView.workWithScript();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public void showToastMessage(int i) {
        ShowToastMessage1Command showToastMessage1Command = new ShowToastMessage1Command(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToastMessage1Command).b(xd9Var.a, showToastMessage1Command);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((WebViewFragmentView) it.next()).showToastMessage(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToastMessage1Command).a(xd9Var2.a, showToastMessage1Command);
    }
}

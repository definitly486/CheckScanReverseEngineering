package com.warefly.checkscan.presentation.brandlink.view;

import android.content.Intent;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class BrandlinkView$$State extends kh5<BrandlinkView> implements BrandlinkView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public void loadWebViewLink(String str) {
        LoadWebViewLinkCommand loadWebViewLinkCommand = new LoadWebViewLinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(loadWebViewLinkCommand).b(xd9Var.a, loadWebViewLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BrandlinkView) it.next()).loadWebViewLink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(loadWebViewLinkCommand).a(xd9Var2.a, loadWebViewLinkCommand);
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
            ((BrandlinkView) it.next()).openUrl(str);
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
            ((BrandlinkView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public void sentFeedbackOnTelegram(Intent intent) {
        SentFeedbackOnTelegramCommand sentFeedbackOnTelegramCommand = new SentFeedbackOnTelegramCommand(this, intent);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(sentFeedbackOnTelegramCommand).b(xd9Var.a, sentFeedbackOnTelegramCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BrandlinkView) it.next()).sentFeedbackOnTelegram(intent);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(sentFeedbackOnTelegramCommand).a(xd9Var2.a, sentFeedbackOnTelegramCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public void setAnonPlaceholder(String str) {
        SetAnonPlaceholderCommand setAnonPlaceholderCommand = new SetAnonPlaceholderCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setAnonPlaceholderCommand).b(xd9Var.a, setAnonPlaceholderCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BrandlinkView) it.next()).setAnonPlaceholder(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setAnonPlaceholderCommand).a(xd9Var2.a, setAnonPlaceholderCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public void showError() {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BrandlinkView) it.next()).showError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    public class LoadWebViewLinkCommand extends wd9<BrandlinkView> {
        public final String url;

        public LoadWebViewLinkCommand(BrandlinkView$$State brandlinkView$$State, String str) {
            super("loadWebViewLink", k9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BrandlinkView brandlinkView) {
            brandlinkView.loadWebViewLink(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<BrandlinkView> {
        public final String arg0;

        public OpenUrlCommand(BrandlinkView$$State brandlinkView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BrandlinkView brandlinkView) {
            brandlinkView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BrandlinkView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BrandlinkView$$State brandlinkView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BrandlinkView brandlinkView) {
            brandlinkView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SentFeedbackOnTelegramCommand extends wd9<BrandlinkView> {
        public final Intent intent;

        public SentFeedbackOnTelegramCommand(BrandlinkView$$State brandlinkView$$State, Intent intent) {
            super("sentFeedbackOnTelegram", hx5.class);
            this.intent = intent;
        }

        @Override // defpackage.wd9
        public void apply(BrandlinkView brandlinkView) {
            brandlinkView.sentFeedbackOnTelegram(this.intent);
        }
    }

    public class SetAnonPlaceholderCommand extends wd9<BrandlinkView> {
        public final String imageUrl;

        public SetAnonPlaceholderCommand(BrandlinkView$$State brandlinkView$$State, String str) {
            super("setAnonPlaceholder", k9.class);
            this.imageUrl = str;
        }

        @Override // defpackage.wd9
        public void apply(BrandlinkView brandlinkView) {
            brandlinkView.setAnonPlaceholder(this.imageUrl);
        }
    }

    public class ShowErrorCommand extends wd9<BrandlinkView> {
        public ShowErrorCommand(BrandlinkView$$State brandlinkView$$State) {
            super("showError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(BrandlinkView brandlinkView) {
            brandlinkView.showError();
        }
    }
}

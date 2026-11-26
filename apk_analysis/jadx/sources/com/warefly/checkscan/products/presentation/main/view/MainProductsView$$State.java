package com.warefly.checkscan.products.presentation.main.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class MainProductsView$$State extends kh5<MainProductsView> implements MainProductsView {
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
            ((MainProductsView) it.next()).openUrl(str);
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
            ((MainProductsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.main.view.MainProductsView
    public void showPlaceholder(boolean z) {
        ShowPlaceholderCommand showPlaceholderCommand = new ShowPlaceholderCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPlaceholderCommand).b(xd9Var.a, showPlaceholderCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MainProductsView) it.next()).showPlaceholder(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPlaceholderCommand).a(xd9Var2.a, showPlaceholderCommand);
    }

    public class OpenUrlCommand extends wd9<MainProductsView> {
        public final String arg0;

        public OpenUrlCommand(MainProductsView$$State mainProductsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(MainProductsView mainProductsView) {
            mainProductsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<MainProductsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(MainProductsView$$State mainProductsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(MainProductsView mainProductsView) {
            mainProductsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowPlaceholderCommand extends wd9<MainProductsView> {
        public final boolean isShow;

        public ShowPlaceholderCommand(MainProductsView$$State mainProductsView$$State, boolean z) {
            super("showPlaceholder", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(MainProductsView mainProductsView) {
            mainProductsView.showPlaceholder(this.isShow);
        }
    }
}

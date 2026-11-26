package com.warefly.checkscan.products.presentation.products.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ProductsView$$State extends kh5<ProductsView> implements ProductsView {
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
            ((ProductsView) it.next()).openUrl(str);
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
            ((ProductsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductsView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductsView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.products.view.ProductsView
    public void turnOffRefreshing() {
        TurnOffRefreshingCommand turnOffRefreshingCommand = new TurnOffRefreshingCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(turnOffRefreshingCommand).b(xd9Var.a, turnOffRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductsView) it.next()).turnOffRefreshing();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(turnOffRefreshingCommand).a(xd9Var2.a, turnOffRefreshingCommand);
    }

    public class OpenUrlCommand extends wd9<ProductsView> {
        public final String arg0;

        public OpenUrlCommand(ProductsView$$State productsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProductsView productsView) {
            productsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ProductsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ProductsView$$State productsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProductsView productsView) {
            productsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<ProductsView> {
        public final List<? extends pz3> data;

        public ShowContentCommand(ProductsView$$State productsView$$State, List<? extends pz3> list) {
            super("showContent", k9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ProductsView productsView) {
            productsView.showContent(this.data);
        }
    }

    public class ShowErrorCommand extends wd9<ProductsView> {
        public final boolean isError;

        public ShowErrorCommand(ProductsView$$State productsView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(ProductsView productsView) {
            productsView.showError(this.isError);
        }
    }

    public class ShowLoadingCommand extends wd9<ProductsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(ProductsView$$State productsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(ProductsView productsView) {
            productsView.showLoading(this.isLoading);
        }
    }

    public class TurnOffRefreshingCommand extends wd9<ProductsView> {
        public TurnOffRefreshingCommand(ProductsView$$State productsView$$State) {
            super("turnOffRefreshing", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProductsView productsView) {
            productsView.turnOffRefreshing();
        }
    }
}

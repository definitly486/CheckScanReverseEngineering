package com.warefly.checkscan.products.presentation.product.view;

import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ProductView$$State extends kh5<ProductView> implements ProductView {
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
            ((ProductView) it.next()).openUrl(str);
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
            ((ProductView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public void showImage(String str) {
        ShowImageCommand showImageCommand = new ShowImageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showImageCommand).b(xd9Var.a, showImageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductView) it.next()).showImage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showImageCommand).a(xd9Var2.a, showImageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public void showInfoBottomSheet(List<b.a> list) {
        ShowInfoBottomSheetCommand showInfoBottomSheetCommand = new ShowInfoBottomSheetCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoBottomSheetCommand).b(xd9Var.a, showInfoBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductView) it.next()).showInfoBottomSheet(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoBottomSheetCommand).a(xd9Var2.a, showInfoBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProductView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<ProductView> {
        public final String arg0;

        public OpenUrlCommand(ProductView$$State productView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ProductView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ProductView$$State productView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<ProductView> {
        public final List<? extends pz3> data;

        public ShowContentCommand(ProductView$$State productView$$State, List<? extends pz3> list) {
            super("showContent", k9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.showContent(this.data);
        }
    }

    public class ShowErrorCommand extends wd9<ProductView> {
        public final boolean isError;

        public ShowErrorCommand(ProductView$$State productView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.showError(this.isError);
        }
    }

    public class ShowImageCommand extends wd9<ProductView> {
        public final String url;

        public ShowImageCommand(ProductView$$State productView$$State, String str) {
            super("showImage", i9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.showImage(this.url);
        }
    }

    public class ShowInfoBottomSheetCommand extends wd9<ProductView> {
        public final List<b.a> htmlTexts;

        public ShowInfoBottomSheetCommand(ProductView$$State productView$$State, List<b.a> list) {
            super("showInfoBottomSheet", hx5.class);
            this.htmlTexts = list;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.showInfoBottomSheet(this.htmlTexts);
        }
    }

    public class ShowLoadingCommand extends wd9<ProductView> {
        public final boolean isLoading;

        public ShowLoadingCommand(ProductView$$State productView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(ProductView productView) {
            productView.showLoading(this.isLoading);
        }
    }
}

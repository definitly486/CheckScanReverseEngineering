package com.warefly.checkscan.products.presentation.shop.view;

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
public class ShopView$$State extends kh5<ShopView> implements ShopView {

    public class ShowImageCommand extends wd9<ShopView> {
        public final String secondaryUrl;
        public final String url;

        public ShowImageCommand(ShopView$$State shopView$$State, String str, String str2) {
            super("showImage", i9.class);
            this.url = str;
            this.secondaryUrl = str2;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showImage(this.url, this.secondaryUrl);
        }
    }

    public class ShowInfoBottomSheetCommand extends wd9<ShopView> {
        public final String htmlText;
        public final String title;

        public ShowInfoBottomSheetCommand(ShopView$$State shopView$$State, String str, String str2) {
            super("showInfoBottomSheet", hx5.class);
            this.title = str;
            this.htmlText = str2;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showInfoBottomSheet(this.title, this.htmlText);
        }
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
            ((ShopView) it.next()).openUrl(str);
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
            ((ShopView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void setMerchantScrollListener() {
        SetMerchantScrollListenerCommand setMerchantScrollListenerCommand = new SetMerchantScrollListenerCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setMerchantScrollListenerCommand).b(xd9Var.a, setMerchantScrollListenerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).setMerchantScrollListener();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setMerchantScrollListenerCommand).a(xd9Var2.a, setMerchantScrollListenerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).setToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setToolbarTitleCommand).a(xd9Var2.a, setToolbarTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showImage(String str, String str2) {
        ShowImageCommand showImageCommand = new ShowImageCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showImageCommand).b(xd9Var.a, showImageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showImage(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showImageCommand).a(xd9Var2.a, showImageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showInfoBottomSheet(String str, String str2) {
        ShowInfoBottomSheetCommand showInfoBottomSheetCommand = new ShowInfoBottomSheetCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInfoBottomSheetCommand).b(xd9Var.a, showInfoBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showInfoBottomSheet(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInfoBottomSheetCommand).a(xd9Var2.a, showInfoBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showScanButton(boolean z) {
        ShowScanButtonCommand showScanButtonCommand = new ShowScanButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showScanButtonCommand).b(xd9Var.a, showScanButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showScanButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showScanButtonCommand).a(xd9Var2.a, showScanButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public void showToolbarTitle(boolean z) {
        ShowToolbarTitleCommand showToolbarTitleCommand = new ShowToolbarTitleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToolbarTitleCommand).b(xd9Var.a, showToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShopView) it.next()).showToolbarTitle(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToolbarTitleCommand).a(xd9Var2.a, showToolbarTitleCommand);
    }

    public class OpenUrlCommand extends wd9<ShopView> {
        public final String arg0;

        public OpenUrlCommand(ShopView$$State shopView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ShopView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ShopView$$State shopView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetMerchantScrollListenerCommand extends wd9<ShopView> {
        public SetMerchantScrollListenerCommand(ShopView$$State shopView$$State) {
            super("setMerchantScrollListener", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.setMerchantScrollListener();
        }
    }

    public class SetToolbarTitleCommand extends wd9<ShopView> {
        public final String title;

        public SetToolbarTitleCommand(ShopView$$State shopView$$State, String str) {
            super("setToolbarTitle", k9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.setToolbarTitle(this.title);
        }
    }

    public class ShowContentCommand extends wd9<ShopView> {
        public final List<? extends pz3> data;

        public ShowContentCommand(ShopView$$State shopView$$State, List<? extends pz3> list) {
            super("showContent", k9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showContent(this.data);
        }
    }

    public class ShowErrorCommand extends wd9<ShopView> {
        public final boolean isError;

        public ShowErrorCommand(ShopView$$State shopView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showError(this.isError);
        }
    }

    public class ShowLoadingCommand extends wd9<ShopView> {
        public final boolean isLoading;

        public ShowLoadingCommand(ShopView$$State shopView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showLoading(this.isLoading);
        }
    }

    public class ShowScanButtonCommand extends wd9<ShopView> {
        public final boolean show;

        public ShowScanButtonCommand(ShopView$$State shopView$$State, boolean z) {
            super("showScanButton", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showScanButton(this.show);
        }
    }

    public class ShowToolbarTitleCommand extends wd9<ShopView> {
        public final boolean show;

        public ShowToolbarTitleCommand(ShopView$$State shopView$$State, boolean z) {
            super("showToolbarTitle", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ShopView shopView) {
            shopView.showToolbarTitle(this.show);
        }
    }
}

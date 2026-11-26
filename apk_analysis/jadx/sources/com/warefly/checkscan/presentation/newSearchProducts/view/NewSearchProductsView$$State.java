package com.warefly.checkscan.presentation.newSearchProducts.view;

import defpackage.fn5;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NewSearchProductsView$$State extends kh5<NewSearchProductsView> implements NewSearchProductsView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void allProductInChequeLoaded() {
        AllProductInChequeLoadedCommand allProductInChequeLoadedCommand = new AllProductInChequeLoadedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(allProductInChequeLoadedCommand).b(xd9Var.a, allProductInChequeLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).allProductInChequeLoaded();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(allProductInChequeLoadedCommand).a(xd9Var2.a, allProductInChequeLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void hidePopularCategory() {
        HidePopularCategoryCommand hidePopularCategoryCommand = new HidePopularCategoryCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hidePopularCategoryCommand).b(xd9Var.a, hidePopularCategoryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).hidePopularCategory();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hidePopularCategoryCommand).a(xd9Var2.a, hidePopularCategoryCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void hideProducts() {
        HideProductsCommand hideProductsCommand = new HideProductsCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideProductsCommand).b(xd9Var.a, hideProductsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).hideProducts();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hideProductsCommand).a(xd9Var2.a, hideProductsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void hideShops() {
        HideShopsCommand hideShopsCommand = new HideShopsCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideShopsCommand).b(xd9Var.a, hideShopsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).hideShops();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hideShopsCommand).a(xd9Var2.a, hideShopsCommand);
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
            ((NewSearchProductsView) it.next()).openUrl(str);
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
            ((NewSearchProductsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void setItemFromChip(String str) {
        SetItemFromChipCommand setItemFromChipCommand = new SetItemFromChipCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setItemFromChipCommand).b(xd9Var.a, setItemFromChipCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).setItemFromChip(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setItemFromChipCommand).a(xd9Var2.a, setItemFromChipCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void showChips(List<String> list) {
        ShowChipsCommand showChipsCommand = new ShowChipsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChipsCommand).b(xd9Var.a, showChipsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).showChips(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChipsCommand).a(xd9Var2.a, showChipsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void showProducts(List<? extends fn5> list) {
        ShowProductsCommand showProductsCommand = new ShowProductsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showProductsCommand).b(xd9Var.a, showProductsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).showProducts(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showProductsCommand).a(xd9Var2.a, showProductsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView
    public void showShopInCheques(List<? extends fn5> list) {
        ShowShopInChequesCommand showShopInChequesCommand = new ShowShopInChequesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShopInChequesCommand).b(xd9Var.a, showShopInChequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewSearchProductsView) it.next()).showShopInCheques(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShopInChequesCommand).a(xd9Var2.a, showShopInChequesCommand);
    }

    public class AllProductInChequeLoadedCommand extends wd9<NewSearchProductsView> {
        public AllProductInChequeLoadedCommand(NewSearchProductsView$$State newSearchProductsView$$State) {
            super("allProductInChequeLoaded", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.allProductInChequeLoaded();
        }
    }

    public class HidePopularCategoryCommand extends wd9<NewSearchProductsView> {
        public HidePopularCategoryCommand(NewSearchProductsView$$State newSearchProductsView$$State) {
            super("hidePopularCategory", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.hidePopularCategory();
        }
    }

    public class HideProductsCommand extends wd9<NewSearchProductsView> {
        public HideProductsCommand(NewSearchProductsView$$State newSearchProductsView$$State) {
            super("hideProducts", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.hideProducts();
        }
    }

    public class HideShopsCommand extends wd9<NewSearchProductsView> {
        public HideShopsCommand(NewSearchProductsView$$State newSearchProductsView$$State) {
            super("hideShops", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.hideShops();
        }
    }

    public class OpenUrlCommand extends wd9<NewSearchProductsView> {
        public final String arg0;

        public OpenUrlCommand(NewSearchProductsView$$State newSearchProductsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<NewSearchProductsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(NewSearchProductsView$$State newSearchProductsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetItemFromChipCommand extends wd9<NewSearchProductsView> {
        public final String item;

        public SetItemFromChipCommand(NewSearchProductsView$$State newSearchProductsView$$State, String str) {
            super("setItemFromChip", hx5.class);
            this.item = str;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.setItemFromChip(this.item);
        }
    }

    public class ShowChipsCommand extends wd9<NewSearchProductsView> {
        public final List<String> ships;

        public ShowChipsCommand(NewSearchProductsView$$State newSearchProductsView$$State, List<String> list) {
            super("showChips", hx5.class);
            this.ships = list;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.showChips(this.ships);
        }
    }

    public class ShowLoadingCommand extends wd9<NewSearchProductsView> {
        public final boolean show;

        public ShowLoadingCommand(NewSearchProductsView$$State newSearchProductsView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.showLoading(this.show);
        }
    }

    public class ShowProductsCommand extends wd9<NewSearchProductsView> {
        public final List<? extends fn5> products;

        public ShowProductsCommand(NewSearchProductsView$$State newSearchProductsView$$State, List<? extends fn5> list) {
            super("showProducts", k9.class);
            this.products = list;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.showProducts(this.products);
        }
    }

    public class ShowShopInChequesCommand extends wd9<NewSearchProductsView> {
        public final List<? extends fn5> products;

        public ShowShopInChequesCommand(NewSearchProductsView$$State newSearchProductsView$$State, List<? extends fn5> list) {
            super("showShopInCheques", k9.class);
            this.products = list;
        }

        @Override // defpackage.wd9
        public void apply(NewSearchProductsView newSearchProductsView) {
            newSearchProductsView.showShopInCheques(this.products);
        }
    }
}

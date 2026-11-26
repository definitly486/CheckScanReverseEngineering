package com.warefly.checkscan.presentation.newSearchProducts.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.fn5;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface NewSearchProductsView extends BaseView {
    void allProductInChequeLoaded();

    void hidePopularCategory();

    void hideProducts();

    void hideShops();

    void setItemFromChip(String str);

    void showChips(List<String> list);

    void showLoading(boolean z);

    void showProducts(List<? extends fn5> list);

    void showShopInCheques(List<? extends fn5> list);
}

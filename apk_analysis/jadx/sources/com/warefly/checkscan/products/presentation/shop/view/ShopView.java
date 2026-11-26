package com.warefly.checkscan.products.presentation.shop.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ShopView extends BaseView {
    void setMerchantScrollListener();

    void setToolbarTitle(String str);

    void showContent(List<? extends pz3> list);

    void showError(boolean z);

    void showImage(String str, String str2);

    void showInfoBottomSheet(String str, String str2);

    void showLoading(boolean z);

    void showScanButton(boolean z);

    void showToolbarTitle(boolean z);
}

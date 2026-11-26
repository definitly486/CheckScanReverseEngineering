package com.warefly.checkscan.presentation.bonuses.onlineShops.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.cs0;
import defpackage.g81;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OnlineShopsView extends BaseView {
    void scrollNextSpecials(int i);

    void scrollToTop();

    void setToolbarTitle(String str);

    void showAllData(List<? extends cs0> list);

    void showFavouriteStatusChanged(boolean z);

    void showFilterButton(boolean z);

    void showFilters(List<g81> list, int i);

    void showLoading(boolean z);

    void showOrdBottomSheet(b06 b06Var);
}

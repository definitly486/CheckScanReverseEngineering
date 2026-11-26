package com.warefly.checkscan.presentation.favorite.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.cs0;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface FavoriteView extends BaseView {
    void setShopsEmpty(boolean z);

    void showData(List<? extends pz3> list);

    void showFavouriteStatusChanged(boolean z);

    void showNoShops(boolean z);

    void showOrdBottomSheet(b06 b06Var);

    void showPromocodes(List<? extends cs0> list);

    void showShopsTitle(boolean z);
}

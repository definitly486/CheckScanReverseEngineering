package com.warefly.checkscan.presentation.bonuses.favoritePreviews.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.cs0;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface FavoritePreviewsView extends BaseView {
    void setToolbarTitle(String str);

    void showData(List<? extends cs0> list);

    void showFavouriteStatusChanged(boolean z);

    void showLoading(boolean z);

    void showOrdBottomSheet(b06 b06Var);
}

package com.warefly.checkscan.presentation.bonuses.search.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.cs0;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BonusesSearchView extends BaseView {
    void setQueryInSearchView(String str);

    void setSearchView();

    void showContent(List<? extends cs0> list);

    void showFavouriteStatusChanged(boolean z);

    void showOrdBottomSheet(b06 b06Var);
}

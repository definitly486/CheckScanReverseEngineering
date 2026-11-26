package com.warefly.checkscan.presentation.bonuses.coupons.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.gr6;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CouponsView extends BaseView {
    void setCoupons(List<gr6> list);

    void showError();

    void showFavoriteStatusIsChanged(boolean z, boolean z2);

    void showFiltersDialog();

    void showLoading(boolean z);
}

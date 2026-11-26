package com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.vy4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface FilterNewDialogView extends BaseView {
    void setFiltersList(List<vy4> list);

    void setUpdatedList(List<vy4> list);

    void showSelectedFilterCategory(int i, String str);
}

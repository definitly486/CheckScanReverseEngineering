package com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.g81;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CategoriesView extends BaseView {
    void checkAllCategories(boolean z);

    void closeDialog();

    void enableButton(boolean z);

    void showCategories(List<g81> list);
}

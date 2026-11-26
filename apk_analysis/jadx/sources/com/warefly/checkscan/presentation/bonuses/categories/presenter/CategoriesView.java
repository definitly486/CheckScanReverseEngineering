package com.warefly.checkscan.presentation.bonuses.categories.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.cs0;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CategoriesView extends BaseView {
    void hideLoading(boolean z);

    void showCategories(List<? extends cs0> list);
}

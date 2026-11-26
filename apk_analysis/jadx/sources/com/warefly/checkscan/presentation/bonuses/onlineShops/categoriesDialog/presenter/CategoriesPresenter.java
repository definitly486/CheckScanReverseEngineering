package com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.bm3;
import defpackage.f81;
import defpackage.j59;

/* JADX INFO: loaded from: classes5.dex */
public final class CategoriesPresenter extends BasePresenter<CategoriesView> {
    private f81 categorySelectedInDialog;
    private final bm3<Integer, String, j59> showShops;

    /* JADX WARN: Multi-variable type inference failed */
    public CategoriesPresenter(bm3<? super Integer, ? super String, j59> bm3Var) {
        bm3Var.getClass();
        this.showShops = bm3Var;
    }

    public final void checkAllCategories(boolean z) {
        CategoriesView categoriesView = (CategoriesView) getViewState();
        if (categoriesView != null) {
            categoriesView.checkAllCategories(z);
        }
    }

    public final void enableButton(boolean z) {
        CategoriesView categoriesView = (CategoriesView) getViewState();
        if (categoriesView != null) {
            categoriesView.enableButton(z);
        }
    }

    public final void selectCategoryInDialog(f81 f81Var) {
        this.categorySelectedInDialog = f81Var;
    }

    public final void showProductsByCategory() {
        CategoriesView categoriesView = (CategoriesView) getViewState();
        if (categoriesView != null) {
            categoriesView.closeDialog();
        }
        f81 f81Var = this.categorySelectedInDialog;
        if (f81Var != null) {
            this.showShops.invoke(Integer.valueOf(f81Var.a()), f81Var.b());
        }
    }
}

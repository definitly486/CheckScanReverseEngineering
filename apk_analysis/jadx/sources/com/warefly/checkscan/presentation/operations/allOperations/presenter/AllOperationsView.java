package com.warefly.checkscan.presentation.operations.allOperations.presenter;

import com.warefly.checkscan.presentation.operations.base.OperationsView;
import defpackage.py5;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface AllOperationsView extends OperationsView {
    void removeCategory();

    void showBeginList();

    void showCategories(List<py5> list);

    void showCategoriesLoaded(boolean z);

    void showCouldntLoadCategories(boolean z);

    void showLoadingCategories(boolean z);

    void showSelectedCategory(py5 py5Var);
}

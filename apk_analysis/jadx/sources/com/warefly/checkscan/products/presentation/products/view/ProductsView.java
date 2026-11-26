package com.warefly.checkscan.products.presentation.products.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ProductsView extends BaseView {
    void showContent(List<? extends pz3> list);

    void showError(boolean z);

    void showLoading(boolean z);

    void turnOffRefreshing();
}

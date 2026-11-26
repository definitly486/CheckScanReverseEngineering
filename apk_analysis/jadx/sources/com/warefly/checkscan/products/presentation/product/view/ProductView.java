package com.warefly.checkscan.products.presentation.product.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ProductView extends BaseView {
    void showContent(List<? extends pz3> list);

    void showError(boolean z);

    void showImage(String str);

    void showInfoBottomSheet(List<b.a> list);

    void showLoading(boolean z);
}

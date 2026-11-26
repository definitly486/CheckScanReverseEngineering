package com.warefly.checkscan.insuranceShowcase.presentation.showcase.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface InsuranceShowcaseView extends BaseView {
    void setToolbarTitle(String str);

    void showError(boolean z);

    void showItems(List<? extends pz3> list);

    void showLoading(boolean z);
}

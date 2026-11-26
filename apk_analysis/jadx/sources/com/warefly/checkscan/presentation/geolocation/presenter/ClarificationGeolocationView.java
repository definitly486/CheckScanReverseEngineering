package com.warefly.checkscan.presentation.geolocation.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.l17;

/* JADX INFO: loaded from: classes5.dex */
public interface ClarificationGeolocationView extends BaseView {
    void showButtonLoading(boolean z);

    void showDefaultError();

    void showLoading(boolean z);

    void showSuggestCity(l17 l17Var);
}

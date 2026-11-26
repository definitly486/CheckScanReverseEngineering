package com.warefly.checkscan.presentation.bonuses.promocodes.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.er6;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PromocodesView extends BaseView {
    void hideLoading(boolean z);

    void sendPromocodesUpdateResult();

    void showPromocodes(List<er6> list);
}

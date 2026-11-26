package com.warefly.checkscan.presentation.balance.promoSelectCard.view;

import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView;
import defpackage.ap6;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PromoSelectCardView extends WithdrawalView {
    void setToolbarTitle(String str);

    void showError(boolean z);

    void showFullTerms(String str, String str2);

    void showItems(List<? extends pz3> list);

    void showMotivationBanner(ap6 ap6Var);
}

package com.warefly.checkscan.presentation.bonuses.shopPage.view;

import android.text.Spannable;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.gr6;
import defpackage.js7;
import defpackage.la8;
import defpackage.qx5;
import defpackage.r31;
import defpackage.sy8;
import defpackage.ux5;
import defpackage.yw3;
import defpackage.zn6;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BonusAdmitadNewView extends BaseView, js7 {
    void openGoToLinkInCustomTabs(String str);

    void openHotItemUrl(String str, String str2);

    void setButtonShopListener(String str);

    void setCashbackTitle(String str, Spannable spannable);

    void setDescriptionInfo(String str);

    void setFixedCashback(String str);

    void setFloatingButtonVisibility(boolean z);

    void setHotItemsInfo(List<yw3> list);

    void setOnlineShopInfo(qx5 qx5Var);

    void setPowerCodeDescription(String str);

    void setPowerCodeHotDescription(String str, String str2);

    void setPromocodesInfo(List<gr6> list);

    void setStepsInfo(String str, List<la8> list);

    void showAllTerms(List<ux5> list);

    void showFavoriteStatus(boolean z);

    void showFavoriteStatusIsChanged(boolean z, boolean z2);

    void showLoading(boolean z);

    void showLoadingDialog(boolean z);

    void showMoreCashbackButton(r31 r31Var);

    void showMoreCashbackDialog(r31 r31Var, long j);

    void showOfferExpired();

    void showOrd(b06 b06Var);

    void showOrdDialog(b06 b06Var);

    void showPromoView(zn6 zn6Var);

    void showRedirectDialog(sy8 sy8Var, String str, String str2);

    void showRedirectInfo(String str);
}

package com.warefly.checkscan.presentation.bonuses.couponPage.view;

import android.text.Spanned;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.js7;
import defpackage.la8;
import defpackage.m32;
import defpackage.sy8;
import defpackage.yw3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CouponNewView extends BaseView, js7 {
    void copyCode(String str);

    void openCouponUrl(String str);

    void openHotItemUrl(String str, String str2);

    void setCouponInfo(m32 m32Var);

    void setDescriptionInfo(Spanned spanned);

    void setFloatingButtonVisibility(boolean z);

    void setHotItemsInfo(List<yw3> list);

    void setStepsInfo(String str, List<la8> list);

    void showActionButtonLoading(boolean z);

    void showBarCode(String str);

    void showFavoriteStatus(boolean z);

    void showFavoriteStatusIsChanged(boolean z, boolean z2);

    void showImageCode(String str, String str2);

    void showLoading(boolean z);

    void showLoadingDialog(boolean z);

    void showPromocode(String str);

    void showPromocodeCopied(String str, String str2);

    void showQrCode(String str);

    void showRedirectDialog(sy8 sy8Var, String str, String str2);

    void showRequestInfoError();
}

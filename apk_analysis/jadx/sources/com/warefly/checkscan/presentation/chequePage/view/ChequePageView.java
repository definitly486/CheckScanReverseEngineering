package com.warefly.checkscan.presentation.chequePage.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.hd1;
import defpackage.kd1;
import defpackage.ra4;
import defpackage.xv7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ChequePageView extends BaseView {
    void openChequeInfoFormDialog(int i, String str);

    void scrollNextSpecials(int i);

    void showAdInfoDialog(b06 b06Var);

    void showBanners(xv7 xv7Var);

    void showCards(boolean z, List<Object> list);

    void showCategoryTutorial();

    void showChequeAlert(kd1 kd1Var);

    void showChequeInfo(hd1 hd1Var);

    void showChequeOperations(boolean z, List<Object> list);

    void showChequeProducts(List<? extends ra4> list);

    void showCouldntGetCategoriesOfCheque();

    void showCouldntLoadCheque(boolean z);

    void showCoupons(List<Object> list, Integer num);

    void showEmptyCards(boolean z);

    void showEmptyCardsError(boolean z);

    void showEmptyCardsProgress(boolean z);

    void showLoadingCheque(boolean z);

    void showLoadingContent(boolean z);

    void showLoadingProducts(boolean z);

    void showNoProductsInCheque();

    void showPageOfCardsProgress(boolean z);

    void showProductCategoryReported(boolean z);

    void showReasonRejectCashback(String str);

    void showRefreshCardsProgress(boolean z);

    void showShareCheque(hd1 hd1Var);

    void showUpdateToAccessMessage();

    void showWaitLayout(boolean z);
}

package com.warefly.checkscan.presentation.chequePage.view;

import defpackage.a28;
import defpackage.b06;
import defpackage.hd1;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kd1;
import defpackage.kh5;
import defpackage.ra4;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.xv7;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ChequePageView$$State extends kh5<ChequePageView> implements ChequePageView {

    public class OpenChequeInfoFormDialogCommand extends wd9<ChequePageView> {
        public final int chequeId;
        public final String phone;

        public OpenChequeInfoFormDialogCommand(ChequePageView$$State chequePageView$$State, int i, String str) {
            super("openChequeInfoFormDialog", hx5.class);
            this.chequeId = i;
            this.phone = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.openChequeInfoFormDialog(this.chequeId, this.phone);
        }
    }

    public class ShowCardsCommand extends wd9<ChequePageView> {
        public final List<Object> data;
        public final boolean show;

        public ShowCardsCommand(ChequePageView$$State chequePageView$$State, boolean z, List<Object> list) {
            super("showCards", k9.class);
            this.show = z;
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showCards(this.show, this.data);
        }
    }

    public class ShowChequeOperationsCommand extends wd9<ChequePageView> {
        public final List<Object> data;
        public final boolean show;

        public ShowChequeOperationsCommand(ChequePageView$$State chequePageView$$State, boolean z, List<Object> list) {
            super("showChequeOperations", k9.class);
            this.show = z;
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showChequeOperations(this.show, this.data);
        }
    }

    public class ShowCouponsCommand extends wd9<ChequePageView> {
        public final List<Object> coupons;
        public final Integer height;

        public ShowCouponsCommand(ChequePageView$$State chequePageView$$State, List<Object> list, Integer num) {
            super("showCoupons", k9.class);
            this.coupons = list;
            this.height = num;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showCoupons(this.coupons, this.height);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void openChequeInfoFormDialog(int i, String str) {
        OpenChequeInfoFormDialogCommand openChequeInfoFormDialogCommand = new OpenChequeInfoFormDialogCommand(this, i, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openChequeInfoFormDialogCommand).b(xd9Var.a, openChequeInfoFormDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).openChequeInfoFormDialog(i, str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openChequeInfoFormDialogCommand).a(xd9Var2.a, openChequeInfoFormDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void scrollNextSpecials(int i) {
        ScrollNextSpecialsCommand scrollNextSpecialsCommand = new ScrollNextSpecialsCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(scrollNextSpecialsCommand).b(xd9Var.a, scrollNextSpecialsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).scrollNextSpecials(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(scrollNextSpecialsCommand).a(xd9Var2.a, scrollNextSpecialsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showAdInfoDialog(b06 b06Var) {
        ShowAdInfoDialogCommand showAdInfoDialogCommand = new ShowAdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAdInfoDialogCommand).b(xd9Var.a, showAdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showAdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAdInfoDialogCommand).a(xd9Var2.a, showAdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showBanners(xv7 xv7Var) {
        ShowBannersCommand showBannersCommand = new ShowBannersCommand(this, xv7Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBannersCommand).b(xd9Var.a, showBannersCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showBanners(xv7Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBannersCommand).a(xd9Var2.a, showBannersCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showCards(boolean z, List<Object> list) {
        ShowCardsCommand showCardsCommand = new ShowCardsCommand(this, z, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCardsCommand).b(xd9Var.a, showCardsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showCards(z, list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCardsCommand).a(xd9Var2.a, showCardsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showCategoryTutorial() {
        ShowCategoryTutorialCommand showCategoryTutorialCommand = new ShowCategoryTutorialCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCategoryTutorialCommand).b(xd9Var.a, showCategoryTutorialCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showCategoryTutorial();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCategoryTutorialCommand).a(xd9Var2.a, showCategoryTutorialCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showChequeAlert(kd1 kd1Var) {
        ShowChequeAlertCommand showChequeAlertCommand = new ShowChequeAlertCommand(this, kd1Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeAlertCommand).b(xd9Var.a, showChequeAlertCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showChequeAlert(kd1Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeAlertCommand).a(xd9Var2.a, showChequeAlertCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showChequeInfo(hd1 hd1Var) {
        ShowChequeInfoCommand showChequeInfoCommand = new ShowChequeInfoCommand(this, hd1Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeInfoCommand).b(xd9Var.a, showChequeInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showChequeInfo(hd1Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeInfoCommand).a(xd9Var2.a, showChequeInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showChequeOperations(boolean z, List<Object> list) {
        ShowChequeOperationsCommand showChequeOperationsCommand = new ShowChequeOperationsCommand(this, z, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeOperationsCommand).b(xd9Var.a, showChequeOperationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showChequeOperations(z, list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeOperationsCommand).a(xd9Var2.a, showChequeOperationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showChequeProducts(List<? extends ra4> list) {
        ShowChequeProductsCommand showChequeProductsCommand = new ShowChequeProductsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeProductsCommand).b(xd9Var.a, showChequeProductsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showChequeProducts(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeProductsCommand).a(xd9Var2.a, showChequeProductsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showCouldntGetCategoriesOfCheque() {
        ShowCouldntGetCategoriesOfChequeCommand showCouldntGetCategoriesOfChequeCommand = new ShowCouldntGetCategoriesOfChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntGetCategoriesOfChequeCommand).b(xd9Var.a, showCouldntGetCategoriesOfChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showCouldntGetCategoriesOfCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntGetCategoriesOfChequeCommand).a(xd9Var2.a, showCouldntGetCategoriesOfChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showCouldntLoadCheque(boolean z) {
        ShowCouldntLoadChequeCommand showCouldntLoadChequeCommand = new ShowCouldntLoadChequeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadChequeCommand).b(xd9Var.a, showCouldntLoadChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showCouldntLoadCheque(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadChequeCommand).a(xd9Var2.a, showCouldntLoadChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showCoupons(List<Object> list, Integer num) {
        ShowCouponsCommand showCouponsCommand = new ShowCouponsCommand(this, list, num);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouponsCommand).b(xd9Var.a, showCouponsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showCoupons(list, num);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouponsCommand).a(xd9Var2.a, showCouponsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showEmptyCards(boolean z) {
        ShowEmptyCardsCommand showEmptyCardsCommand = new ShowEmptyCardsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyCardsCommand).b(xd9Var.a, showEmptyCardsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showEmptyCards(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyCardsCommand).a(xd9Var2.a, showEmptyCardsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showEmptyCardsError(boolean z) {
        ShowEmptyCardsErrorCommand showEmptyCardsErrorCommand = new ShowEmptyCardsErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyCardsErrorCommand).b(xd9Var.a, showEmptyCardsErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showEmptyCardsError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyCardsErrorCommand).a(xd9Var2.a, showEmptyCardsErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showEmptyCardsProgress(boolean z) {
        ShowEmptyCardsProgressCommand showEmptyCardsProgressCommand = new ShowEmptyCardsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyCardsProgressCommand).b(xd9Var.a, showEmptyCardsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showEmptyCardsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyCardsProgressCommand).a(xd9Var2.a, showEmptyCardsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showLoadingCheque(boolean z) {
        ShowLoadingChequeCommand showLoadingChequeCommand = new ShowLoadingChequeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingChequeCommand).b(xd9Var.a, showLoadingChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showLoadingCheque(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingChequeCommand).a(xd9Var2.a, showLoadingChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showLoadingContent(boolean z) {
        ShowLoadingContentCommand showLoadingContentCommand = new ShowLoadingContentCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingContentCommand).b(xd9Var.a, showLoadingContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showLoadingContent(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingContentCommand).a(xd9Var2.a, showLoadingContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showLoadingProducts(boolean z) {
        ShowLoadingProductsCommand showLoadingProductsCommand = new ShowLoadingProductsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingProductsCommand).b(xd9Var.a, showLoadingProductsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showLoadingProducts(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingProductsCommand).a(xd9Var2.a, showLoadingProductsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showNoProductsInCheque() {
        ShowNoProductsInChequeCommand showNoProductsInChequeCommand = new ShowNoProductsInChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoProductsInChequeCommand).b(xd9Var.a, showNoProductsInChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showNoProductsInCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoProductsInChequeCommand).a(xd9Var2.a, showNoProductsInChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showPageOfCardsProgress(boolean z) {
        ShowPageOfCardsProgressCommand showPageOfCardsProgressCommand = new ShowPageOfCardsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPageOfCardsProgressCommand).b(xd9Var.a, showPageOfCardsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showPageOfCardsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPageOfCardsProgressCommand).a(xd9Var2.a, showPageOfCardsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showProductCategoryReported(boolean z) {
        ShowProductCategoryReportedCommand showProductCategoryReportedCommand = new ShowProductCategoryReportedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showProductCategoryReportedCommand).b(xd9Var.a, showProductCategoryReportedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showProductCategoryReported(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showProductCategoryReportedCommand).a(xd9Var2.a, showProductCategoryReportedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showReasonRejectCashback(String str) {
        ShowReasonRejectCashbackCommand showReasonRejectCashbackCommand = new ShowReasonRejectCashbackCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showReasonRejectCashbackCommand).b(xd9Var.a, showReasonRejectCashbackCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showReasonRejectCashback(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showReasonRejectCashbackCommand).a(xd9Var2.a, showReasonRejectCashbackCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showRefreshCardsProgress(boolean z) {
        ShowRefreshCardsProgressCommand showRefreshCardsProgressCommand = new ShowRefreshCardsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRefreshCardsProgressCommand).b(xd9Var.a, showRefreshCardsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showRefreshCardsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRefreshCardsProgressCommand).a(xd9Var2.a, showRefreshCardsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showShareCheque(hd1 hd1Var) {
        ShowShareChequeCommand showShareChequeCommand = new ShowShareChequeCommand(this, hd1Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShareChequeCommand).b(xd9Var.a, showShareChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showShareCheque(hd1Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShareChequeCommand).a(xd9Var2.a, showShareChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showUpdateToAccessMessage() {
        ShowUpdateToAccessMessageCommand showUpdateToAccessMessageCommand = new ShowUpdateToAccessMessageCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUpdateToAccessMessageCommand).b(xd9Var.a, showUpdateToAccessMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showUpdateToAccessMessage();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUpdateToAccessMessageCommand).a(xd9Var2.a, showUpdateToAccessMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public void showWaitLayout(boolean z) {
        ShowWaitLayoutCommand showWaitLayoutCommand = new ShowWaitLayoutCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWaitLayoutCommand).b(xd9Var.a, showWaitLayoutCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequePageView) it.next()).showWaitLayout(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWaitLayoutCommand).a(xd9Var2.a, showWaitLayoutCommand);
    }

    public class OpenUrlCommand extends wd9<ChequePageView> {
        public final String arg0;

        public OpenUrlCommand(ChequePageView$$State chequePageView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ChequePageView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ChequePageView$$State chequePageView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ScrollNextSpecialsCommand extends wd9<ChequePageView> {
        public final int pos;

        public ScrollNextSpecialsCommand(ChequePageView$$State chequePageView$$State, int i) {
            super("scrollNextSpecials", hx5.class);
            this.pos = i;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.scrollNextSpecials(this.pos);
        }
    }

    public class ShowAdInfoDialogCommand extends wd9<ChequePageView> {
        public final b06 ordInfo;

        public ShowAdInfoDialogCommand(ChequePageView$$State chequePageView$$State, b06 b06Var) {
            super("showAdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showAdInfoDialog(this.ordInfo);
        }
    }

    public class ShowBannersCommand extends wd9<ChequePageView> {
        public final xv7 chequeBanner;

        public ShowBannersCommand(ChequePageView$$State chequePageView$$State, xv7 xv7Var) {
            super("showBanners", i9.class);
            this.chequeBanner = xv7Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showBanners(this.chequeBanner);
        }
    }

    public class ShowCategoryTutorialCommand extends wd9<ChequePageView> {
        public ShowCategoryTutorialCommand(ChequePageView$$State chequePageView$$State) {
            super("showCategoryTutorial", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showCategoryTutorial();
        }
    }

    public class ShowChequeAlertCommand extends wd9<ChequePageView> {
        public final kd1 chequeAlert;

        public ShowChequeAlertCommand(ChequePageView$$State chequePageView$$State, kd1 kd1Var) {
            super("showChequeAlert", k9.class);
            this.chequeAlert = kd1Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showChequeAlert(this.chequeAlert);
        }
    }

    public class ShowChequeInfoCommand extends wd9<ChequePageView> {
        public final hd1 cheque;

        public ShowChequeInfoCommand(ChequePageView$$State chequePageView$$State, hd1 hd1Var) {
            super("showChequeInfo", k9.class);
            this.cheque = hd1Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showChequeInfo(this.cheque);
        }
    }

    public class ShowChequeProductsCommand extends wd9<ChequePageView> {
        public final List<? extends ra4> items;

        public ShowChequeProductsCommand(ChequePageView$$State chequePageView$$State, List<? extends ra4> list) {
            super("showChequeProducts", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showChequeProducts(this.items);
        }
    }

    public class ShowCouldntGetCategoriesOfChequeCommand extends wd9<ChequePageView> {
        public ShowCouldntGetCategoriesOfChequeCommand(ChequePageView$$State chequePageView$$State) {
            super("showCouldntGetCategoriesOfCheque", a28.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showCouldntGetCategoriesOfCheque();
        }
    }

    public class ShowCouldntLoadChequeCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowCouldntLoadChequeCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showCouldntLoadCheque", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showCouldntLoadCheque(this.show);
        }
    }

    public class ShowEmptyCardsCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowEmptyCardsCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showEmptyCards", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showEmptyCards(this.show);
        }
    }

    public class ShowEmptyCardsErrorCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowEmptyCardsErrorCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showEmptyCardsError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showEmptyCardsError(this.show);
        }
    }

    public class ShowEmptyCardsProgressCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowEmptyCardsProgressCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showEmptyCardsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showEmptyCardsProgress(this.show);
        }
    }

    public class ShowLoadingChequeCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowLoadingChequeCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showLoadingCheque", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showLoadingCheque(this.show);
        }
    }

    public class ShowLoadingContentCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowLoadingContentCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showLoadingContent", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showLoadingContent(this.show);
        }
    }

    public class ShowLoadingProductsCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowLoadingProductsCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showLoadingProducts", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showLoadingProducts(this.show);
        }
    }

    public class ShowNoProductsInChequeCommand extends wd9<ChequePageView> {
        public ShowNoProductsInChequeCommand(ChequePageView$$State chequePageView$$State) {
            super("showNoProductsInCheque", a28.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showNoProductsInCheque();
        }
    }

    public class ShowPageOfCardsProgressCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowPageOfCardsProgressCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showPageOfCardsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showPageOfCardsProgress(this.show);
        }
    }

    public class ShowProductCategoryReportedCommand extends wd9<ChequePageView> {
        public final boolean isReported;

        public ShowProductCategoryReportedCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showProductCategoryReported", a28.class);
            this.isReported = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showProductCategoryReported(this.isReported);
        }
    }

    public class ShowReasonRejectCashbackCommand extends wd9<ChequePageView> {
        public final String info;

        public ShowReasonRejectCashbackCommand(ChequePageView$$State chequePageView$$State, String str) {
            super("showReasonRejectCashback", i9.class);
            this.info = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showReasonRejectCashback(this.info);
        }
    }

    public class ShowRefreshCardsProgressCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowRefreshCardsProgressCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showRefreshCardsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showRefreshCardsProgress(this.show);
        }
    }

    public class ShowShareChequeCommand extends wd9<ChequePageView> {
        public final hd1 cheque;

        public ShowShareChequeCommand(ChequePageView$$State chequePageView$$State, hd1 hd1Var) {
            super("showShareCheque", a28.class);
            this.cheque = hd1Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showShareCheque(this.cheque);
        }
    }

    public class ShowUpdateToAccessMessageCommand extends wd9<ChequePageView> {
        public ShowUpdateToAccessMessageCommand(ChequePageView$$State chequePageView$$State) {
            super("showUpdateToAccessMessage", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showUpdateToAccessMessage();
        }
    }

    public class ShowWaitLayoutCommand extends wd9<ChequePageView> {
        public final boolean show;

        public ShowWaitLayoutCommand(ChequePageView$$State chequePageView$$State, boolean z) {
            super("showWaitLayout", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequePageView chequePageView) {
            chequePageView.showWaitLayout(this.show);
        }
    }
}

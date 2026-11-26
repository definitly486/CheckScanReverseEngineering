package com.warefly.checkscan.presentation.bonuses.shopPage.view;

import android.text.Spannable;
import defpackage.b06;
import defpackage.gr6;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.la8;
import defpackage.qx5;
import defpackage.r31;
import defpackage.sy8;
import defpackage.ux5;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.yw3;
import defpackage.zn6;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BonusAdmitadNewView$$State extends kh5<BonusAdmitadNewView> implements BonusAdmitadNewView {

    public class OpenHotItemUrlCommand extends wd9<BonusAdmitadNewView> {
        public final String title;
        public final String url;

        public OpenHotItemUrlCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str, String str2) {
            super("openHotItemUrl", hx5.class);
            this.url = str;
            this.title = str2;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.openHotItemUrl(this.url, this.title);
        }
    }

    public class SetCashbackTitleCommand extends wd9<BonusAdmitadNewView> {
        public final String title;
        public final Spannable value;

        public SetCashbackTitleCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str, Spannable spannable) {
            super("setCashbackTitle", k9.class);
            this.title = str;
            this.value = spannable;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setCashbackTitle(this.title, this.value);
        }
    }

    public class SetPowerCodeHotDescriptionCommand extends wd9<BonusAdmitadNewView> {
        public final String description;
        public final String endDate;

        public SetPowerCodeHotDescriptionCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str, String str2) {
            super("setPowerCodeHotDescription", k9.class);
            this.description = str;
            this.endDate = str2;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setPowerCodeHotDescription(this.description, this.endDate);
        }
    }

    public class SetStepsInfoCommand extends wd9<BonusAdmitadNewView> {
        public final List<la8> items;
        public final String title;

        public SetStepsInfoCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str, List<la8> list) {
            super("setStepsInfo", k9.class);
            this.title = str;
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setStepsInfo(this.title, this.items);
        }
    }

    public class ShareCardCommand extends wd9<BonusAdmitadNewView> {
        public final String cardImageLink;
        public final String cardLinkSuffix;
        public final String promoCode;
        public final String shareTitle;

        public ShareCardCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str, String str2, String str3, String str4) {
            super("shareCard", hx5.class);
            this.cardLinkSuffix = str;
            this.shareTitle = str2;
            this.promoCode = str3;
            this.cardImageLink = str4;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.shareCard(this.cardLinkSuffix, this.shareTitle, this.promoCode, this.cardImageLink);
        }
    }

    public class ShowFavoriteStatusIsChangedCommand extends wd9<BonusAdmitadNewView> {
        public final boolean isFavorite;
        public final boolean isSuccessful;

        public ShowFavoriteStatusIsChangedCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, boolean z, boolean z2) {
            super("showFavoriteStatusIsChanged", hx5.class);
            this.isSuccessful = z;
            this.isFavorite = z2;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showFavoriteStatusIsChanged(this.isSuccessful, this.isFavorite);
        }
    }

    public class ShowMoreCashbackDialogCommand extends wd9<BonusAdmitadNewView> {
        public final r31 cardButton;
        public final long shopId;

        public ShowMoreCashbackDialogCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, r31 r31Var, long j) {
            super("showMoreCashbackDialog", hx5.class);
            this.cardButton = r31Var;
            this.shopId = j;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showMoreCashbackDialog(this.cardButton, this.shopId);
        }
    }

    public class ShowRedirectDialogCommand extends wd9<BonusAdmitadNewView> {
        public final String logoUrl;
        public final sy8 trackingType;
        public final String url;

        public ShowRedirectDialogCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, sy8 sy8Var, String str, String str2) {
            super("showRedirectDialog", hx5.class);
            this.trackingType = sy8Var;
            this.url = str;
            this.logoUrl = str2;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showRedirectDialog(this.trackingType, this.url, this.logoUrl);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void openGoToLinkInCustomTabs(String str) {
        OpenGoToLinkInCustomTabsCommand openGoToLinkInCustomTabsCommand = new OpenGoToLinkInCustomTabsCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openGoToLinkInCustomTabsCommand).b(xd9Var.a, openGoToLinkInCustomTabsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).openGoToLinkInCustomTabs(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openGoToLinkInCustomTabsCommand).a(xd9Var2.a, openGoToLinkInCustomTabsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void openHotItemUrl(String str, String str2) {
        OpenHotItemUrlCommand openHotItemUrlCommand = new OpenHotItemUrlCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openHotItemUrlCommand).b(xd9Var.a, openHotItemUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).openHotItemUrl(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openHotItemUrlCommand).a(xd9Var2.a, openHotItemUrlCommand);
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
            ((BonusAdmitadNewView) it.next()).openUrl(str);
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
            ((BonusAdmitadNewView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setButtonShopListener(String str) {
        SetButtonShopListenerCommand setButtonShopListenerCommand = new SetButtonShopListenerCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setButtonShopListenerCommand).b(xd9Var.a, setButtonShopListenerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setButtonShopListener(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setButtonShopListenerCommand).a(xd9Var2.a, setButtonShopListenerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setCashbackTitle(String str, Spannable spannable) {
        SetCashbackTitleCommand setCashbackTitleCommand = new SetCashbackTitleCommand(this, str, spannable);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCashbackTitleCommand).b(xd9Var.a, setCashbackTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setCashbackTitle(str, spannable);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCashbackTitleCommand).a(xd9Var2.a, setCashbackTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setDescriptionInfo(String str) {
        SetDescriptionInfoCommand setDescriptionInfoCommand = new SetDescriptionInfoCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDescriptionInfoCommand).b(xd9Var.a, setDescriptionInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setDescriptionInfo(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDescriptionInfoCommand).a(xd9Var2.a, setDescriptionInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setFixedCashback(String str) {
        SetFixedCashbackCommand setFixedCashbackCommand = new SetFixedCashbackCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setFixedCashbackCommand).b(xd9Var.a, setFixedCashbackCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setFixedCashback(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setFixedCashbackCommand).a(xd9Var2.a, setFixedCashbackCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setFloatingButtonVisibility(boolean z) {
        SetFloatingButtonVisibilityCommand setFloatingButtonVisibilityCommand = new SetFloatingButtonVisibilityCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setFloatingButtonVisibilityCommand).b(xd9Var.a, setFloatingButtonVisibilityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setFloatingButtonVisibility(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setFloatingButtonVisibilityCommand).a(xd9Var2.a, setFloatingButtonVisibilityCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setHotItemsInfo(List<yw3> list) {
        SetHotItemsInfoCommand setHotItemsInfoCommand = new SetHotItemsInfoCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setHotItemsInfoCommand).b(xd9Var.a, setHotItemsInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setHotItemsInfo(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setHotItemsInfoCommand).a(xd9Var2.a, setHotItemsInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setOnlineShopInfo(qx5 qx5Var) {
        SetOnlineShopInfoCommand setOnlineShopInfoCommand = new SetOnlineShopInfoCommand(this, qx5Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setOnlineShopInfoCommand).b(xd9Var.a, setOnlineShopInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setOnlineShopInfo(qx5Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setOnlineShopInfoCommand).a(xd9Var2.a, setOnlineShopInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setPowerCodeDescription(String str) {
        SetPowerCodeDescriptionCommand setPowerCodeDescriptionCommand = new SetPowerCodeDescriptionCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPowerCodeDescriptionCommand).b(xd9Var.a, setPowerCodeDescriptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setPowerCodeDescription(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPowerCodeDescriptionCommand).a(xd9Var2.a, setPowerCodeDescriptionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setPowerCodeHotDescription(String str, String str2) {
        SetPowerCodeHotDescriptionCommand setPowerCodeHotDescriptionCommand = new SetPowerCodeHotDescriptionCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPowerCodeHotDescriptionCommand).b(xd9Var.a, setPowerCodeHotDescriptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setPowerCodeHotDescription(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPowerCodeHotDescriptionCommand).a(xd9Var2.a, setPowerCodeHotDescriptionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setPromocodesInfo(List<gr6> list) {
        SetPromocodesInfoCommand setPromocodesInfoCommand = new SetPromocodesInfoCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPromocodesInfoCommand).b(xd9Var.a, setPromocodesInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setPromocodesInfo(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPromocodesInfoCommand).a(xd9Var2.a, setPromocodesInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void setStepsInfo(String str, List<la8> list) {
        SetStepsInfoCommand setStepsInfoCommand = new SetStepsInfoCommand(this, str, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setStepsInfoCommand).b(xd9Var.a, setStepsInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).setStepsInfo(str, list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setStepsInfoCommand).a(xd9Var2.a, setStepsInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.js7
    public void shareCard(String str, String str2, String str3, String str4) {
        ShareCardCommand shareCardCommand = new ShareCardCommand(this, str, str2, str3, str4);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(shareCardCommand).b(xd9Var.a, shareCardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).shareCard(str, str2, str3, str4);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareCardCommand).a(xd9Var2.a, shareCardCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showAllTerms(List<ux5> list) {
        ShowAllTermsCommand showAllTermsCommand = new ShowAllTermsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAllTermsCommand).b(xd9Var.a, showAllTermsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showAllTerms(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAllTermsCommand).a(xd9Var2.a, showAllTermsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showFavoriteStatus(boolean z) {
        ShowFavoriteStatusCommand showFavoriteStatusCommand = new ShowFavoriteStatusCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavoriteStatusCommand).b(xd9Var.a, showFavoriteStatusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showFavoriteStatus(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavoriteStatusCommand).a(xd9Var2.a, showFavoriteStatusCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showFavoriteStatusIsChanged(boolean z, boolean z2) {
        ShowFavoriteStatusIsChangedCommand showFavoriteStatusIsChangedCommand = new ShowFavoriteStatusIsChangedCommand(this, z, z2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavoriteStatusIsChangedCommand).b(xd9Var.a, showFavoriteStatusIsChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showFavoriteStatusIsChanged(z, z2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavoriteStatusIsChangedCommand).a(xd9Var2.a, showFavoriteStatusIsChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showLoadingDialog(boolean z) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showLoadingDialog(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showMoreCashbackButton(r31 r31Var) {
        ShowMoreCashbackButtonCommand showMoreCashbackButtonCommand = new ShowMoreCashbackButtonCommand(this, r31Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMoreCashbackButtonCommand).b(xd9Var.a, showMoreCashbackButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showMoreCashbackButton(r31Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMoreCashbackButtonCommand).a(xd9Var2.a, showMoreCashbackButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showMoreCashbackDialog(r31 r31Var, long j) {
        ShowMoreCashbackDialogCommand showMoreCashbackDialogCommand = new ShowMoreCashbackDialogCommand(this, r31Var, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMoreCashbackDialogCommand).b(xd9Var.a, showMoreCashbackDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showMoreCashbackDialog(r31Var, j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMoreCashbackDialogCommand).a(xd9Var2.a, showMoreCashbackDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showOfferExpired() {
        ShowOfferExpiredCommand showOfferExpiredCommand = new ShowOfferExpiredCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOfferExpiredCommand).b(xd9Var.a, showOfferExpiredCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showOfferExpired();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOfferExpiredCommand).a(xd9Var2.a, showOfferExpiredCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showOrd(b06 b06Var) {
        ShowOrdCommand showOrdCommand = new ShowOrdCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdCommand).b(xd9Var.a, showOrdCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showOrd(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdCommand).a(xd9Var2.a, showOrdCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showOrdDialog(b06 b06Var) {
        ShowOrdDialogCommand showOrdDialogCommand = new ShowOrdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdDialogCommand).b(xd9Var.a, showOrdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showOrdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdDialogCommand).a(xd9Var2.a, showOrdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showPromoView(zn6 zn6Var) {
        ShowPromoViewCommand showPromoViewCommand = new ShowPromoViewCommand(this, zn6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromoViewCommand).b(xd9Var.a, showPromoViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showPromoView(zn6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromoViewCommand).a(xd9Var2.a, showPromoViewCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showRedirectDialog(sy8 sy8Var, String str, String str2) {
        ShowRedirectDialogCommand showRedirectDialogCommand = new ShowRedirectDialogCommand(this, sy8Var, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRedirectDialogCommand).b(xd9Var.a, showRedirectDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showRedirectDialog(sy8Var, str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRedirectDialogCommand).a(xd9Var2.a, showRedirectDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public void showRedirectInfo(String str) {
        ShowRedirectInfoCommand showRedirectInfoCommand = new ShowRedirectInfoCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRedirectInfoCommand).b(xd9Var.a, showRedirectInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusAdmitadNewView) it.next()).showRedirectInfo(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRedirectInfoCommand).a(xd9Var2.a, showRedirectInfoCommand);
    }

    public class OpenGoToLinkInCustomTabsCommand extends wd9<BonusAdmitadNewView> {
        public final String url;

        public OpenGoToLinkInCustomTabsCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("openGoToLinkInCustomTabs", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.openGoToLinkInCustomTabs(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<BonusAdmitadNewView> {
        public final String arg0;

        public OpenUrlCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BonusAdmitadNewView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetButtonShopListenerCommand extends wd9<BonusAdmitadNewView> {
        public final String url;

        public SetButtonShopListenerCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("setButtonShopListener", k9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setButtonShopListener(this.url);
        }
    }

    public class SetDescriptionInfoCommand extends wd9<BonusAdmitadNewView> {
        public final String stringHtml;

        public SetDescriptionInfoCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("setDescriptionInfo", k9.class);
            this.stringHtml = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setDescriptionInfo(this.stringHtml);
        }
    }

    public class SetFixedCashbackCommand extends wd9<BonusAdmitadNewView> {
        public final String cashback;

        public SetFixedCashbackCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("setFixedCashback", k9.class);
            this.cashback = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setFixedCashback(this.cashback);
        }
    }

    public class SetFloatingButtonVisibilityCommand extends wd9<BonusAdmitadNewView> {
        public final boolean isVisible;

        public SetFloatingButtonVisibilityCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, boolean z) {
            super("setFloatingButtonVisibility", hx5.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setFloatingButtonVisibility(this.isVisible);
        }
    }

    public class SetHotItemsInfoCommand extends wd9<BonusAdmitadNewView> {
        public final List<yw3> hotItems;

        public SetHotItemsInfoCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, List<yw3> list) {
            super("setHotItemsInfo", k9.class);
            this.hotItems = list;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setHotItemsInfo(this.hotItems);
        }
    }

    public class SetOnlineShopInfoCommand extends wd9<BonusAdmitadNewView> {
        public final qx5 data;

        public SetOnlineShopInfoCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, qx5 qx5Var) {
            super("setOnlineShopInfo", k9.class);
            this.data = qx5Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setOnlineShopInfo(this.data);
        }
    }

    public class SetPowerCodeDescriptionCommand extends wd9<BonusAdmitadNewView> {
        public final String description;

        public SetPowerCodeDescriptionCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("setPowerCodeDescription", k9.class);
            this.description = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setPowerCodeDescription(this.description);
        }
    }

    public class SetPromocodesInfoCommand extends wd9<BonusAdmitadNewView> {
        public final List<gr6> promocodes;

        public SetPromocodesInfoCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, List<gr6> list) {
            super("setPromocodesInfo", k9.class);
            this.promocodes = list;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.setPromocodesInfo(this.promocodes);
        }
    }

    public class ShowAllTermsCommand extends wd9<BonusAdmitadNewView> {
        public final List<ux5> terms;

        public ShowAllTermsCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, List<ux5> list) {
            super("showAllTerms", k9.class);
            this.terms = list;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showAllTerms(this.terms);
        }
    }

    public class ShowFavoriteStatusCommand extends wd9<BonusAdmitadNewView> {
        public final boolean isFavorite;

        public ShowFavoriteStatusCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, boolean z) {
            super("showFavoriteStatus", hx5.class);
            this.isFavorite = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showFavoriteStatus(this.isFavorite);
        }
    }

    public class ShowLoadingCommand extends wd9<BonusAdmitadNewView> {
        public final boolean isLoading;

        public ShowLoadingCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showLoading(this.isLoading);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<BonusAdmitadNewView> {
        public final boolean isLoading;

        public ShowLoadingDialogCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, boolean z) {
            super("showLoadingDialog", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showLoadingDialog(this.isLoading);
        }
    }

    public class ShowMoreCashbackButtonCommand extends wd9<BonusAdmitadNewView> {
        public final r31 card;

        public ShowMoreCashbackButtonCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, r31 r31Var) {
            super("showMoreCashbackButton", i9.class);
            this.card = r31Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showMoreCashbackButton(this.card);
        }
    }

    public class ShowOfferExpiredCommand extends wd9<BonusAdmitadNewView> {
        public ShowOfferExpiredCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State) {
            super("showOfferExpired", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showOfferExpired();
        }
    }

    public class ShowOrdCommand extends wd9<BonusAdmitadNewView> {
        public final b06 data;

        public ShowOrdCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, b06 b06Var) {
            super("showOrd", k9.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showOrd(this.data);
        }
    }

    public class ShowOrdDialogCommand extends wd9<BonusAdmitadNewView> {
        public final b06 data;

        public ShowOrdDialogCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, b06 b06Var) {
            super("showOrdDialog", hx5.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showOrdDialog(this.data);
        }
    }

    public class ShowPromoViewCommand extends wd9<BonusAdmitadNewView> {
        public final zn6 data;

        public ShowPromoViewCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, zn6 zn6Var) {
            super("showPromoView", k9.class);
            this.data = zn6Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showPromoView(this.data);
        }
    }

    public class ShowRedirectInfoCommand extends wd9<BonusAdmitadNewView> {
        public final String description;

        public ShowRedirectInfoCommand(BonusAdmitadNewView$$State bonusAdmitadNewView$$State, String str) {
            super("showRedirectInfo", k9.class);
            this.description = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusAdmitadNewView bonusAdmitadNewView) {
            bonusAdmitadNewView.showRedirectInfo(this.description);
        }
    }
}

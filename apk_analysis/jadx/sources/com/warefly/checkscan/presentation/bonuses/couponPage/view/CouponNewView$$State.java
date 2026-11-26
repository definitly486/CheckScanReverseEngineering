package com.warefly.checkscan.presentation.bonuses.couponPage.view;

import android.text.Spanned;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.la8;
import defpackage.m32;
import defpackage.sy8;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.yw3;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CouponNewView$$State extends kh5<CouponNewView> implements CouponNewView {

    public class OpenHotItemUrlCommand extends wd9<CouponNewView> {
        public final String title;
        public final String url;

        public OpenHotItemUrlCommand(CouponNewView$$State couponNewView$$State, String str, String str2) {
            super("openHotItemUrl", hx5.class);
            this.url = str;
            this.title = str2;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.openHotItemUrl(this.url, this.title);
        }
    }

    public class SetStepsInfoCommand extends wd9<CouponNewView> {
        public final List<la8> items;
        public final String title;

        public SetStepsInfoCommand(CouponNewView$$State couponNewView$$State, String str, List<la8> list) {
            super("setStepsInfo", k9.class);
            this.title = str;
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.setStepsInfo(this.title, this.items);
        }
    }

    public class ShareCardCommand extends wd9<CouponNewView> {
        public final String cardImageLink;
        public final String cardLinkSuffix;
        public final String promoCode;
        public final String shareTitle;

        public ShareCardCommand(CouponNewView$$State couponNewView$$State, String str, String str2, String str3, String str4) {
            super("shareCard", hx5.class);
            this.cardLinkSuffix = str;
            this.shareTitle = str2;
            this.promoCode = str3;
            this.cardImageLink = str4;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.shareCard(this.cardLinkSuffix, this.shareTitle, this.promoCode, this.cardImageLink);
        }
    }

    public class ShowFavoriteStatusIsChangedCommand extends wd9<CouponNewView> {
        public final boolean isFavorite;
        public final boolean isSuccessful;

        public ShowFavoriteStatusIsChangedCommand(CouponNewView$$State couponNewView$$State, boolean z, boolean z2) {
            super("showFavoriteStatusIsChanged", hx5.class);
            this.isSuccessful = z;
            this.isFavorite = z2;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showFavoriteStatusIsChanged(this.isSuccessful, this.isFavorite);
        }
    }

    public class ShowImageCodeCommand extends wd9<CouponNewView> {
        public final String goToUrl;
        public final String imageUrl;

        public ShowImageCodeCommand(CouponNewView$$State couponNewView$$State, String str, String str2) {
            super("showImageCode", k9.class);
            this.imageUrl = str;
            this.goToUrl = str2;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showImageCode(this.imageUrl, this.goToUrl);
        }
    }

    public class ShowPromocodeCopiedCommand extends wd9<CouponNewView> {
        public final String promocode;
        public final String url;

        public ShowPromocodeCopiedCommand(CouponNewView$$State couponNewView$$State, String str, String str2) {
            super("showPromocodeCopied", hx5.class);
            this.promocode = str;
            this.url = str2;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showPromocodeCopied(this.promocode, this.url);
        }
    }

    public class ShowRedirectDialogCommand extends wd9<CouponNewView> {
        public final String logoUrl;
        public final sy8 trackingType;
        public final String url;

        public ShowRedirectDialogCommand(CouponNewView$$State couponNewView$$State, sy8 sy8Var, String str, String str2) {
            super("showRedirectDialog", hx5.class);
            this.trackingType = sy8Var;
            this.url = str;
            this.logoUrl = str2;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showRedirectDialog(this.trackingType, this.url, this.logoUrl);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void copyCode(String str) {
        CopyCodeCommand copyCodeCommand = new CopyCodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(copyCodeCommand).b(xd9Var.a, copyCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).copyCode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(copyCodeCommand).a(xd9Var2.a, copyCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void openCouponUrl(String str) {
        OpenCouponUrlCommand openCouponUrlCommand = new OpenCouponUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openCouponUrlCommand).b(xd9Var.a, openCouponUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).openCouponUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openCouponUrlCommand).a(xd9Var2.a, openCouponUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void openHotItemUrl(String str, String str2) {
        OpenHotItemUrlCommand openHotItemUrlCommand = new OpenHotItemUrlCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openHotItemUrlCommand).b(xd9Var.a, openHotItemUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).openHotItemUrl(str, str2);
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
            ((CouponNewView) it.next()).openUrl(str);
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
            ((CouponNewView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void setCouponInfo(m32 m32Var) {
        SetCouponInfoCommand setCouponInfoCommand = new SetCouponInfoCommand(this, m32Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCouponInfoCommand).b(xd9Var.a, setCouponInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).setCouponInfo(m32Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCouponInfoCommand).a(xd9Var2.a, setCouponInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void setDescriptionInfo(Spanned spanned) {
        SetDescriptionInfoCommand setDescriptionInfoCommand = new SetDescriptionInfoCommand(this, spanned);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDescriptionInfoCommand).b(xd9Var.a, setDescriptionInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).setDescriptionInfo(spanned);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDescriptionInfoCommand).a(xd9Var2.a, setDescriptionInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void setFloatingButtonVisibility(boolean z) {
        SetFloatingButtonVisibilityCommand setFloatingButtonVisibilityCommand = new SetFloatingButtonVisibilityCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setFloatingButtonVisibilityCommand).b(xd9Var.a, setFloatingButtonVisibilityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).setFloatingButtonVisibility(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setFloatingButtonVisibilityCommand).a(xd9Var2.a, setFloatingButtonVisibilityCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void setHotItemsInfo(List<yw3> list) {
        SetHotItemsInfoCommand setHotItemsInfoCommand = new SetHotItemsInfoCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setHotItemsInfoCommand).b(xd9Var.a, setHotItemsInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).setHotItemsInfo(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setHotItemsInfoCommand).a(xd9Var2.a, setHotItemsInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void setStepsInfo(String str, List<la8> list) {
        SetStepsInfoCommand setStepsInfoCommand = new SetStepsInfoCommand(this, str, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setStepsInfoCommand).b(xd9Var.a, setStepsInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).setStepsInfo(str, list);
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
            ((CouponNewView) it.next()).shareCard(str, str2, str3, str4);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareCardCommand).a(xd9Var2.a, shareCardCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showActionButtonLoading(boolean z) {
        ShowActionButtonLoadingCommand showActionButtonLoadingCommand = new ShowActionButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showActionButtonLoadingCommand).b(xd9Var.a, showActionButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showActionButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showActionButtonLoadingCommand).a(xd9Var2.a, showActionButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showBarCode(String str) {
        ShowBarCodeCommand showBarCodeCommand = new ShowBarCodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBarCodeCommand).b(xd9Var.a, showBarCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showBarCode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBarCodeCommand).a(xd9Var2.a, showBarCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showFavoriteStatus(boolean z) {
        ShowFavoriteStatusCommand showFavoriteStatusCommand = new ShowFavoriteStatusCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavoriteStatusCommand).b(xd9Var.a, showFavoriteStatusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showFavoriteStatus(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavoriteStatusCommand).a(xd9Var2.a, showFavoriteStatusCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showFavoriteStatusIsChanged(boolean z, boolean z2) {
        ShowFavoriteStatusIsChangedCommand showFavoriteStatusIsChangedCommand = new ShowFavoriteStatusIsChangedCommand(this, z, z2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavoriteStatusIsChangedCommand).b(xd9Var.a, showFavoriteStatusIsChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showFavoriteStatusIsChanged(z, z2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavoriteStatusIsChangedCommand).a(xd9Var2.a, showFavoriteStatusIsChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showImageCode(String str, String str2) {
        ShowImageCodeCommand showImageCodeCommand = new ShowImageCodeCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showImageCodeCommand).b(xd9Var.a, showImageCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showImageCode(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showImageCodeCommand).a(xd9Var2.a, showImageCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showLoadingDialog(boolean z) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showLoadingDialog(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showPromocode(String str) {
        ShowPromocodeCommand showPromocodeCommand = new ShowPromocodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeCommand).b(xd9Var.a, showPromocodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showPromocode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeCommand).a(xd9Var2.a, showPromocodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showPromocodeCopied(String str, String str2) {
        ShowPromocodeCopiedCommand showPromocodeCopiedCommand = new ShowPromocodeCopiedCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeCopiedCommand).b(xd9Var.a, showPromocodeCopiedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showPromocodeCopied(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeCopiedCommand).a(xd9Var2.a, showPromocodeCopiedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showQrCode(String str) {
        ShowQrCodeCommand showQrCodeCommand = new ShowQrCodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showQrCodeCommand).b(xd9Var.a, showQrCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showQrCode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showQrCodeCommand).a(xd9Var2.a, showQrCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showRedirectDialog(sy8 sy8Var, String str, String str2) {
        ShowRedirectDialogCommand showRedirectDialogCommand = new ShowRedirectDialogCommand(this, sy8Var, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRedirectDialogCommand).b(xd9Var.a, showRedirectDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showRedirectDialog(sy8Var, str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRedirectDialogCommand).a(xd9Var2.a, showRedirectDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public void showRequestInfoError() {
        ShowRequestInfoErrorCommand showRequestInfoErrorCommand = new ShowRequestInfoErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRequestInfoErrorCommand).b(xd9Var.a, showRequestInfoErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponNewView) it.next()).showRequestInfoError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRequestInfoErrorCommand).a(xd9Var2.a, showRequestInfoErrorCommand);
    }

    public class CopyCodeCommand extends wd9<CouponNewView> {
        public final String value;

        public CopyCodeCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("copyCode", hx5.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.copyCode(this.value);
        }
    }

    public class OpenCouponUrlCommand extends wd9<CouponNewView> {
        public final String url;

        public OpenCouponUrlCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("openCouponUrl", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.openCouponUrl(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<CouponNewView> {
        public final String arg0;

        public OpenUrlCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CouponNewView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetCouponInfoCommand extends wd9<CouponNewView> {
        public final m32 data;

        public SetCouponInfoCommand(CouponNewView$$State couponNewView$$State, m32 m32Var) {
            super("setCouponInfo", k9.class);
            this.data = m32Var;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.setCouponInfo(this.data);
        }
    }

    public class SetDescriptionInfoCommand extends wd9<CouponNewView> {
        public final Spanned stringHtml;

        public SetDescriptionInfoCommand(CouponNewView$$State couponNewView$$State, Spanned spanned) {
            super("setDescriptionInfo", k9.class);
            this.stringHtml = spanned;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.setDescriptionInfo(this.stringHtml);
        }
    }

    public class SetFloatingButtonVisibilityCommand extends wd9<CouponNewView> {
        public final boolean isVisible;

        public SetFloatingButtonVisibilityCommand(CouponNewView$$State couponNewView$$State, boolean z) {
            super("setFloatingButtonVisibility", hx5.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.setFloatingButtonVisibility(this.isVisible);
        }
    }

    public class SetHotItemsInfoCommand extends wd9<CouponNewView> {
        public final List<yw3> hotItems;

        public SetHotItemsInfoCommand(CouponNewView$$State couponNewView$$State, List<yw3> list) {
            super("setHotItemsInfo", k9.class);
            this.hotItems = list;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.setHotItemsInfo(this.hotItems);
        }
    }

    public class ShowActionButtonLoadingCommand extends wd9<CouponNewView> {
        public final boolean isLoading;

        public ShowActionButtonLoadingCommand(CouponNewView$$State couponNewView$$State, boolean z) {
            super("showActionButtonLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showActionButtonLoading(this.isLoading);
        }
    }

    public class ShowBarCodeCommand extends wd9<CouponNewView> {
        public final String value;

        public ShowBarCodeCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("showBarCode", k9.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showBarCode(this.value);
        }
    }

    public class ShowFavoriteStatusCommand extends wd9<CouponNewView> {
        public final boolean isFavorite;

        public ShowFavoriteStatusCommand(CouponNewView$$State couponNewView$$State, boolean z) {
            super("showFavoriteStatus", hx5.class);
            this.isFavorite = z;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showFavoriteStatus(this.isFavorite);
        }
    }

    public class ShowLoadingCommand extends wd9<CouponNewView> {
        public final boolean isLoading;

        public ShowLoadingCommand(CouponNewView$$State couponNewView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showLoading(this.isLoading);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<CouponNewView> {
        public final boolean isLoading;

        public ShowLoadingDialogCommand(CouponNewView$$State couponNewView$$State, boolean z) {
            super("showLoadingDialog", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showLoadingDialog(this.isLoading);
        }
    }

    public class ShowPromocodeCommand extends wd9<CouponNewView> {
        public final String value;

        public ShowPromocodeCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("showPromocode", k9.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showPromocode(this.value);
        }
    }

    public class ShowQrCodeCommand extends wd9<CouponNewView> {
        public final String value;

        public ShowQrCodeCommand(CouponNewView$$State couponNewView$$State, String str) {
            super("showQrCode", k9.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showQrCode(this.value);
        }
    }

    public class ShowRequestInfoErrorCommand extends wd9<CouponNewView> {
        public ShowRequestInfoErrorCommand(CouponNewView$$State couponNewView$$State) {
            super("showRequestInfoError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CouponNewView couponNewView) {
            couponNewView.showRequestInfoError();
        }
    }
}

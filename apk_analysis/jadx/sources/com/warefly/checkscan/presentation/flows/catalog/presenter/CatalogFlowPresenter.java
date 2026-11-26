package com.warefly.checkscan.presentation.flows.catalog.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import defpackage.gg7;
import defpackage.kd;
import defpackage.lf7;
import defpackage.mh7;
import defpackage.nf7;
import defpackage.og7;
import defpackage.ph7;
import defpackage.qd;
import defpackage.sf7;
import defpackage.ud;
import defpackage.uf7;
import defpackage.uv7;
import defpackage.wd;

/* JADX INFO: loaded from: classes5.dex */
public final class CatalogFlowPresenter extends BasePresenter<CatalogFlowView> {
    private final Deeplink.Catalog deeplink;

    public CatalogFlowPresenter(Deeplink.Catalog catalog) {
        catalog.getClass();
        this.deeplink = catalog;
    }

    private final void loadAdmitad(long j) {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new lf7(j));
        }
    }

    private final void loadAllCategories() {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(uf7.a);
        }
    }

    private final void loadBonusProgram(long j) {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new ph7(j));
        }
    }

    private final void loadCategory(int i, String str) {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new mh7(i, str, (kd.o0) null, uv7.Category, 12));
        }
    }

    private final void loadCoupon(long j) {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new gg7(j));
        }
    }

    private final void loadFavorites() {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new og7(true));
        }
    }

    private final void loadOnlineShop(int i) {
        new kd.e.a.C0234a.f.c(i, "Deeplink").a();
        new kd.e.d.g.C0251d(ud.c(i, "Deeplink")).a();
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new lf7(i));
        }
    }

    private final void loadPromocode(int i) {
        new wd(ud.c(i, "Deeplink")).a();
        new qd(i, "Deeplink").a();
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new gg7(i));
        }
    }

    private final void loadSearch(String str) {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new sf7(str));
        }
    }

    private final void loadSelection(int i, String str) {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(new mh7(i, str, (kd.o0) null, uv7.Selection, 12));
        }
    }

    private final void loadSpecials() {
        CatalogFlowView catalogFlowView = (CatalogFlowView) getViewState();
        if (catalogFlowView != null) {
            catalogFlowView.setLaunchScreen(nf7.a);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        Deeplink.Catalog catalog = this.deeplink;
        if (catalog instanceof Deeplink.Catalog.BonusesSearch) {
            String str = ((Deeplink.Catalog.BonusesSearch) catalog).d;
            if (str != null) {
                loadSearch(str);
                return;
            }
            return;
        }
        if (catalog instanceof Deeplink.Catalog.Selection) {
            int i = ((Deeplink.Catalog.Selection) catalog).d;
            String str2 = ((Deeplink.Catalog.Selection) catalog).e;
            loadSelection(i, str2 != null ? str2 : "");
            return;
        }
        if (catalog instanceof Deeplink.Catalog.Admitad) {
            loadAdmitad(((Deeplink.Catalog.Admitad) catalog).d);
            return;
        }
        if (catalog instanceof Deeplink.Catalog.Coupon) {
            loadCoupon(((Deeplink.Catalog.Coupon) catalog).d);
            return;
        }
        if (catalog instanceof Deeplink.Catalog.OnlineShop) {
            loadOnlineShop(((Deeplink.Catalog.OnlineShop) catalog).d);
            return;
        }
        if (catalog instanceof Deeplink.Catalog.Promocode) {
            loadPromocode(((Deeplink.Catalog.Promocode) catalog).d);
            return;
        }
        if (catalog instanceof Deeplink.Catalog.Category) {
            int i2 = ((Deeplink.Catalog.Category) catalog).d;
            String str3 = ((Deeplink.Catalog.Category) catalog).e;
            loadCategory(i2, str3 != null ? str3 : "");
        } else {
            if (catalog instanceof Deeplink.Catalog.Favorites) {
                loadFavorites();
                return;
            }
            if (catalog instanceof Deeplink.Catalog.Specials) {
                loadSpecials();
            } else if (catalog instanceof Deeplink.Catalog.BonusProgram) {
                loadBonusProgram(((Deeplink.Catalog.BonusProgram) catalog).d);
            } else if (catalog instanceof Deeplink.Catalog.OnlineShopsAllCategories) {
                loadAllCategories();
            }
        }
    }
}

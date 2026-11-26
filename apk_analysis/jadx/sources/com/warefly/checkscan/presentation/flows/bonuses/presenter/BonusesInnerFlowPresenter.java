package com.warefly.checkscan.presentation.flows.bonuses.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.gg7;
import defpackage.jh7;
import defpackage.kd;
import defpackage.lf7;
import defpackage.mh7;
import defpackage.nf7;
import defpackage.pg7;
import defpackage.rd;
import defpackage.sq0;
import defpackage.uf7;
import defpackage.uv7;
import defpackage.xd;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesInnerFlowPresenter extends BasePresenter<BonusesInnerFlow> {
    private final sq0 flow;
    private final int id;
    private final String toolbarTitle;

    /* JADX INFO: loaded from: classes.dex */
    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[sq0.values().length];
            try {
                iArr[sq0.CATEGORY_FLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[sq0.SELECTION_FLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[sq0.TOP_FLOW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[sq0.ONLINE_SHOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[sq0.SPECIALS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[sq0.CATEGORIES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[sq0.COUPON.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[sq0.COUPON_SEARCH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[sq0.HOW_GET_CASHBACK_SLIDES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[sq0.FAVORITE_PREVIEWS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            a = iArr;
        }
    }

    public BonusesInnerFlowPresenter(sq0 sq0Var, int i, String str) {
        sq0Var.getClass();
        str.getClass();
        this.flow = sq0Var;
        this.id = i;
        this.toolbarTitle = str;
    }

    private final void loadCategories() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(uf7.a);
        }
    }

    private final void loadCategoriesFlow() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new mh7(this.id, this.toolbarTitle, kd.o0.Category, uv7.Category, 4));
        }
    }

    private final void loadCoupon() {
        new xd(this.id).a();
        new rd(this.id).a();
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new gg7(this.id));
        }
    }

    private final void loadCouponFromSearch() {
        new xd(this.id).a();
        new rd(this.id).a();
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new gg7(this.id));
        }
    }

    private final void loadFavoritePreviews() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new pg7(this.id, this.toolbarTitle));
        }
    }

    private final void loadHowGetCashback() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new jh7());
        }
    }

    private final void loadSelection() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new mh7(this.id, this.toolbarTitle, kd.o0.Bonuses, uv7.Selection, 4));
        }
    }

    private final void loadShopPage() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new lf7(this.id));
        }
    }

    private final void loadSpecials() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(nf7.a);
        }
    }

    private final void loadTopSelection() {
        BonusesInnerFlow bonusesInnerFlow = (BonusesInnerFlow) getViewState();
        if (bonusesInnerFlow != null) {
            bonusesInnerFlow.setLaunchScreen(new mh7(this.id, this.toolbarTitle, true, kd.o0.Bonuses, uv7.TopSelection));
        }
    }

    public final sq0 getFlow() {
        return this.flow;
    }

    public final int getId() {
        return this.id;
    }

    public final String getToolbarTitle() {
        return this.toolbarTitle;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        switch (a.a[this.flow.ordinal()]) {
            case 1:
                loadCategoriesFlow();
                break;
            case 2:
                loadSelection();
                break;
            case 3:
                loadTopSelection();
                break;
            case 4:
                loadShopPage();
                break;
            case 5:
                loadSpecials();
                break;
            case 6:
                loadCategories();
                break;
            case 7:
                loadCoupon();
                break;
            case 8:
                loadCouponFromSearch();
                break;
            case 9:
                loadHowGetCashback();
                break;
            case 10:
                loadFavoritePreviews();
                break;
        }
    }
}

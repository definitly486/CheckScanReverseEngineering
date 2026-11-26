package com.warefly.checkscan.presentation.favorite.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.favorite.presenter.FavoritePresenter;
import defpackage.ag;
import defpackage.b06;
import defpackage.b36;
import defpackage.bm0;
import defpackage.bs0;
import defpackage.bv7;
import defpackage.cs0;
import defpackage.cw8;
import defpackage.e08;
import defpackage.er6;
import defpackage.gh4;
import defpackage.gl0;
import defpackage.h08;
import defpackage.h6;
import defpackage.hi0;
import defpackage.hl0;
import defpackage.j59;
import defpackage.k57;
import defpackage.kd;
import defpackage.kl0;
import defpackage.kx2;
import defpackage.ll0;
import defpackage.ll3;
import defpackage.lq1;
import defpackage.m4;
import defpackage.md;
import defpackage.me0;
import defpackage.mz7;
import defpackage.n4;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.or4;
import defpackage.p08;
import defpackage.q4;
import defpackage.qf7;
import defpackage.qm3;
import defpackage.qn1;
import defpackage.qp1;
import defpackage.qx1;
import defpackage.rb;
import defpackage.rj;
import defpackage.rx5;
import defpackage.sd5;
import defpackage.sq0;
import defpackage.sx5;
import defpackage.td;
import defpackage.th7;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uy0;
import defpackage.yb8;
import defpackage.yl0;
import defpackage.yv0;
import defpackage.yz7;
import defpackage.zv8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FavoritePresenter extends BasePresenter<FavoriteView> implements bv7, com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a.InterfaceC0161a<cs0, j59> {
    public static final a Companion = new a();
    private static final int DOUBLE_COLUMN = 2;
    private static final int PROMOCODES_COUNT_VISIBLE = 2;
    private static final String PROMOCODES_TITLE = "Промокоды и купоны";
    private static final int SINGLE_COLUMN = 1;
    private boolean arePromocodesEmpty;
    private boolean areShopsEmpty;
    private final com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a<cs0, j59> controller;
    private final uf3 flowRouter;
    private final bm0 interactor;
    private final boolean isFavoriteArgs;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[bs0.values().length];
            try {
                iArr[bs0.TITLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[bs0.SHOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[bs0.BUTTON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[bs0.PROMOCODES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final /* synthetic */ class c extends qm3 implements ll3<j59> {
        @Override // defpackage.ll3
        public final j59 invoke() {
            ((FavoritePresenter) this.receiver).invalidateAndSubscribe();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<List<? extends cs0>, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends cs0> list) {
            List<? extends cs0> list2 = list;
            FavoriteView favoriteView = (FavoriteView) FavoritePresenter.this.getViewState();
            if (favoriteView != null) {
                list2.getClass();
                favoriteView.showData(list2);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<List<? extends sx5>, j59> {
        public static final e f = new e(1);

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends sx5> list) {
            return j59.a;
        }
    }

    public static final class f extends gh4 implements ll3<j59> {
        public static final f f = new f(0);

        @Override // defpackage.ll3
        public final j59 invoke() {
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            FavoritePresenter.this.loadData();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<b36<? extends Integer, ? extends List<? extends er6>>, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(b36<? extends Integer, ? extends List<? extends er6>> b36Var) {
            b36<? extends Integer, ? extends List<? extends er6>> b36Var2 = b36Var;
            FavoritePresenter favoritePresenter = FavoritePresenter.this;
            FavoriteView favoriteView = (FavoriteView) favoritePresenter.getViewState();
            if (favoriteView != null) {
                b36Var2.getClass();
                favoriteView.showPromocodes(favoritePresenter.formPromocodes(b36Var2));
            }
            favoritePresenter.loadData();
            return j59.a;
        }
    }

    public static final class i extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(boolean z) {
            super(0);
            this.g = z;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            FavoriteView favoriteView = (FavoriteView) FavoritePresenter.this.getViewState();
            if (favoriteView != null) {
                favoriteView.showFavouriteStatusChanged(this.g);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<b36<? extends Integer, ? extends List<? extends er6>>, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(b36<? extends Integer, ? extends List<? extends er6>> b36Var) {
            b36<? extends Integer, ? extends List<? extends er6>> b36Var2 = b36Var;
            FavoritePresenter favoritePresenter = FavoritePresenter.this;
            FavoriteView favoriteView = (FavoriteView) favoritePresenter.getViewState();
            if (favoriteView != null) {
                b36Var2.getClass();
                favoriteView.showPromocodes(favoritePresenter.formPromocodes(b36Var2));
            }
            FavoriteView favoriteView2 = (FavoriteView) favoritePresenter.getViewState();
            if (favoriteView2 != null) {
                favoriteView2.showNoShops(((List) b36Var2.c).isEmpty() && favoritePresenter.getAreShopsEmpty());
            }
            return j59.a;
        }
    }

    public FavoritePresenter(uf3 uf3Var, bm0 bm0Var, boolean z) {
        uf3Var.getClass();
        bm0Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = bm0Var;
        this.isFavoriteArgs = z;
        this.arePromocodesEmpty = true;
        this.areShopsEmpty = true;
        this.controller = new com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a<>(new c(0, this, FavoritePresenter.class, "invalidateAndSubscribe", "invalidateAndSubscribe()V", 0), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<cs0> formPromocodes(b36<Integer, ? extends List<er6>> b36Var) {
        List list = (List) b36Var.c;
        int iIntValue = b36Var.b.intValue();
        if (iIntValue <= 0) {
            this.arePromocodesEmpty = true;
            return kx2.b;
        }
        this.arePromocodesEmpty = false;
        if (iIntValue <= 2) {
            return qn1.h0(or4.a(list, 0, 2), u96.h(new cw8(new zv8())));
        }
        return qn1.h0(u96.h(new sd5(new yv0(iIntValue))), qn1.h0(or4.a(list, 0, 2), u96.h(new cw8(new zv8()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateAndSubscribe() {
        boolean z = this.isFavoriteArgs;
        bm0 bm0Var = this.interactor;
        disposeOnDestroy(yb8.h((z ? bm0Var.k : bm0Var.j).g(ne7.c).e(rj.a()), null, new d(), 3), "invalidateAndSubscribe");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        yz7 yz7Var;
        boolean z = this.isFavoriteArgs;
        bm0 bm0Var = this.interactor;
        int i2 = 1;
        if (z) {
            yz7Var = new yz7(bm0Var.a.l(0, Integer.valueOf(bm0Var.e)), new gl0(new m4(bm0Var, 1), 0));
        } else {
            p08 p08VarC = bm0Var.a.c(0, Integer.valueOf(bm0Var.e));
            final n4 n4Var = new n4(bm0Var, i2);
            yz7Var = new yz7(p08VarC, new qx1() { // from class: vl0
                @Override // defpackage.qx1
                public final void accept(Object obj) {
                    n4Var.invoke(obj);
                }
            });
        }
        disposeOnDestroy(yb8.f(yz7Var.i(ne7.c).f(rj.a()), null, e.f, 1), "loadData");
    }

    private final void loadPromocodes() {
        BasePresenter.disposeOnDestroy$default(this, yb8.d(this.interactor.b(this.isFavoriteArgs).i(ne7.c).f(rj.a()), new g(), new h()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFavoritePromocode$lambda$0(boolean z, int i2, FavoritePresenter favoritePresenter) {
        if (z) {
            new kd.e.b.C0241b(i2).a();
            new md(i2).a();
        } else {
            new kd.e.b.f(i2).a();
            new td(i2).a();
        }
        favoritePresenter.refreshPromocodes();
    }

    public final boolean getArePromocodesEmpty() {
        return this.arePromocodesEmpty;
    }

    public final boolean getAreShopsEmpty() {
        return this.areShopsEmpty;
    }

    public final int getSpanCount(int i2) {
        bs0.Companion.getClass();
        for (bs0 bs0Var : bs0.values()) {
            if (bs0Var.ordinal() == i2) {
                int i3 = b.a[bs0Var.ordinal()];
                if (i3 == 1 || i3 == 2 || i3 == 3) {
                    return 2;
                }
                if (i3 == 4) {
                    return 1;
                }
                me0.e();
                return 0;
            }
        }
        ag.g("Array contains no element matching the predicate.");
        return 0;
    }

    public final void loadMoreData() {
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.controller.a().i(ne7.c).f(rj.a()), null, f.f, 1), null, 1, null);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a.InterfaceC0161a
    public mz7<k57<Boolean>> loadNextPage(int i2, j59 j59Var) {
        j59Var.getClass();
        boolean z = this.isFavoriteArgs;
        bm0 bm0Var = this.interactor;
        int i3 = 0;
        return z ? new e08(bm0Var.a.l(i2, Integer.valueOf(bm0Var.e)), new hl0(new q4(bm0Var, 1), i3)) : new e08(bm0Var.a.c(i2, Integer.valueOf(bm0Var.e)), new kl0(new rb(bm0Var, 1), i3));
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // defpackage.bv7
    public void onConfirmAdultClick() {
        this.interactor.a.e();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        bm0 bm0Var = this.interactor;
        hi0<List<cs0>> hi0Var = bm0Var.h;
        kx2 kx2Var = kx2.b;
        hi0Var.onNext(kx2Var);
        bm0Var.i.onNext(kx2Var);
        super.onDestroy();
    }

    public final void onFavoritePromocode(final int i2, final boolean z) {
        lq1 lq1VarF = this.interactor.e(i2, z).i(ne7.c).f(rj.a());
        uy0 uy0Var = new uy0(new h6() { // from class: a63
            @Override // defpackage.h6
            public final void run() {
                FavoritePresenter.onFavoritePromocode$lambda$0(z, i2, this);
            }
        });
        lq1VarF.b(uy0Var);
        BasePresenter.disposeOnDestroy$default(this, uy0Var, null, 1, null);
    }

    @Override // defpackage.bv7
    public void onFavouriteClick(int i2, boolean z) {
        bm0 bm0Var = this.interactor;
        boolean z2 = this.isFavoriteArgs;
        qp1 qp1VarT = bm0Var.a.t(i2, z);
        mz7<rx5> mz7VarJ = bm0Var.b.j(i2);
        ll0 ll0Var = new ll0(new yl0(bm0Var, i2, z2), 0);
        mz7VarJ.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.g(qp1VarT.c(new h08(mz7VarJ, ll0Var)).i(ne7.c).f(rj.a()), null, new i(z), 1), null, 1, null);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.controller.b(j59.a);
        loadPromocodes();
    }

    public final void onMorePromocodes() {
        this.flowRouter.j(new th7(null, 0, 3, this.isFavoriteArgs));
    }

    @Override // defpackage.bv7
    public void onOrdClick(b06 b06Var) {
        b06Var.getClass();
        FavoriteView favoriteView = (FavoriteView) getViewState();
        if (favoriteView != null) {
            favoriteView.showOrdBottomSheet(b06Var);
        }
    }

    public final void onPromocodeClicked(int i2) {
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.COUPON, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    @Override // defpackage.bv7
    public void onShopClick(int i2) {
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.ONLINE_SHOP, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    public final void refreshPromocodes() {
        BasePresenter.disposeOnDestroy$default(this, yb8.f(this.interactor.b(this.isFavoriteArgs).i(ne7.c).f(rj.a()), null, new j(), 1), null, 1, null);
    }

    public final void setArePromocodesEmpty(boolean z) {
        this.arePromocodesEmpty = z;
    }

    public final void setAreShopsEmpty(boolean z) {
        this.areShopsEmpty = z;
    }

    public final void setShopsEmpty(boolean z) {
        this.areShopsEmpty = z;
    }
}

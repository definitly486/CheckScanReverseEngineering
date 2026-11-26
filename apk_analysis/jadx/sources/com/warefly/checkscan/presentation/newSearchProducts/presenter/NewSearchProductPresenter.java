package com.warefly.checkscan.presentation.newSearchProducts.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView;
import defpackage.ae1;
import defpackage.b36;
import defpackage.b9;
import defpackage.c9;
import defpackage.gh4;
import defpackage.hn5;
import defpackage.j59;
import defpackage.jh;
import defpackage.kd;
import defpackage.ll3;
import defpackage.mn5;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.o61;
import defpackage.oa4;
import defpackage.p08;
import defpackage.p61;
import defpackage.rj;
import defpackage.s26;
import defpackage.s61;
import defpackage.uf3;
import defpackage.ui6;
import defpackage.xd1;
import defpackage.yf7;
import defpackage.zf7;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class NewSearchProductPresenter extends BasePresenter<NewSearchProductsView> {
    private final p61 catalogInteractor;
    private final xd1 cheueInteractor;
    private final uf3 flowRouter;
    private boolean loadShop;
    private s26<ui6> productsPaginator;
    private s26<oa4> shopsPaginator;

    public static final class a extends gh4 implements nl3<Integer, mz7<List<? extends ui6>>> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends ui6>> invoke(Integer num) {
            int iIntValue = num.intValue();
            p61 p61Var = NewSearchProductPresenter.this.catalogInteractor;
            p61Var.getClass();
            if (iIntValue >= 0) {
                return new p08(p61Var.g.g(Integer.valueOf(iIntValue), this.g), new o61(s61.f)).i(ne7.c).f(rj.a());
            }
            c9.f(jh.b(iIntValue, "Page must be non-negative, was "));
            return null;
        }
    }

    public static final class b extends gh4 implements ll3<NewSearchProductsView> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final NewSearchProductsView invoke() {
            return (NewSearchProductsView) NewSearchProductPresenter.this.getViewState();
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            NewSearchProductPresenter.this.loadShop = true;
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Integer, mz7<List<? extends oa4>>> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends oa4>> invoke(Integer num) {
            int iIntValue = num.intValue();
            xd1 xd1Var = NewSearchProductPresenter.this.cheueInteractor;
            xd1Var.getClass();
            mz7 mz7VarJ = xd1Var.a.j(iIntValue, this.g);
            b9 b9Var = new b9(new ae1(xd1Var, 0), 2);
            mz7VarJ.getClass();
            return new p08(mz7VarJ, b9Var).i(ne7.c).f(rj.a());
        }
    }

    public static final class e extends gh4 implements ll3<NewSearchProductsView> {
        public e() {
            super(0);
        }

        @Override // defpackage.ll3
        public final NewSearchProductsView invoke() {
            return (NewSearchProductsView) NewSearchProductPresenter.this.getViewState();
        }
    }

    public NewSearchProductPresenter(p61 p61Var, xd1 xd1Var, uf3 uf3Var) {
        p61Var.getClass();
        xd1Var.getClass();
        uf3Var.getClass();
        this.catalogInteractor = p61Var;
        this.cheueInteractor = xd1Var;
        this.flowRouter = uf3Var;
    }

    private final void loadNextItems() {
        if (this.loadShop) {
            loadNextShopsInCheques();
        } else {
            loadNextProductInCheques();
        }
    }

    private final void loadNextProductInCheques() {
        s26<ui6> s26Var = this.productsPaginator;
        if (s26Var != null) {
            s26Var.a();
        }
    }

    private final void loadNextShopsInCheques() {
        s26<oa4> s26Var = this.shopsPaginator;
        if (s26Var != null) {
            s26Var.a();
        }
    }

    public final void onBackClick() {
        this.flowRouter.c();
    }

    public final void onChequeClick(int i) {
        new kd.g.c.a().a();
        uf3 uf3Var = this.flowRouter;
        yf7 yf7Var = new yf7(i);
        uf3Var.getClass();
        uf3Var.c.d(yf7Var);
    }

    public final void onChipClick(String str) {
        str.getClass();
        NewSearchProductsView newSearchProductsView = (NewSearchProductsView) getViewState();
        if (newSearchProductsView != null) {
            newSearchProductsView.setItemFromChip(str);
        }
    }

    public final void onProductInChequeClick(int i) {
        Map mapSingletonMap = Collections.singletonMap("Search products", "SP_ITEM_FROM_CHEQUE_CLICKED");
        mapSingletonMap.getClass();
        new kd.h0.b.a("Products events", mapSingletonMap).a();
        this.flowRouter.j(new zf7(i));
    }

    public final void scrollChanged(int i, int i2, int i3) {
        if ((((double) i) / ((double) (i3 - i2))) * 100.0d > 20.0d) {
            loadNextItems();
        }
    }

    public final void searchItem(String str) {
        str.getClass();
        new kd.g.c.b(new b36("Search", str)).a();
        s26<ui6> s26Var = this.productsPaginator;
        if (s26Var != null) {
            s26Var.c.release();
        }
        s26<oa4> s26Var2 = this.shopsPaginator;
        if (s26Var2 != null) {
            s26Var2.c.release();
        }
        NewSearchProductsView newSearchProductsView = (NewSearchProductsView) getViewState();
        if (newSearchProductsView != null) {
            newSearchProductsView.hideShops();
        }
        NewSearchProductsView newSearchProductsView2 = (NewSearchProductsView) getViewState();
        if (newSearchProductsView2 != null) {
            newSearchProductsView2.hideProducts();
        }
        this.loadShop = false;
        s26<ui6> s26Var3 = new s26<>(new a(str), new hn5(new b(), new c()));
        this.productsPaginator = s26Var3;
        s26Var3.c();
        s26<oa4> s26Var4 = new s26<>(new d(str), new mn5(new e()));
        this.shopsPaginator = s26Var4;
        s26Var4.c();
    }
}

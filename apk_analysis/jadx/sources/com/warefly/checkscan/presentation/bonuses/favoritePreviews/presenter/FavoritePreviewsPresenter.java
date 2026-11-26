package com.warefly.checkscan.presentation.bonuses.favoritePreviews.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView;
import defpackage.a32;
import defpackage.b06;
import defpackage.bd2;
import defpackage.bm0;
import defpackage.bm3;
import defpackage.bv7;
import defpackage.c63;
import defpackage.cs0;
import defpackage.df3;
import defpackage.e02;
import defpackage.en1;
import defpackage.gh4;
import defpackage.gm0;
import defpackage.j59;
import defpackage.kd;
import defpackage.lf7;
import defpackage.m13;
import defpackage.mn0;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.rd3;
import defpackage.se3;
import defpackage.ta8;
import defpackage.tf3;
import defpackage.uf3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FavoritePreviewsPresenter extends BasePresenter<FavoritePreviewsView> implements bv7 {
    private final c63 args;
    private tf3<cs0> favoritesPaginator;
    private final uf3 flowRouter;
    private final bm0 interactor;

    public final class a implements tf3.d<cs0> {
        public a() {
        }

        @Override // tf3.d
        public final void a(Throwable th) {
            th.getClass();
        }

        @Override // tf3.d
        public final void b() {
        }

        @Override // tf3.d
        public final void showData(List list) {
            FavoritePreviewsView favoritePreviewsView;
            list.getClass();
            if (list.isEmpty() || (favoritePreviewsView = (FavoritePreviewsView) FavoritePreviewsPresenter.this.getViewState()) == null) {
                return;
            }
            favoritePreviewsView.showData(list);
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.favoritePreviews.presenter.FavoritePreviewsPresenter$onFavouriteClick$1", f = "FavoritePreviewsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public final /* synthetic */ boolean m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z, e02<? super b> e02Var) {
            super(2, e02Var);
            this.m = z;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return FavoritePreviewsPresenter.this.new b(this.m, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((b) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            FavoritePreviewsView favoritePreviewsView = (FavoritePreviewsView) FavoritePreviewsPresenter.this.getViewState();
            if (favoritePreviewsView != null) {
                favoritePreviewsView.showFavouriteStatusChanged(this.m);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Integer, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            int iIntValue = num.intValue();
            FavoritePreviewsPresenter favoritePreviewsPresenter = FavoritePreviewsPresenter.this;
            bm0 bm0Var = favoritePreviewsPresenter.interactor;
            favoritePreviewsPresenter.launchInPresenter(m13.c(se3.a(bm0Var.a.n(iIntValue, bm0Var.e), new gm0(bm0Var, iIntValue, null)), "loadFavorites", null, 2));
            return j59.a;
        }
    }

    public FavoritePreviewsPresenter(uf3 uf3Var, bm0 bm0Var, c63 c63Var) {
        uf3Var.getClass();
        bm0Var.getClass();
        c63Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = bm0Var;
        this.args = c63Var;
    }

    private final void sendSelectedFrom(int i) {
        new kd.e.a.C0234a.f.d(i).a();
        new kd.e.d.g.f(i).a();
    }

    private final void sendTopFromList(int i) {
        new kd.e.c.h.a(i).a();
    }

    private final void setUpFavoritesPaginator() {
        tf3<cs0> tf3Var = new tf3<>(new c(), getPresenterScope(), new a(), this.interactor.g);
        tf3Var.b();
        this.favoritesPaginator = tf3Var;
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // defpackage.bv7
    public void onConfirmAdultClick() {
        this.interactor.a.e();
    }

    @Override // defpackage.bv7
    public void onFavouriteClick(int i, boolean z) {
        Object next;
        bm0 bm0Var = this.interactor;
        Iterable iterable = (Iterable) bm0Var.f.getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj instanceof en1) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((en1) next).a.a != i);
        en1 en1Var = (en1) next;
        launchInPresenter(m13.c(new df3(en1Var != null ? new df3(bm0Var.a.a(i, !en1Var.a.c), new mn0(bm0Var, i, null)) : new rd3(Boolean.FALSE), new b(z, null)), "onFavouriteClick", null, 2));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        FavoritePreviewsView favoritePreviewsView;
        super.onFirstViewAttach();
        if (!ta8.M(this.args.a) && (favoritePreviewsView = (FavoritePreviewsView) getViewState()) != null) {
            favoritePreviewsView.setToolbarTitle(this.args.a);
        }
        setUpFavoritesPaginator();
    }

    @Override // defpackage.bv7
    public void onOrdClick(b06 b06Var) {
        b06Var.getClass();
        FavoritePreviewsView favoritePreviewsView = (FavoritePreviewsView) getViewState();
        if (favoritePreviewsView != null) {
            favoritePreviewsView.showOrdBottomSheet(b06Var);
        }
    }

    public final void onScrollEnd() {
        tf3<cs0> tf3Var = this.favoritesPaginator;
        if (tf3Var != null) {
            tf3Var.a();
        }
    }

    @Override // defpackage.bv7
    public void onShopClick(int i) {
        sendTopFromList(i);
        sendSelectedFrom(i);
        this.flowRouter.d(new lf7(i));
    }
}

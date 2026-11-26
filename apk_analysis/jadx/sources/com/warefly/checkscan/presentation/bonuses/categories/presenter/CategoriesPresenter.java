package com.warefly.checkscan.presentation.bonuses.categories.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.bm0;
import defpackage.cs0;
import defpackage.e18;
import defpackage.gh4;
import defpackage.kd;
import defpackage.ll3;
import defpackage.m71;
import defpackage.mh7;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.qm0;
import defpackage.qx1;
import defpackage.rj;
import defpackage.s26;
import defpackage.sz7;
import defpackage.ud;
import defpackage.uf3;
import defpackage.ul0;
import defpackage.uv7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CategoriesPresenter extends BasePresenter<CategoriesView> {
    private s26<cs0> categoriesPaginator;
    private uf3 flowRouter;
    private bm0 interactor;

    public static final class a implements s26.m<cs0> {
        public final c a;

        public a(c cVar) {
            this.a = cVar;
        }

        @Override // s26.m
        public final void a(Throwable th) {
            ((CategoriesView) this.a.invoke()).hideLoading(true);
        }

        @Override // s26.m
        public final void b() {
        }

        @Override // s26.m
        public final void c(boolean z) {
        }

        @Override // s26.m
        public final void d(List list, boolean z) {
            list.getClass();
            c cVar = this.a;
            ((CategoriesView) cVar.invoke()).hideLoading(true);
            ((CategoriesView) cVar.invoke()).showCategories(list);
        }

        @Override // s26.m
        public final void e(boolean z) {
        }

        @Override // s26.m
        public final void f(boolean z) {
        }

        @Override // s26.m
        public final void g(boolean z) {
            ((CategoriesView) this.a.invoke()).hideLoading(true);
        }

        @Override // s26.m
        public final void h(boolean z) {
            ((CategoriesView) this.a.invoke()).hideLoading(true);
        }
    }

    public static final class b extends gh4 implements nl3<Integer, mz7<List<? extends cs0>>> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends cs0>> invoke(Integer num) {
            int iIntValue = num.intValue();
            CategoriesPresenter categoriesPresenter = CategoriesPresenter.this;
            bm0 bm0Var = categoriesPresenter.interactor;
            e18 e18VarI = new p08(bm0Var.a.g(bm0Var.e, iIntValue), new ul0(qm0.f)).i(ne7.c);
            final com.warefly.checkscan.presentation.bonuses.categories.presenter.a aVar = new com.warefly.checkscan.presentation.bonuses.categories.presenter.a(categoriesPresenter);
            return new p08(new sz7(e18VarI, new qx1() { // from class: l71
                @Override // defpackage.qx1
                public final void accept(Object obj) {
                    aVar.invoke(obj);
                }
            }), new m71(com.warefly.checkscan.presentation.bonuses.categories.presenter.b.f)).f(rj.a());
        }
    }

    public static final class c extends gh4 implements ll3<CategoriesView> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final CategoriesView invoke() {
            V viewState = CategoriesPresenter.this.getViewState();
            viewState.getClass();
            return (CategoriesView) viewState;
        }
    }

    public CategoriesPresenter(uf3 uf3Var, bm0 bm0Var) {
        uf3Var.getClass();
        bm0Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = bm0Var;
    }

    private final void loadCategories() {
        s26<cs0> s26Var = new s26<>(new b(), new a(new c()));
        s26Var.c();
        this.categoriesPaginator = s26Var;
    }

    private final void sendCategoryFromListClicked(int i) {
        new kd.e.c.b.a(ud.c(i, "Category_from_the list")).c();
    }

    public final void loadMoreCategories() {
        s26<cs0> s26Var = this.categoriesPaginator;
        if (s26Var != null) {
            s26Var.a();
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onCategoryClicked(int i, String str) {
        str.getClass();
        sendCategoryFromListClicked(i);
        this.flowRouter.j(new mh7(i, str, (kd.o0) null, uv7.Category, 12));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadCategories();
    }
}

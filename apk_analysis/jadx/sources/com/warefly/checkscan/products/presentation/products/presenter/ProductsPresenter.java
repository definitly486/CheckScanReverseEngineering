package com.warefly.checkscan.products.presentation.products.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import com.warefly.checkscan.products.presentation.products.view.ProductsView;
import defpackage.a32;
import defpackage.ah;
import defpackage.an;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cn;
import defpackage.dm3;
import defpackage.e02;
import defpackage.ff3;
import defpackage.gk6;
import defpackage.ia3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.ka3;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.nk2;
import defpackage.oa3;
import defpackage.p73;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.q73;
import defpackage.qn1;
import defpackage.r26;
import defpackage.r57;
import defpackage.r86;
import defpackage.ti6;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uj6;
import defpackage.wg6;
import defpackage.xg5;
import defpackage.y22;
import defpackage.z68;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductsPresenter extends BasePresenter<ProductsView> implements wg6.b, ia3.b, an.b {
    private final p73 fetchProductsByFilterUseCase;
    private final q73 fetchProductsFiltersUseCase;
    private final xg5<ka3> filtersState;
    private final uf3 flowRouter;
    private final r86 placeholderState;
    private final jf6 preferencesRepository;
    private final xg5<List<pz3>> productsDataSource;
    private r26<pz3> productsPaginator;
    private final xg5<Integer> selectedFilter;

    public final class a implements r26.a<pz3> {
        public a() {
        }

        @Override // r26.a
        public final void a(Throwable th) {
            th.getClass();
            ProductsPresenter productsPresenter = ProductsPresenter.this;
            productsPresenter.placeholderState.a(false);
            ProductsView productsView = (ProductsView) productsPresenter.getViewState();
            if (productsView != null) {
                productsView.showLoading(false);
            }
            ProductsView productsView2 = (ProductsView) productsPresenter.getViewState();
            if (productsView2 != null) {
                productsView2.showError(true);
            }
        }

        @Override // r26.a
        public final void showData(List<? extends pz3> list) {
            ProductsView productsView;
            list.getClass();
            ProductsPresenter productsPresenter = ProductsPresenter.this;
            ProductsView productsView2 = (ProductsView) productsPresenter.getViewState();
            if (productsView2 != null) {
                productsView2.showLoading(false);
            }
            ProductsView productsView3 = (ProductsView) productsPresenter.getViewState();
            if (productsView3 != null) {
                productsView3.showError(false);
            }
            if (list.isEmpty() || (productsView = (ProductsView) productsPresenter.getViewState()) == null) {
                return;
            }
            productsView.showContent(list);
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter$loadFilters$1", f = "ProductsPresenter.kt", l = {60}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ProductsPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            Integer num;
            Object value2;
            ArrayList arrayList;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            ProductsPresenter productsPresenter = ProductsPresenter.this;
            if (i == 0) {
                r57.b(obj);
                q73 q73Var = productsPresenter.fetchProductsFiltersUseCase;
                this.l = 1;
                obj = q73Var.a.g(this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            List list = (List) obj;
            xg5 xg5Var = productsPresenter.selectedFilter;
            do {
                value = xg5Var.getValue();
                num = (Integer) value;
                if (num == null) {
                    oa3 oa3Var = (oa3) qn1.V(list);
                    num = oa3Var != null ? new Integer(oa3Var.a) : null;
                }
            } while (!xg5Var.a(value, num));
            xg5 xg5Var2 = productsPresenter.filtersState;
            do {
                value2 = xg5Var2.getValue();
                List<oa3> list2 = list;
                arrayList = new ArrayList(kn1.q(list2, 10));
                for (oa3 oa3Var2 : list2) {
                    int i2 = oa3Var2.a;
                    Integer num2 = (Integer) productsPresenter.selectedFilter.getValue();
                    arrayList.add((num2 != null && i2 == num2.intValue()) ? oa3.d(oa3Var2, true) : oa3.d(oa3Var2, false));
                }
            } while (!xg5Var2.a(value2, new ka3(arrayList)));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter$setUpPaginator$2", f = "ProductsPresenter.kt", l = {99}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<Integer, e02<? super Boolean>, Object> {
        public int l;
        public /* synthetic */ int m;
        public final /* synthetic */ Integer o;

        @bd2(c = "com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter$setUpPaginator$2$items$1", f = "ProductsPresenter.kt", l = {98}, m = "invokeSuspend")
        public static final class a extends pg8 implements bm3<y22, e02<? super List<? extends ti6>>, Object> {
            public int l;
            public final /* synthetic */ ProductsPresenter m;
            public final /* synthetic */ Integer n;
            public final /* synthetic */ int o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ProductsPresenter productsPresenter, Integer num, int i, e02<? super a> e02Var) {
                super(2, e02Var);
                this.m = productsPresenter;
                this.n = num;
                this.o = i;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new a(this.m, this.n, this.o, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super List<? extends ti6>> e02Var) {
                return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.l;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                p73 p73Var = this.m.fetchProductsByFilterUseCase;
                this.l = 1;
                uj6 uj6Var = p73Var.a;
                Integer num = this.n;
                int i2 = this.o;
                Serializable serializableB = num != null ? uj6Var.b(num.intValue(), i2, 10, this) : uj6Var.e(i2, 10, this);
                return serializableB == a32Var ? a32Var : serializableB;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Integer num, e02<? super c> e02Var) {
            super(2, e02Var);
            this.o = num;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = ProductsPresenter.this.new c(this.o, e02Var);
            cVar.m = ((Number) obj).intValue();
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Integer num, e02<? super Boolean> e02Var) {
            return ((c) create(Integer.valueOf(num.intValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            int i;
            Object value;
            ArrayList arrayListV0;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = this.l;
            ProductsPresenter productsPresenter = ProductsPresenter.this;
            if (i2 == 0) {
                r57.b(obj);
                int i3 = this.m;
                nk2 nk2VarA = av0.a(productsPresenter.getPresenterScope(), null, null, new a(productsPresenter, this.o, i3, null), 3);
                this.m = i3;
                this.l = 1;
                Object objU = nk2VarA.u(this);
                if (objU == a32Var) {
                    return a32Var;
                }
                obj = objU;
                i = i3;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = this.m;
                r57.b(obj);
            }
            List list = (List) obj;
            xg5 xg5Var = productsPresenter.productsDataSource;
            do {
                value = xg5Var.getValue();
                arrayListV0 = qn1.v0((List) value);
                arrayListV0.addAll(list);
            } while (!xg5Var.a(value, arrayListV0));
            if (i == 0) {
                productsPresenter.placeholderState.a(list.isEmpty());
            }
            return Boolean.valueOf(list.isEmpty());
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter$setUpPaginator$3", f = "ProductsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements dm3<ka3, List<? extends pz3>, e02<? super List<? extends pz3>>, Object> {
        public /* synthetic */ ka3 l;
        public /* synthetic */ List m;

        public d(e02<? super d> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(ka3 ka3Var, List<? extends pz3> list, e02<? super List<? extends pz3>> e02Var) {
            d dVar = ProductsPresenter.this.new d(e02Var);
            dVar.l = ka3Var;
            dVar.m = list;
            return dVar.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ka3 ka3Var = this.l;
            List list = this.m;
            return qn1.h0(list, qn1.h0(u96.h(ka3Var), ProductsPresenter.this.getAnonDisclaimer()));
        }
    }

    public ProductsPresenter(q73 q73Var, p73 p73Var, jf6 jf6Var, r86 r86Var, uf3 uf3Var) {
        q73Var.getClass();
        p73Var.getClass();
        jf6Var.getClass();
        r86Var.getClass();
        uf3Var.getClass();
        this.fetchProductsFiltersUseCase = q73Var;
        this.fetchProductsByFilterUseCase = p73Var;
        this.preferencesRepository = jf6Var;
        this.placeholderState = r86Var;
        this.flowRouter = uf3Var;
        kx2 kx2Var = kx2.b;
        this.filtersState = px.a(new ka3(kx2Var));
        this.selectedFilter = px.a(null);
        this.productsDataSource = px.a(kx2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<cn> getAnonDisclaimer() {
        cn cnVar = new cn();
        if (this.preferencesRepository.G0()) {
            cnVar = null;
        }
        return u96.j(cnVar);
    }

    private final void loadFilters() {
        av0.c(getPresenterScope(), null, null, new b(null), 3);
    }

    private final void setUpPaginator(Integer num) {
        List<pz3> value;
        kx2 kx2Var;
        xg5<List<pz3>> xg5Var = this.productsDataSource;
        do {
            value = xg5Var.getValue();
            kx2Var = kx2.b;
        } while (!xg5Var.a(value, kx2Var));
        ProductsView productsView = (ProductsView) getViewState();
        if (productsView != null) {
            productsView.showContent(kx2Var);
        }
        r26<pz3> r26Var = new r26<>(new c(num, null), getPresenterScope(), new a(), new ff3(this.filtersState, this.productsDataSource, new d(null)));
        r26Var.e = true;
        z68 z68Var = r26Var.d;
        z68Var.getClass();
        z68Var.k(null, -1);
        r26Var.f = false;
        r26Var.a();
        this.productsPaginator = r26Var;
    }

    public final void loadContent() {
        loadFilters();
        setUpPaginator(this.selectedFilter.getValue());
    }

    public final void loadNextPage() {
        r26<pz3> r26Var = this.productsPaginator;
        if (r26Var != null) {
            r26Var.a();
        }
    }

    @Override // an.b
    public void onAnonDisclaimerClicked() {
        ProductsView productsView = (ProductsView) getViewState();
        if (productsView != null) {
            productsView.openUrl("checkscan://signup");
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // ia3.b
    public void onFilterClicked(int i) {
        ka3 value;
        ArrayList arrayList;
        xg5<Integer> xg5Var = this.selectedFilter;
        while (!xg5Var.a(xg5Var.getValue(), Integer.valueOf(i))) {
        }
        xg5<ka3> xg5Var2 = this.filtersState;
        do {
            value = xg5Var2.getValue();
            List<oa3> list = value.a;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (oa3 oa3Var : list) {
                arrayList.add(i == oa3Var.a ? oa3.d(oa3Var, true) : oa3.d(oa3Var, false));
            }
        } while (!xg5Var2.a(value, new ka3(arrayList)));
        setUpPaginator(Integer.valueOf(i));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ProductsView productsView = (ProductsView) getViewState();
        if (productsView != null) {
            productsView.showLoading(true);
        }
        loadContent();
    }

    @Override // wg6.b
    public void onProductClicked(int i) {
        uf3 uf3Var = this.flowRouter;
        gk6 gk6Var = new gk6(new ProductsReason.Product(i));
        uf3Var.getClass();
        uf3Var.c.d(gk6Var);
    }

    public final void refreshContent() {
        ProductsView productsView = (ProductsView) getViewState();
        if (productsView != null) {
            productsView.showError(false);
        }
        ProductsView productsView2 = (ProductsView) getViewState();
        if (productsView2 != null) {
            productsView2.showLoading(true);
        }
        loadContent();
        ProductsView productsView3 = (ProductsView) getViewState();
        if (productsView3 != null) {
            productsView3.turnOffRefreshing();
        }
    }
}

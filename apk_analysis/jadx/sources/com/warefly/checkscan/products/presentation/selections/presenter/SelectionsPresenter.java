package com.warefly.checkscan.products.presentation.selections.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsView;
import defpackage.a32;
import defpackage.ah;
import defpackage.an;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cn;
import defpackage.co7;
import defpackage.dm3;
import defpackage.e02;
import defpackage.e83;
import defpackage.f83;
import defpackage.ff3;
import defpackage.gk6;
import defpackage.ia3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.ka3;
import defpackage.kd;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.nk2;
import defpackage.oa3;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.qn1;
import defpackage.r26;
import defpackage.r57;
import defpackage.r86;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uj6;
import defpackage.vp6;
import defpackage.xg5;
import defpackage.y22;
import defpackage.z68;
import defpackage.zn7;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectionsPresenter extends BasePresenter<SelectionsView> implements co7, ia3.b, an.b {
    private final e83 fetchSelectionsByFilterUseCase;
    private final f83 fetchSelectionsFiltersUseCase;
    private final xg5<ka3> filtersState;
    private final uf3 flowRouter;
    private final r86 placeholderState;
    private final jf6 preferencesRepository;
    private boolean scrollFinished;
    private final xg5<Integer> selectedFilter;
    private final xg5<List<pz3>> selectionsDataSource;
    private r26<pz3> selectionsPaginator;

    public final class a implements r26.a<pz3> {
        public a() {
        }

        @Override // r26.a
        public final void a(Throwable th) {
            th.getClass();
            SelectionsPresenter selectionsPresenter = SelectionsPresenter.this;
            selectionsPresenter.placeholderState.a(false);
            SelectionsView selectionsView = (SelectionsView) selectionsPresenter.getViewState();
            if (selectionsView != null) {
                selectionsView.showLoading(false);
            }
            SelectionsView selectionsView2 = (SelectionsView) selectionsPresenter.getViewState();
            if (selectionsView2 != null) {
                selectionsView2.showError(true);
            }
        }

        @Override // r26.a
        public final void showData(List<? extends pz3> list) {
            SelectionsView selectionsView;
            list.getClass();
            SelectionsPresenter selectionsPresenter = SelectionsPresenter.this;
            SelectionsView selectionsView2 = (SelectionsView) selectionsPresenter.getViewState();
            if (selectionsView2 != null) {
                selectionsView2.showError(false);
            }
            List<? extends pz3> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (pz3 pz3Var : list2) {
                    if ((pz3Var instanceof zn7) || (pz3Var instanceof vp6)) {
                        SelectionsView selectionsView3 = (SelectionsView) selectionsPresenter.getViewState();
                        if (selectionsView3 == null) {
                            break;
                        }
                        selectionsView3.showLoading(false);
                        break;
                    }
                }
            }
            if (list.isEmpty() || (selectionsView = (SelectionsView) selectionsPresenter.getViewState()) == null) {
                return;
            }
            selectionsView.showContent(list);
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter$loadFilters$1", f = "SelectionsPresenter.kt", l = {66}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SelectionsPresenter.this.new b(e02Var);
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
            SelectionsPresenter selectionsPresenter = SelectionsPresenter.this;
            if (i == 0) {
                r57.b(obj);
                f83 f83Var = selectionsPresenter.fetchSelectionsFiltersUseCase;
                this.l = 1;
                obj = f83Var.a.f(this);
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
            xg5 xg5Var = selectionsPresenter.selectedFilter;
            do {
                value = xg5Var.getValue();
                num = (Integer) value;
                if (num == null) {
                    oa3 oa3Var = (oa3) qn1.V(list);
                    num = oa3Var != null ? new Integer(oa3Var.a) : null;
                }
            } while (!xg5Var.a(value, num));
            xg5 xg5Var2 = selectionsPresenter.filtersState;
            do {
                value2 = xg5Var2.getValue();
                List<oa3> list2 = list;
                arrayList = new ArrayList(kn1.q(list2, 10));
                for (oa3 oa3Var2 : list2) {
                    int i2 = oa3Var2.a;
                    Integer num2 = (Integer) selectionsPresenter.selectedFilter.getValue();
                    arrayList.add((num2 != null && i2 == num2.intValue()) ? oa3.d(oa3Var2, true) : oa3.d(oa3Var2, false));
                }
            } while (!xg5Var2.a(value2, new ka3(arrayList)));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter$setUpPaginator$2", f = "SelectionsPresenter.kt", l = {105}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<Integer, e02<? super Boolean>, Object> {
        public int l;
        public /* synthetic */ int m;
        public final /* synthetic */ Integer o;

        @bd2(c = "com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter$setUpPaginator$2$items$1", f = "SelectionsPresenter.kt", l = {104}, m = "invokeSuspend")
        public static final class a extends pg8 implements bm3<y22, e02<? super List<? extends pz3>>, Object> {
            public int l;
            public final /* synthetic */ SelectionsPresenter m;
            public final /* synthetic */ Integer n;
            public final /* synthetic */ int o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(SelectionsPresenter selectionsPresenter, Integer num, int i, e02<? super a> e02Var) {
                super(2, e02Var);
                this.m = selectionsPresenter;
                this.n = num;
                this.o = i;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new a(this.m, this.n, this.o, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super List<? extends pz3>> e02Var) {
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
                e83 e83Var = this.m.fetchSelectionsByFilterUseCase;
                this.l = 1;
                uj6 uj6Var = e83Var.a;
                Integer num = this.n;
                int i2 = this.o;
                Serializable serializableA = num != null ? uj6Var.a(num.intValue(), i2, 10, this) : uj6Var.d(i2, 10, this);
                return serializableA == a32Var ? a32Var : serializableA;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Integer num, e02<? super c> e02Var) {
            super(2, e02Var);
            this.o = num;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = SelectionsPresenter.this.new c(this.o, e02Var);
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
            SelectionsPresenter selectionsPresenter = SelectionsPresenter.this;
            if (i2 == 0) {
                r57.b(obj);
                int i3 = this.m;
                nk2 nk2VarA = av0.a(selectionsPresenter.getPresenterScope(), null, null, new a(selectionsPresenter, this.o, i3, null), 3);
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
            xg5 xg5Var = selectionsPresenter.selectionsDataSource;
            do {
                value = xg5Var.getValue();
                arrayListV0 = qn1.v0((List) value);
                arrayListV0.addAll(list);
            } while (!xg5Var.a(value, arrayListV0));
            if (i != 0 && list.isEmpty() && !selectionsPresenter.scrollFinished) {
                selectionsPresenter.scrollFinished = true;
                new kd.p0.a.e("SelectionsScrollEnd").c();
            }
            if (i == 0) {
                selectionsPresenter.placeholderState.a(list.isEmpty());
            }
            return Boolean.valueOf(list.isEmpty());
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter$setUpPaginator$3", f = "SelectionsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements dm3<ka3, List<? extends pz3>, e02<? super List<? extends pz3>>, Object> {
        public /* synthetic */ ka3 l;
        public /* synthetic */ List m;

        public d(e02<? super d> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(ka3 ka3Var, List<? extends pz3> list, e02<? super List<? extends pz3>> e02Var) {
            d dVar = SelectionsPresenter.this.new d(e02Var);
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
            return qn1.h0(list, qn1.h0(u96.h(ka3Var), SelectionsPresenter.this.getAnonDisclaimer()));
        }
    }

    public SelectionsPresenter(f83 f83Var, e83 e83Var, jf6 jf6Var, r86 r86Var, uf3 uf3Var) {
        f83Var.getClass();
        e83Var.getClass();
        jf6Var.getClass();
        r86Var.getClass();
        uf3Var.getClass();
        this.fetchSelectionsFiltersUseCase = f83Var;
        this.fetchSelectionsByFilterUseCase = e83Var;
        this.preferencesRepository = jf6Var;
        this.placeholderState = r86Var;
        this.flowRouter = uf3Var;
        kx2 kx2Var = kx2.b;
        this.filtersState = px.a(new ka3(kx2Var));
        this.selectedFilter = px.a(null);
        this.selectionsDataSource = px.a(kx2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<cn> getAnonDisclaimer() {
        cn cnVar = new cn();
        if (this.preferencesRepository.G0()) {
            cnVar = null;
        }
        return u96.j(cnVar);
    }

    private final void loadContent() {
        loadFilters();
        setUpPaginator(this.selectedFilter.getValue());
    }

    private final void loadFilters() {
        av0.c(getPresenterScope(), null, null, new b(null), 3);
    }

    private final void setUpPaginator(Integer num) {
        xg5<List<pz3>> xg5Var = this.selectionsDataSource;
        while (!xg5Var.a(xg5Var.getValue(), kx2.b)) {
        }
        r26<pz3> r26Var = new r26<>(new c(num, null), getPresenterScope(), new a(), new ff3(this.filtersState, this.selectionsDataSource, new d(null)));
        r26Var.e = true;
        z68 z68Var = r26Var.d;
        z68Var.getClass();
        z68Var.k(null, -1);
        r26Var.f = false;
        r26Var.a();
        this.selectionsPaginator = r26Var;
    }

    public final void loadNextPage() {
        r26<pz3> r26Var = this.selectionsPaginator;
        if (r26Var != null) {
            r26Var.a();
        }
    }

    @Override // an.b
    public void onAnonDisclaimerClicked() {
        SelectionsView selectionsView = (SelectionsView) getViewState();
        if (selectionsView != null) {
            selectionsView.openUrl("checkscan://signup");
        }
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
        SelectionsView selectionsView = (SelectionsView) getViewState();
        if (selectionsView != null) {
            selectionsView.showLoading(true);
        }
        loadContent();
    }

    @Override // defpackage.co7
    public void onProductClicked(int i) {
        uf3 uf3Var = this.flowRouter;
        gk6 gk6Var = new gk6(new ProductsReason.Product(i));
        uf3Var.getClass();
        uf3Var.c.d(gk6Var);
    }

    @Override // defpackage.co7
    public void onSelectionClicked(int i) {
        uf3 uf3Var = this.flowRouter;
        gk6 gk6Var = new gk6(new ProductsReason.Shop(i, false));
        uf3Var.getClass();
        uf3Var.c.d(gk6Var);
    }

    public final void refreshContent() {
        SelectionsView selectionsView = (SelectionsView) getViewState();
        if (selectionsView != null) {
            selectionsView.showError(false);
        }
        SelectionsView selectionsView2 = (SelectionsView) getViewState();
        if (selectionsView2 != null) {
            selectionsView2.showLoading(true);
        }
        SelectionsView selectionsView3 = (SelectionsView) getViewState();
        if (selectionsView3 != null) {
            selectionsView3.turnOffRefreshing();
        }
        loadContent();
    }
}

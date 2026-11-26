package com.warefly.checkscan.presentation.operations.allOperations.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsPresenter;
import com.warefly.checkscan.presentation.operations.base.OperationsPresenter;
import defpackage.gh4;
import defpackage.h6;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kz5;
import defpackage.mz5;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.py5;
import defpackage.rj;
import defpackage.ud1;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.yb8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AllOperationsPresenter extends OperationsPresenter<AllOperationsView> {
    private final int filterId;
    private final uf3 flowRouter;
    private final kz5 interactor;
    private List<py5> operationsCategories;
    private py5 selectedCategory;

    public static final class a extends gh4 implements nl3<Integer, mz7<List<? extends kz5.a>>> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends kz5.a>> invoke(Integer num) {
            int iIntValue = num.intValue();
            AllOperationsPresenter allOperationsPresenter = AllOperationsPresenter.this;
            kz5 kz5Var = allOperationsPresenter.interactor;
            py5 py5Var = allOperationsPresenter.selectedCategory;
            mz7 mz7VarA = kz5Var.a.a(py5Var != null ? py5Var.a() : 0, iIntValue);
            ud1 ud1Var = new ud1(new mz5(1), 2);
            mz7VarA.getClass();
            return new p08(mz7VarA, ud1Var);
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            AllOperationsPresenter allOperationsPresenter = AllOperationsPresenter.this;
            AllOperationsView allOperationsView = (AllOperationsView) allOperationsPresenter.getViewState();
            if (allOperationsView != null) {
                allOperationsView.showCategoriesLoaded(false);
            }
            AllOperationsView allOperationsView2 = (AllOperationsView) allOperationsPresenter.getViewState();
            if (allOperationsView2 != null) {
                allOperationsView2.showCouldntLoadCategories(true);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<List<? extends py5>, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends py5> list) {
            AllOperationsPresenter allOperationsPresenter = AllOperationsPresenter.this;
            allOperationsPresenter.operationsCategories = list;
            allOperationsPresenter.openPageByFilter(allOperationsPresenter.filterId);
            AllOperationsView allOperationsView = (AllOperationsView) allOperationsPresenter.getViewState();
            if (allOperationsView != null) {
                allOperationsView.showCouldntLoadCategories(false);
            }
            AllOperationsView allOperationsView2 = (AllOperationsView) allOperationsPresenter.getViewState();
            if (allOperationsView2 != null) {
                allOperationsView2.showCategoriesLoaded(true);
            }
            allOperationsPresenter.initOperationsPaginator();
            return j59.a;
        }
    }

    public AllOperationsPresenter(uf3 uf3Var, int i, kz5 kz5Var) {
        uf3Var.getClass();
        kz5Var.getClass();
        this.flowRouter = uf3Var;
        this.filterId = i;
        this.interactor = kz5Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initOperationsPaginator() {
        AllOperationsView allOperationsView;
        initOperationsPaginator(new a());
        py5 py5Var = this.selectedCategory;
        if ((py5Var == null || py5Var.a() != 0) && (allOperationsView = (AllOperationsView) getViewState()) != null) {
            py5 py5Var2 = this.selectedCategory;
            py5Var2.getClass();
            allOperationsView.showSelectedCategory(py5Var2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFirstViewAttach$lambda$0(AllOperationsPresenter allOperationsPresenter) {
        AllOperationsView allOperationsView = (AllOperationsView) allOperationsPresenter.getViewState();
        if (allOperationsView != null) {
            allOperationsView.showLoadingCategories(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openPageByFilter(int i) {
        List<py5> list = this.operationsCategories;
        if (list != null) {
            List<py5> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((py5) it.next()).a()));
            }
            Iterator it2 = arrayList.iterator();
            int i2 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i2 = -1;
                    break;
                } else if (((Number) it2.next()).intValue() == i) {
                    break;
                } else {
                    i2++;
                }
            }
            this.selectedCategory = i2 != -1 ? list.get(i2) : list.get(0);
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onCategoryRemoved() {
        AllOperationsView allOperationsView = (AllOperationsView) getViewState();
        if (allOperationsView != null) {
            allOperationsView.removeCategory();
        }
        this.selectedCategory = null;
        refreshOperations();
        AllOperationsView allOperationsView2 = (AllOperationsView) getViewState();
        if (allOperationsView2 != null) {
            allOperationsView2.showBeginList();
        }
    }

    public final void onCategorySelected(py5 py5Var) {
        py5Var.getClass();
        this.selectedCategory = py5Var;
        AllOperationsView allOperationsView = (AllOperationsView) getViewState();
        if (allOperationsView != null) {
            allOperationsView.showSelectedCategory(py5Var);
        }
        refreshOperations();
        AllOperationsView allOperationsView2 = (AllOperationsView) getViewState();
        if (allOperationsView2 != null) {
            allOperationsView2.showBeginList();
        }
    }

    public final void onChooseCategoryClicked() {
        AllOperationsView allOperationsView;
        List<py5> list = this.operationsCategories;
        if (list == null || (allOperationsView = (AllOperationsView) getViewState()) == null) {
            return;
        }
        allOperationsView.showCategories(list);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        AllOperationsView allOperationsView = (AllOperationsView) getViewState();
        if (allOperationsView != null) {
            allOperationsView.showLoadingCategories(true);
        }
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(this.interactor.a.c().i(ne7.c).f(rj.a()), new h6() { // from class: qc
            @Override // defpackage.h6
            public final void run() {
                AllOperationsPresenter.onFirstViewAttach$lambda$0(this.a);
            }
        }), new b(), new c()), null, 1, null);
    }
}

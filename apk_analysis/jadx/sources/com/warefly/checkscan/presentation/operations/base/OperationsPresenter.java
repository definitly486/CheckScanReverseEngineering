package com.warefly.checkscan.presentation.operations.base;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.operations.base.OperationsView;
import defpackage.a9;
import defpackage.gh4;
import defpackage.kz5;
import defpackage.ll3;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.rj;
import defpackage.s26;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OperationsPresenter<V extends OperationsView> extends BasePresenter<V> {
    private HashSet<Date> operationsDates = new HashSet<>();
    private s26<Object> operationsPaginator;

    public static final class a implements s26.m<Object> {
        public final c a;

        public a(c cVar) {
            this.a = cVar;
        }

        @Override // s26.m
        public final void a(Throwable th) {
        }

        @Override // s26.m
        public final void b() {
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showAllOperationsLoaded();
            }
        }

        @Override // s26.m
        public final void c(boolean z) {
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showPageOfOperationsProgress(z);
            }
        }

        @Override // s26.m
        public final void d(List list, boolean z) {
            list.getClass();
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showOperations(z, list);
            }
        }

        @Override // s26.m
        public final void e(boolean z) {
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showEmptyOperationsProgress(z);
            }
        }

        @Override // s26.m
        public final void f(boolean z) {
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showRefreshOperationsProgress(z);
            }
        }

        @Override // s26.m
        public final void g(boolean z) {
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showEmptyOperations(z);
            }
        }

        @Override // s26.m
        public final void h(boolean z) {
            OperationsView operationsView = (OperationsView) this.a.invoke();
            if (operationsView != null) {
                operationsView.showEmptyOperations(z);
            }
        }
    }

    public static final class b extends gh4 implements nl3<Integer, mz7<List<Object>>> {
        public final /* synthetic */ nl3<Integer, mz7<List<kz5.a>>> f;
        public final /* synthetic */ OperationsPresenter<V> g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(nl3<? super Integer, ? extends mz7<List<kz5.a>>> nl3Var, OperationsPresenter<V> operationsPresenter) {
            super(1);
            this.f = nl3Var;
            this.g = operationsPresenter;
        }

        @Override // defpackage.nl3
        public final mz7<List<Object>> invoke(Integer num) {
            mz7<List<kz5.a>> mz7VarInvoke = this.f.invoke(Integer.valueOf(num.intValue()));
            a9 a9Var = new a9(new com.warefly.checkscan.presentation.operations.base.a(this.g), 4);
            mz7VarInvoke.getClass();
            return new p08(mz7VarInvoke, a9Var).i(ne7.c).f(rj.a());
        }
    }

    public static final class c extends gh4 implements ll3<OperationsView> {
        public final /* synthetic */ OperationsPresenter<V> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(OperationsPresenter<V> operationsPresenter) {
            super(0);
            this.f = operationsPresenter;
        }

        @Override // defpackage.ll3
        public final OperationsView invoke() {
            return this.f.getViewState();
        }
    }

    public final void initOperationsPaginator(nl3<? super Integer, ? extends mz7<List<kz5.a>>> nl3Var) {
        nl3Var.getClass();
        s26<Object> s26Var = new s26<>(new b(nl3Var, this), new a(new c(this)));
        s26Var.c();
        this.operationsPaginator = s26Var;
    }

    public final void loadPageOfOperations() {
        s26<Object> s26Var = this.operationsPaginator;
        if (s26Var != null) {
            s26Var.a();
        }
    }

    public void onLoadMoreOperations() {
        loadPageOfOperations();
    }

    public void onRefreshPage() {
        refreshOperations();
    }

    public final void refreshOperations() {
        this.operationsDates.clear();
        s26<Object> s26Var = this.operationsPaginator;
        if (s26Var != null) {
            s26Var.c();
        }
    }
}

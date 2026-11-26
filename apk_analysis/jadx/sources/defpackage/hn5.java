package defpackage;

import com.warefly.checkscan.presentation.newSearchProducts.presenter.NewSearchProductPresenter;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hn5 implements s26.m<ui6> {
    public final NewSearchProductPresenter.b a;
    public final NewSearchProductPresenter.c b;

    public hn5(NewSearchProductPresenter.b bVar, NewSearchProductPresenter.c cVar) {
        this.a = bVar;
        this.b = cVar;
    }

    @Override // s26.m
    public final void a(Throwable th) {
    }

    @Override // s26.m
    public final void b() {
        this.b.invoke();
        NewSearchProductsView newSearchProductsView = (NewSearchProductsView) this.a.invoke();
        if (newSearchProductsView != null) {
            newSearchProductsView.allProductInChequeLoaded();
        }
    }

    @Override // s26.m
    public final void c(boolean z) {
    }

    @Override // s26.m
    public final void d(List list, boolean z) {
        list.getClass();
        NewSearchProductsView newSearchProductsView = (NewSearchProductsView) this.a.invoke();
        if (z) {
            if (newSearchProductsView != null) {
                newSearchProductsView.showProducts(list);
            }
        } else if (newSearchProductsView != null) {
            newSearchProductsView.hideProducts();
        }
    }

    @Override // s26.m
    public final void e(boolean z) {
    }

    @Override // s26.m
    public final void f(boolean z) {
    }

    @Override // s26.m
    public final void g(boolean z) {
    }

    @Override // s26.m
    public final void h(boolean z) {
    }
}

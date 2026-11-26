package defpackage;

import com.warefly.checkscan.presentation.newSearchProducts.presenter.NewSearchProductPresenter;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class mn5 implements s26.m<oa4> {
    public final NewSearchProductPresenter.e a;

    public mn5(NewSearchProductPresenter.e eVar) {
        this.a = eVar;
    }

    @Override // s26.m
    public final void a(Throwable th) {
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
        NewSearchProductsView newSearchProductsView = (NewSearchProductsView) this.a.invoke();
        if (newSearchProductsView != null) {
            newSearchProductsView.showShopInCheques(list);
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

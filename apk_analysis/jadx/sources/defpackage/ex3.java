package defpackage;

import com.warefly.checkscan.presentation.bonuses.couponPage.presenter.CouponNewPresenter;
import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ex3 implements s26.m<yw3> {
    public final CouponNewPresenter.c a;

    public ex3(CouponNewPresenter.c cVar) {
        this.a = cVar;
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
        CouponNewView couponNewView;
        list.getClass();
        if (list.isEmpty() || (couponNewView = (CouponNewView) this.a.invoke()) == null) {
            return;
        }
        couponNewView.setHotItemsInfo(list);
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

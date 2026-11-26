package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.f;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dx3 implements s26.m<yw3> {
    public final f a;

    public dx3(f fVar) {
        this.a = fVar;
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
        BonusAdmitadNewView bonusAdmitadNewView;
        list.getClass();
        if (list.isEmpty() || (bonusAdmitadNewView = (BonusAdmitadNewView) this.a.invoke()) == null) {
            return;
        }
        bonusAdmitadNewView.setHotItemsInfo(list);
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

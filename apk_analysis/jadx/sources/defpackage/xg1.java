package defpackage;

import com.warefly.checkscan.presentation.common.filters.FiltersDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class xg1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xg1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                Throwable th = (Throwable) obj;
                th.getClass();
                return (qq1) ((nl3) obj2).invoke(th);
            case 1:
                ga3 ga3Var = (ga3) obj;
                ga3Var.getClass();
                FiltersDialog filtersDialog = (FiltersDialog) obj2;
                filtersDialog.e.invoke(ga3Var);
                filtersDialog.dismiss();
                return j59.a;
            default:
                tz8 tz8Var = (tz8) obj;
                tz8Var.getClass();
                ((nz8) obj2).getClass();
                return new sz8(tz8Var.c(), tz8Var.b(), tz8Var.g(), tz8Var.a(), tz8Var.d(), tz8Var.e(), tz8Var.f());
        }
    }
}

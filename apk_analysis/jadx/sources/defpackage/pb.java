package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemSelectPromocodeBinding;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class pb extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ il2 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ pb(il2 il2Var, Object obj, int i) {
        super(1);
        this.f = i;
        this.g = il2Var;
        this.h = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        il2 il2Var = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ob) il2Var).c.onAgreementClicked(((ub) obj2).a);
                break;
            case 1:
                ((View) obj).getClass();
                ((z64) il2Var).c.onInsuranceUrlClicked(((a74) obj2).g.b);
                break;
            case 2:
                ((View) obj).getClass();
                io6 io6Var = (io6) obj2;
                ((ho6) il2Var).b.onSelectCardClicked(io6Var.a, io6Var.c);
                break;
            default:
                ((View) obj).getClass();
                SelectPromocodePresenter selectPromocodePresenter = ((gm7) il2Var).b;
                Object tag = ((ItemSelectPromocodeBinding) obj2).getRoot().getTag();
                tag.getClass();
                selectPromocodePresenter.onSelectPromocodeClicked(((Integer) tag).intValue());
                break;
        }
        return j59.a;
    }
}

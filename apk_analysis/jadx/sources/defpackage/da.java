package defpackage;

import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class da implements xl3, ze6 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ da(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return (List) nl3Var.invoke(obj);
            default:
                return ChequePagePresenter.refreshCoupons$lambda$20(nl3Var, obj);
        }
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return ((Boolean) this.c.invoke(obj)).booleanValue();
    }
}

package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemWithdrawalCardInfoBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class p30 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ il2 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p30(il2 il2Var, Object obj, int i) {
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
                ((n30) il2Var).b.onHideHidableBanner(((r30) obj2).a);
                break;
            case 1:
                ((View) obj).getClass();
                fo0 fo0Var = (fo0) obj2;
                ((eo0) il2Var).c.onBonusPointsClaimClicked(fo0Var.a, fo0Var.f);
                break;
            case 2:
                ((View) obj).getClass();
                cp5 cp5Var = (cp5) obj2;
                ((vo5) il2Var).b.onNotificationCardClicked(cp5Var.f, cp5Var.j);
                break;
            case 3:
                ((View) obj).getClass();
                ((ii6) il2Var).b.onShopItemClicked(((ji6) obj2).a);
                break;
            default:
                ((View) obj).getClass();
                w76 w76Var = ((fj9) il2Var).b;
                Object tag = ((ItemWithdrawalCardInfoBinding) obj2).getRoot().getTag();
                tag.getClass();
                w76Var.invoke((wi9) tag);
                break;
        }
        return j59.a;
    }
}
